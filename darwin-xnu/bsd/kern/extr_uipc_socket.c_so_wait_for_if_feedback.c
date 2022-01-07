
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int so_state; } ;
struct inpcb {int dummy; } ;


 scalar_t__ INP_WAIT_FOR_IF_FEEDBACK (struct inpcb*) ;
 scalar_t__ PF_INET ;
 scalar_t__ PF_INET6 ;
 scalar_t__ SOCK_DOM (struct socket*) ;
 int SS_ISCONNECTED ;
 struct inpcb* sotoinpcb (struct socket*) ;

int
so_wait_for_if_feedback(struct socket *so)
{
 if ((SOCK_DOM(so) == PF_INET || SOCK_DOM(so) == PF_INET6) &&
     (so->so_state & SS_ISCONNECTED)) {
  struct inpcb *inp = sotoinpcb(so);
  if (INP_WAIT_FOR_IF_FEEDBACK(inp))
   return (1);
 }
 return (0);
}
