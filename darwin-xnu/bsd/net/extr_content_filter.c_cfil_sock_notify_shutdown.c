
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct socket {int so_flags; int * so_cfil; } ;
typedef int errno_t ;


 int CFIL_LOG (int ,char*,int ,int) ;
 scalar_t__ IS_UDP (struct socket*) ;
 int LOG_INFO ;
 int MAX_CONTENT_FILTER ;
 int SHUT_RD ;
 int SHUT_WR ;
 int SOF_CONTENT_FILTER ;
 scalar_t__ VM_KERNEL_ADDRPERM (struct socket*) ;
 int cfil_dispatch_disconnect_event (struct socket*,int *,int,int) ;
 int cfil_sock_udp_notify_shutdown (struct socket*,int,int ,int ) ;
 int socket_lock_assert_owned (struct socket*) ;

void
cfil_sock_notify_shutdown(struct socket *so, int how)
{
 errno_t error = 0;
 int kcunit;

 if (IS_UDP(so)) {
  cfil_sock_udp_notify_shutdown(so, how, 0, 0);
  return;
 }

 if ((so->so_flags & SOF_CONTENT_FILTER) == 0 || so->so_cfil == ((void*)0))
  return;

 CFIL_LOG(LOG_INFO, "so %llx how %d",
  (uint64_t)VM_KERNEL_ADDRPERM(so), how);

 socket_lock_assert_owned(so);

 for (kcunit = 1; kcunit <= MAX_CONTENT_FILTER; kcunit++) {

  if (how != SHUT_WR)
   error = cfil_dispatch_disconnect_event(so, so->so_cfil, kcunit, 0);

  if (how != SHUT_RD)
   error = cfil_dispatch_disconnect_event(so, so->so_cfil, kcunit, 1);
 }
}
