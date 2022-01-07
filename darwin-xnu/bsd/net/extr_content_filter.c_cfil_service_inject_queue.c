
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct socket {int so_snd; int so_rcv; int m_flags; } ;
struct cfil_queue {int dummy; } ;
struct cfi_buf {unsigned int cfi_pending_first; int cfi_pending_mbcnt; int cfi_pending_mbnum; struct cfil_queue cfi_inject_q; } ;
struct cfil_info {int cfi_flags; struct cfi_buf cfi_rcv; struct cfi_buf cfi_snd; } ;
typedef struct socket* mbuf_t ;
typedef int errno_t ;
typedef int caddr_t ;
struct TYPE_2__ {int cfs_inject_q_in_fail; int cfs_inject_q_out_fail; int cfs_inject_q_nomem; int cfs_inject_q_nobufs; int cfs_inject_q_in_passed; int cfs_inject_q_out_passed; } ;


 int CFIF_CLOSE_WAIT ;
 int CFIF_RETRY_INJECT_IN ;
 int CFIF_RETRY_INJECT_OUT ;
 int CFIF_SHUT_WR ;
 int CFIL_INFO_VERIFY (struct cfil_info*) ;
 int CFIL_LOG (int ,char*,...) ;
 int ENOBUFS ;
 int ENOMEM ;
 int IS_UDP (struct socket*) ;
 int LOG_DEBUG ;
 int LOG_ERR ;
 int LOG_INFO ;
 int M_SKIPCFIL ;
 int OSAddAtomic64 (unsigned int,int *) ;
 int OSIncrementAtomic (int *) ;
 int SHUT_WR ;
 int TRUE ;
 scalar_t__ VM_KERNEL_ADDRPERM (struct socket*) ;
 unsigned int cfil_data_length (struct socket*,int*,int*) ;
 scalar_t__ cfil_filters_attached (struct socket*) ;
 int cfil_info_buf_verify (struct cfi_buf*) ;
 int cfil_info_log (int ,struct cfil_info*,char*) ;
 scalar_t__ cfil_queue_empty (struct cfil_queue*) ;
 struct socket* cfil_queue_first (struct cfil_queue*) ;
 int cfil_queue_len (struct cfil_queue*) ;
 int cfil_queue_remove (struct cfil_queue*,struct socket*,unsigned int) ;
 scalar_t__ cfil_sock_data_pending (int *) ;
 int cfil_sock_notify_shutdown (struct socket*,int ) ;
 TYPE_1__ cfil_stats ;
 scalar_t__ remote_addr_ptr ;
 scalar_t__ sbappendchain (int *,struct socket*,int ) ;
 scalar_t__ sbappendstream (int *,struct socket*) ;
 int socket_lock_assert_owned (struct socket*) ;
 int sorwakeup (struct socket*) ;
 int sosend_reinject (struct socket*,int *,struct socket*,int *,int ) ;
 int soshutdownlock_final (struct socket*,int ) ;
 int sowwakeup (struct socket*) ;
 int wakeup (int ) ;

__attribute__((used)) static int
cfil_service_inject_queue(struct socket *so, struct cfil_info *cfil_info, int outgoing)
{
 mbuf_t data;
 unsigned int datalen;
 int mbcnt = 0;
 int mbnum = 0;
 errno_t error = 0;
 struct cfi_buf *cfi_buf;
 struct cfil_queue *inject_q;
 int need_rwakeup = 0;
 int count = 0;

 if (cfil_info == ((void*)0))
  return (0);

 socket_lock_assert_owned(so);

 if (outgoing) {
  cfi_buf = &cfil_info->cfi_snd;
  cfil_info->cfi_flags &= ~CFIF_RETRY_INJECT_OUT;
 } else {
  cfi_buf = &cfil_info->cfi_rcv;
  cfil_info->cfi_flags &= ~CFIF_RETRY_INJECT_IN;
 }
 inject_q = &cfi_buf->cfi_inject_q;

 if (cfil_queue_empty(inject_q))
  return (0);






 while ((data = cfil_queue_first(inject_q)) != ((void*)0)) {
  datalen = cfil_data_length(data, &mbcnt, &mbnum);
  cfil_queue_remove(inject_q, data, datalen);
  cfi_buf->cfi_pending_first += datalen;
  cfi_buf->cfi_pending_mbcnt -= mbcnt;
  cfi_buf->cfi_pending_mbnum -= mbnum;
  cfil_info_buf_verify(cfi_buf);

  if (outgoing) {
   error = sosend_reinject(so, ((void*)0), data, ((void*)0), 0);
   if (error != 0) {




    break;
   }

   need_rwakeup = 1;
  } else {
   data->m_flags |= M_SKIPCFIL;







   if (IS_UDP(so) == TRUE) {
    if (sbappendchain(&so->so_rcv, data, 0))
     need_rwakeup = 1;
   } else {
    if (sbappendstream(&so->so_rcv, data))
     need_rwakeup = 1;
   }
  }

  if (outgoing)
   OSAddAtomic64(datalen,
    &cfil_stats.cfs_inject_q_out_passed);
  else
   OSAddAtomic64(datalen,
    &cfil_stats.cfs_inject_q_in_passed);

  count++;
 }







 if (need_rwakeup) {
  if (outgoing == TRUE)
   sowwakeup(so);
  else
   sorwakeup(so);
 }

 if (error != 0 && cfil_info) {
  if (error == ENOBUFS)
   OSIncrementAtomic(&cfil_stats.cfs_inject_q_nobufs);
  if (error == ENOMEM)
   OSIncrementAtomic(&cfil_stats.cfs_inject_q_nomem);

  if (outgoing) {
   cfil_info->cfi_flags |= CFIF_RETRY_INJECT_OUT;
   OSIncrementAtomic(&cfil_stats.cfs_inject_q_out_fail);
  } else {
   cfil_info->cfi_flags |= CFIF_RETRY_INJECT_IN;
   OSIncrementAtomic(&cfil_stats.cfs_inject_q_in_fail);
  }
 }




 if (cfil_info && (cfil_info->cfi_flags & CFIF_SHUT_WR)) {
  cfil_sock_notify_shutdown(so, SHUT_WR);
  if (cfil_sock_data_pending(&so->so_snd) == 0)
   soshutdownlock_final(so, SHUT_WR);
 }
 if (cfil_info && (cfil_info->cfi_flags & CFIF_CLOSE_WAIT)) {
  if (cfil_filters_attached(so) == 0) {
   CFIL_LOG(LOG_INFO, "so %llx waking",
    (uint64_t)VM_KERNEL_ADDRPERM(so));
   wakeup((caddr_t)cfil_info);
  }
 }

 CFIL_INFO_VERIFY(cfil_info);

 return (error);
}
