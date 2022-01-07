
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;


 scalar_t__ PF_INET ;
 scalar_t__ PF_INET6 ;
 scalar_t__ SOCK_DOM (struct socket*) ;
 int inp_update_policy (int ) ;
 int sotoinpcb (struct socket*) ;

void
so_update_policy(struct socket *so)
{
 if (SOCK_DOM(so) == PF_INET || SOCK_DOM(so) == PF_INET6)
  (void) inp_update_policy(sotoinpcb(so));
}
