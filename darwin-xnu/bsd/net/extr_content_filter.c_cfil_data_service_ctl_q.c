
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef unsigned int uint64_t ;
typedef int uint32_t ;
struct socket {int dummy; } ;
typedef struct socket mbuf ;
struct cfil_info {int cfi_flags; struct cfil_entry* cfi_entries; } ;
struct TYPE_6__ {unsigned int q_start; } ;
struct cfe_buf {unsigned int cfe_pass_offset; unsigned int cfe_peeked; unsigned int cfe_peek_offset; TYPE_2__ cfe_ctl_q; int cfe_pending_q; } ;
struct cfil_entry {int cfe_flags; struct cfe_buf cfe_rcv; struct cfe_buf cfe_snd; } ;
typedef scalar_t__ errno_t ;
struct TYPE_5__ {int cfs_ctl_q_in_peeked; int cfs_ctl_q_out_peeked; int cfs_pending_q_in_enqueued; int cfs_pending_q_out_enqueued; int cfs_ctl_q_not_started; } ;


 int CFEF_DATA_START ;
 int CFEF_SENT_DISCONNECT_IN ;
 int CFEF_SENT_DISCONNECT_OUT ;
 int CFEF_SENT_SOCK_ATTACHED ;
 int CFIF_SHUT_RD ;
 int CFIF_SHUT_WR ;
 int CFIL_INFO_VERIFY (struct cfil_info*) ;
 int CFIL_LOG (int ,char*,unsigned int,...) ;
 scalar_t__ ENOBUFS ;
 scalar_t__ ENOMEM ;
 int LOG_DEBUG ;
 int LOG_ERR ;
 int LOG_INFO ;
 int OSAddAtomic64 (unsigned int,int *) ;
 int OSIncrementAtomic (int *) ;
 int VERIFY (int) ;
 scalar_t__ VM_KERNEL_ADDRPERM (struct socket*) ;
 unsigned int cfil_data_length (struct socket*,int *,int *) ;
 scalar_t__ cfil_dispatch_attach_event (struct socket*,struct cfil_info*,int) ;
 scalar_t__ cfil_dispatch_data_event (struct socket*,struct cfil_info*,int,int,struct socket*,unsigned int,unsigned int) ;
 int cfil_dispatch_disconnect_event (struct socket*,struct cfil_info*,int,int) ;
 int cfil_queue_enqueue (int *,struct socket*,unsigned int) ;
 struct socket* cfil_queue_first (TYPE_2__*) ;
 struct socket* cfil_queue_next (TYPE_2__*,struct socket*) ;
 int cfil_queue_remove (TYPE_2__*,struct socket*,unsigned int) ;
 scalar_t__ cfil_service_pending_queue (struct socket*,struct cfil_info*,int,int) ;
 TYPE_1__ cfil_stats ;
 int socket_lock_assert_owned (struct socket*) ;

__attribute__((used)) static int
cfil_data_service_ctl_q(struct socket *so, struct cfil_info *cfil_info, uint32_t kcunit, int outgoing)
{
 errno_t error = 0;
 struct mbuf *data, *tmp = ((void*)0);
 unsigned int datalen = 0, copylen = 0, copyoffset = 0;
 struct cfil_entry *entry;
 struct cfe_buf *entrybuf;
 uint64_t currentoffset = 0;

 if (cfil_info == ((void*)0))
  return (0);

 CFIL_LOG(LOG_INFO, "so %llx kcunit %u outgoing %d",
  (uint64_t)VM_KERNEL_ADDRPERM(so), kcunit, outgoing);

 socket_lock_assert_owned(so);

 entry = &cfil_info->cfi_entries[kcunit - 1];
 if (outgoing)
  entrybuf = &entry->cfe_snd;
 else
  entrybuf = &entry->cfe_rcv;


 if ((entry->cfe_flags & CFEF_SENT_SOCK_ATTACHED) == 0) {
  error = cfil_dispatch_attach_event(so, cfil_info, kcunit);
  if (error != 0) {

   if (error == ENOBUFS || error == ENOMEM)
    error = 0;
   goto done;
  }
 } else if ((entry->cfe_flags & CFEF_DATA_START) == 0) {
  OSIncrementAtomic(&cfil_stats.cfs_ctl_q_not_started);
  goto done;
 }
 while ((data = cfil_queue_first(&entrybuf->cfe_ctl_q)) != ((void*)0) &&
  entrybuf->cfe_ctl_q.q_start < entrybuf->cfe_pass_offset) {
  datalen = cfil_data_length(data, ((void*)0), ((void*)0));
  tmp = data;

  if (entrybuf->cfe_ctl_q.q_start + datalen <=
   entrybuf->cfe_pass_offset) {



   copylen = datalen;
  } else {



   copylen = entrybuf->cfe_pass_offset -
    entrybuf->cfe_ctl_q.q_start;
  }
  VERIFY(copylen <= datalen);
  if (entrybuf->cfe_ctl_q.q_start + copylen >
   entrybuf->cfe_peeked)
   entrybuf->cfe_peeked =
    entrybuf->cfe_ctl_q.q_start + copylen;



  if (copylen < datalen)
   break;


  cfil_queue_remove(&entrybuf->cfe_ctl_q, data, datalen);

  cfil_queue_enqueue(&entrybuf->cfe_pending_q, data, datalen);
  if (outgoing)
   OSAddAtomic64(datalen,
    &cfil_stats.cfs_pending_q_out_enqueued);
  else
   OSAddAtomic64(datalen,
    &cfil_stats.cfs_pending_q_in_enqueued);
 }
 CFIL_INFO_VERIFY(cfil_info);
 if (tmp != ((void*)0))
  CFIL_LOG(LOG_DEBUG,
   "%llx first %llu peeked %llu pass %llu peek %llu"
   "datalen %u copylen %u",
   (uint64_t)VM_KERNEL_ADDRPERM(tmp),
   entrybuf->cfe_ctl_q.q_start,
   entrybuf->cfe_peeked,
   entrybuf->cfe_pass_offset,
   entrybuf->cfe_peek_offset,
   datalen, copylen);
 tmp = ((void*)0);


 for (data = cfil_queue_first(&entrybuf->cfe_ctl_q),
  currentoffset = entrybuf->cfe_ctl_q.q_start;
  data != ((void*)0) && currentoffset < entrybuf->cfe_peek_offset;
  data = cfil_queue_next(&entrybuf->cfe_ctl_q, data),
  currentoffset += datalen) {
  datalen = cfil_data_length(data, ((void*)0), ((void*)0));
  tmp = data;


  if (currentoffset + datalen <= entrybuf->cfe_peeked)
   continue;




  copyoffset = entrybuf->cfe_peeked - currentoffset;
  VERIFY(copyoffset < datalen);
  copylen = datalen - copyoffset;
  VERIFY(copylen <= datalen);



  if (currentoffset + copyoffset + copylen >
   entrybuf->cfe_peek_offset) {
   copylen = entrybuf->cfe_peek_offset -
    (currentoffset + copyoffset);
  }
  if (copylen == 0)
   break;



  error = cfil_dispatch_data_event(so, cfil_info, kcunit,
   outgoing, data, copyoffset, copylen);
  if (error != 0) {

   break;
  }
  entrybuf->cfe_peeked += copylen;
  if (outgoing)
   OSAddAtomic64(copylen,
    &cfil_stats.cfs_ctl_q_out_peeked);
  else
   OSAddAtomic64(copylen,
    &cfil_stats.cfs_ctl_q_in_peeked);


  if (copylen + copyoffset < datalen)
   break;
 }
 CFIL_INFO_VERIFY(cfil_info);
 if (tmp != ((void*)0))
  CFIL_LOG(LOG_DEBUG,
   "%llx first %llu peeked %llu pass %llu peek %llu"
   "datalen %u copylen %u copyoffset %u",
   (uint64_t)VM_KERNEL_ADDRPERM(tmp),
   currentoffset,
   entrybuf->cfe_peeked,
   entrybuf->cfe_pass_offset,
   entrybuf->cfe_peek_offset,
   datalen, copylen, copyoffset);




 error = cfil_service_pending_queue(so, cfil_info, kcunit, outgoing);
 if (error != 0) {
  CFIL_LOG(LOG_ERR, "cfil_service_pending_queue() error %d",
   error);
  goto done;
 }




 if (cfil_info == ((void*)0))
  goto done;
 else if (outgoing) {
  if ((cfil_info->cfi_flags & CFIF_SHUT_WR) &&
      !(entry->cfe_flags & CFEF_SENT_DISCONNECT_OUT))
   cfil_dispatch_disconnect_event(so, cfil_info, kcunit, 1);
 } else {
  if ((cfil_info->cfi_flags & CFIF_SHUT_RD) &&
      !(entry->cfe_flags & CFEF_SENT_DISCONNECT_IN))
   cfil_dispatch_disconnect_event(so, cfil_info, kcunit, 0);
 }

done:
 CFIL_LOG(LOG_DEBUG,
  "first %llu peeked %llu pass %llu peek %llu",
  entrybuf->cfe_ctl_q.q_start,
  entrybuf->cfe_peeked,
  entrybuf->cfe_pass_offset,
  entrybuf->cfe_peek_offset);

 CFIL_INFO_VERIFY(cfil_info);
 return (error);
}
