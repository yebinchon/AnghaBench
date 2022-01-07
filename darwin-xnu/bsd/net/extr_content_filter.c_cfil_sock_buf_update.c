
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct socket {int so_flags; TYPE_2__* so_cfil; } ;
struct sockbuf {int sb_flags; struct socket* sb_so; } ;
struct TYPE_5__ {int cfi_flags; } ;
struct TYPE_4__ {int cfs_inject_q_in_retry; int cfs_inject_q_out_retry; } ;


 int CFIF_RETRY_INJECT_IN ;
 int CFIF_RETRY_INJECT_OUT ;
 int CFIL_LOG (int ,char*,int ,int) ;
 scalar_t__ IS_UDP (struct socket*) ;
 int LOG_NOTICE ;
 int OSIncrementAtomic (int *) ;
 int SB_RECV ;
 int SOF_CONTENT_FILTER ;
 scalar_t__ VM_KERNEL_ADDRPERM (struct socket*) ;
 int cfil_acquire_sockbuf (struct socket*,TYPE_2__*,int) ;
 int cfil_release_sockbuf (struct socket*,int) ;
 int cfil_sbtrim ;
 int cfil_service_inject_queue (struct socket*,TYPE_2__*,int) ;
 int cfil_sock_udp_buf_update (struct sockbuf*) ;
 TYPE_1__ cfil_stats ;
 int socket_lock_assert_owned (struct socket*) ;

void
cfil_sock_buf_update(struct sockbuf *sb)
{
 int outgoing;
 int error;
 struct socket *so = sb->sb_so;

    if (IS_UDP(so)) {
  cfil_sock_udp_buf_update(sb);
  return;
    }

 if ((so->so_flags & SOF_CONTENT_FILTER) == 0 || so->so_cfil == ((void*)0))
  return;

 if (!cfil_sbtrim)
  return;

 socket_lock_assert_owned(so);

 if ((sb->sb_flags & SB_RECV) == 0) {
  if ((so->so_cfil->cfi_flags & CFIF_RETRY_INJECT_OUT) == 0)
   return;
  outgoing = 1;
  OSIncrementAtomic(&cfil_stats.cfs_inject_q_out_retry);
 } else {
  if ((so->so_cfil->cfi_flags & CFIF_RETRY_INJECT_IN) == 0)
   return;
  outgoing = 0;
  OSIncrementAtomic(&cfil_stats.cfs_inject_q_in_retry);
 }

 CFIL_LOG(LOG_NOTICE, "so %llx outgoing %d",
  (uint64_t)VM_KERNEL_ADDRPERM(so), outgoing);

 error = cfil_acquire_sockbuf(so, so->so_cfil, outgoing);
 if (error == 0)
  cfil_service_inject_queue(so, so->so_cfil, outgoing);
 cfil_release_sockbuf(so, outgoing);
}
