
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint64_t ;
struct socket {int so_flags; TYPE_1__* so_cfil; } ;
typedef scalar_t__ errno_t ;
struct TYPE_6__ {int cfi_flags; } ;


 int CFIF_SOCK_CLOSED ;
 int CFIL_INFO_VERIFY (TYPE_1__*) ;
 int CFIL_LOG (int ,char*,int ) ;
 scalar_t__ IS_UDP (struct socket*) ;
 int LOG_INFO ;
 int MAX_CONTENT_FILTER ;
 int SOF_CONTENT_FILTER ;
 scalar_t__ VM_KERNEL_ADDRPERM (struct socket*) ;
 scalar_t__ cfil_acquire_sockbuf (struct socket*,TYPE_1__*,int) ;
 scalar_t__ cfil_dispatch_closed_event (struct socket*,TYPE_1__*,int) ;
 int cfil_flush_queues (struct socket*,TYPE_1__*) ;
 int cfil_release_sockbuf (struct socket*,int) ;
 int cfil_service_inject_queue (struct socket*,TYPE_1__*,int) ;
 int cfil_sock_udp_is_closed (struct socket*) ;
 int socket_lock_assert_owned (struct socket*) ;

void
cfil_sock_is_closed(struct socket *so)
{
 errno_t error = 0;
 int kcunit;

 if (IS_UDP(so)) {
  cfil_sock_udp_is_closed(so);
  return;
 }

 if ((so->so_flags & SOF_CONTENT_FILTER) == 0 || so->so_cfil == ((void*)0))
  return;

 CFIL_LOG(LOG_INFO, "so %llx", (uint64_t)VM_KERNEL_ADDRPERM(so));

 socket_lock_assert_owned(so);

 for (kcunit = 1; kcunit <= MAX_CONTENT_FILTER; kcunit++) {

  error = cfil_dispatch_closed_event(so, so->so_cfil, kcunit);
 }


 error = cfil_acquire_sockbuf(so, so->so_cfil, 1);
 if (error == 0)
  cfil_service_inject_queue(so, so->so_cfil, 1);
 cfil_release_sockbuf(so, 1);

 so->so_cfil->cfi_flags |= CFIF_SOCK_CLOSED;


 cfil_flush_queues(so, so->so_cfil);

 CFIL_INFO_VERIFY(so->so_cfil);
}
