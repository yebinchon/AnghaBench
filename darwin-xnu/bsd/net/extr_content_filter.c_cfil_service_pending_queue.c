
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef unsigned int uint64_t ;
typedef int uint32_t ;
struct socket {int dummy; } ;
struct cfil_queue {unsigned int q_start; } ;
struct TYPE_5__ {int cfi_inject_q; } ;
struct TYPE_4__ {int cfi_inject_q; } ;
struct cfil_info {TYPE_2__ cfi_rcv; TYPE_1__ cfi_snd; struct cfil_entry* cfi_entries; } ;
struct cfe_buf {unsigned int cfe_pass_offset; struct cfil_queue cfe_pending_q; } ;
struct cfil_entry {struct cfe_buf cfe_rcv; struct cfe_buf cfe_snd; } ;
typedef struct socket* mbuf_t ;
typedef scalar_t__ errno_t ;
struct TYPE_6__ {int cfs_inject_q_in_enqueued; int cfs_inject_q_out_enqueued; } ;


 int CFIL_INFO_VERIFY (struct cfil_info*) ;
 int CFIL_LOG (int ,char*,unsigned int,unsigned int,unsigned int,...) ;
 int LOG_DEBUG ;
 int LOG_INFO ;
 int MAX_CONTENT_FILTER ;
 int OSAddAtomic64 (unsigned int,int *) ;
 scalar_t__ VM_KERNEL_ADDRPERM (struct socket*) ;
 scalar_t__ cfil_data_filter (struct socket*,struct cfil_info*,int,int,struct socket*,unsigned int) ;
 unsigned int cfil_data_length (struct socket*,int *,int *) ;
 int cfil_queue_enqueue (int *,struct socket*,unsigned int) ;
 struct socket* cfil_queue_first (struct cfil_queue*) ;
 int cfil_queue_remove (struct cfil_queue*,struct socket*,unsigned int) ;
 TYPE_3__ cfil_stats ;
 int socket_lock_assert_owned (struct socket*) ;

__attribute__((used)) static int
cfil_service_pending_queue(struct socket *so, struct cfil_info *cfil_info, uint32_t kcunit, int outgoing)
{
 uint64_t passlen, curlen;
 mbuf_t data;
 unsigned int datalen;
 errno_t error = 0;
 struct cfil_entry *entry;
 struct cfe_buf *entrybuf;
 struct cfil_queue *pending_q;

 CFIL_LOG(LOG_INFO, "so %llx kcunit %u outgoing %d",
  (uint64_t)VM_KERNEL_ADDRPERM(so), kcunit, outgoing);

 socket_lock_assert_owned(so);

 entry = &cfil_info->cfi_entries[kcunit - 1];
 if (outgoing)
  entrybuf = &entry->cfe_snd;
 else
  entrybuf = &entry->cfe_rcv;

 pending_q = &entrybuf->cfe_pending_q;

 passlen = entrybuf->cfe_pass_offset - pending_q->q_start;





 curlen = 0;
 while ((data = cfil_queue_first(pending_q)) != ((void*)0)) {
  datalen = cfil_data_length(data, ((void*)0), ((void*)0));
  if (curlen + datalen > passlen)
   break;

  cfil_queue_remove(pending_q, data, datalen);

  curlen += datalen;

  for (kcunit += 1;
   kcunit <= MAX_CONTENT_FILTER;
   kcunit++) {
   error = cfil_data_filter(so, cfil_info, kcunit, outgoing,
    data, datalen);

   if (error != 0)
    break;
  }

  if (error == 0) {
   if (outgoing) {
    cfil_queue_enqueue(
     &cfil_info->cfi_snd.cfi_inject_q,
     data, datalen);
    OSAddAtomic64(datalen,
     &cfil_stats.cfs_inject_q_out_enqueued);
   } else {
    cfil_queue_enqueue(
     &cfil_info->cfi_rcv.cfi_inject_q,
     data, datalen);
    OSAddAtomic64(datalen,
     &cfil_stats.cfs_inject_q_in_enqueued);
   }
  }
 }

 CFIL_INFO_VERIFY(cfil_info);

 return (error);
}
