
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcpcb {int t_mpflags; } ;
struct socket {int dummy; } ;
struct inpcb {int dummy; } ;


 int TMPF_RESET ;
 int TMPF_SEND_DFIN ;
 struct tcpcb* intotcpcb (struct inpcb*) ;
 struct inpcb* sotoinpcb (struct socket*) ;

__attribute__((used)) static void
mptcp_send_dfin(struct socket *so)
{
 struct tcpcb *tp = ((void*)0);
 struct inpcb *inp = ((void*)0);

 inp = sotoinpcb(so);
 if (!inp)
  return;

 tp = intotcpcb(inp);
 if (!tp)
  return;

 if (!(tp->t_mpflags & TMPF_RESET))
  tp->t_mpflags |= TMPF_SEND_DFIN;
}
