
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcpcb {scalar_t__ t_state; int t_flags; } ;
struct socket {int dummy; } ;
struct inpcb {struct ifnet* inp_last_outifp; } ;
struct ifnet {int * if_link_status; } ;


 int IFNET_IS_CELLULAR (struct ifnet*) ;
 scalar_t__ TCPS_CLOSE_WAIT ;
 int TF_BLACKHOLE ;
 struct tcpcb* intotcpcb (struct inpcb*) ;
 struct inpcb* sotoinpcb (struct socket*) ;
 int tcp_update_mss_core (struct tcpcb*,struct ifnet*) ;

void
tcp_update_mss_locked(struct socket *so, struct ifnet *ifp)
{
 struct inpcb *inp = sotoinpcb(so);
 struct tcpcb *tp = intotcpcb(inp);

 if (ifp == ((void*)0) && (ifp = inp->inp_last_outifp) == ((void*)0))
  return;

 if (!IFNET_IS_CELLULAR(ifp)) {




  return;
 }
 if ( tp->t_state <= TCPS_CLOSE_WAIT) {




  if (tp->t_flags & TF_BLACKHOLE)
   return;
  if (ifp->if_link_status == ((void*)0))
   return;
  tcp_update_mss_core(tp, ifp);
 }
}
