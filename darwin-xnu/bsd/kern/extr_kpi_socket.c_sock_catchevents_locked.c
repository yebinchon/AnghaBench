
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u_int32_t ;
typedef TYPE_1__* socket_t ;
typedef int * sock_evupcall ;
struct TYPE_4__ {scalar_t__ so_eventmask; int * so_eventarg; int * so_event; } ;


 int socket_lock_assert_owned (TYPE_1__*) ;
 int * sonullevent ;

void
sock_catchevents_locked(socket_t sock, sock_evupcall ecallback, void *econtext,
    u_int32_t emask)
{
 socket_lock_assert_owned(sock);




 if (ecallback != ((void*)0)) {
  sock->so_event = ecallback;
  sock->so_eventarg = econtext;
  sock->so_eventmask = emask;
 } else {
  sock->so_event = sonullevent;
  sock->so_eventarg = ((void*)0);
  sock->so_eventmask = 0;
 }
}
