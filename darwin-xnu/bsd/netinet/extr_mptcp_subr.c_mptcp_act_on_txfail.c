
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcpcb {int dummy; } ;
struct socket {int so_flags; } ;
struct inpcb {int dummy; } ;


 int SOF_MP_TRYFAILOVER ;
 int SO_FILT_HINT_LOCKED ;
 int SO_FILT_HINT_MPFAILOVER ;
 struct tcpcb* intotcpcb (struct inpcb*) ;
 int soevent (struct socket*,int) ;
 struct inpcb* sotoinpcb (struct socket*) ;

void
mptcp_act_on_txfail(struct socket *so)
{
 struct tcpcb *tp = ((void*)0);
 struct inpcb *inp = sotoinpcb(so);

 if (inp == ((void*)0))
  return;

 tp = intotcpcb(inp);
 if (tp == ((void*)0))
  return;

 if (so->so_flags & SOF_MP_TRYFAILOVER)
  return;

 so->so_flags |= SOF_MP_TRYFAILOVER;
 soevent(so, (SO_FILT_HINT_LOCKED | SO_FILT_HINT_MPFAILOVER));
}
