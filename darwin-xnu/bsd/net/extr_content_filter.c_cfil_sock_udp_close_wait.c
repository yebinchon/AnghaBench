
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;


 int FALSE ;
 int SHUT_RDWR ;
 int TRUE ;
 scalar_t__ cfil_filters_udp_attached (struct socket*,int ) ;
 int cfil_sock_udp_notify_shutdown (struct socket*,int ,int ,int ) ;
 int socket_lock_assert_owned (struct socket*) ;

void
cfil_sock_udp_close_wait(struct socket *so)
{
 socket_lock_assert_owned(so);

 while (cfil_filters_udp_attached(so, FALSE)) {



  cfil_sock_udp_notify_shutdown(so, SHUT_RDWR, 0, 0);





  if (cfil_filters_udp_attached(so, TRUE) == 0)
   break;
 }
}
