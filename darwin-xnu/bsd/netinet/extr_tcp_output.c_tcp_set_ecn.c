
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tcpcb {int ecn_flags; int iss; TYPE_2__* t_inpcb; } ;
struct ifnet {int if_eflags; } ;
typedef int boolean_t ;
struct TYPE_4__ {TYPE_1__* inp_socket; } ;
struct TYPE_3__ {int * so_head; } ;


 int IFEF_ECN_DISABLE ;
 int IFEF_ECN_ENABLE ;
 int TE_ECN_MODE_DISABLE ;
 int TE_ECN_MODE_ENABLE ;
 int TE_ENABLE_ECN ;
 int tcp_ecn_inbound ;
 int tcp_ecn_outbound ;
 int tcp_ecn_setup_percentage ;
 int tcp_heuristic_do_ecn (struct tcpcb*) ;

void
tcp_set_ecn(struct tcpcb *tp, struct ifnet *ifp)
{
 boolean_t inbound;




 if (tp->ecn_flags & TE_ECN_MODE_ENABLE) {
  tp->ecn_flags |= TE_ENABLE_ECN;
  goto check_heuristic;
 }

 if (tp->ecn_flags & TE_ECN_MODE_DISABLE) {
  tp->ecn_flags &= ~TE_ENABLE_ECN;
  return;
 }



 if (ifp != ((void*)0)) {
  if (ifp->if_eflags & IFEF_ECN_ENABLE) {
   tp->ecn_flags |= TE_ENABLE_ECN;
   goto check_heuristic;
  }

  if (ifp->if_eflags & IFEF_ECN_DISABLE) {
   tp->ecn_flags &= ~TE_ENABLE_ECN;
   return;
  }
 }



 inbound = (tp->t_inpcb->inp_socket->so_head != ((void*)0));
 if ((inbound && tcp_ecn_inbound == 1) ||
     (!inbound && tcp_ecn_outbound == 1)) {
  tp->ecn_flags |= TE_ENABLE_ECN;
  goto check_heuristic;
 } else {
  tp->ecn_flags &= ~TE_ENABLE_ECN;
 }

 return;

check_heuristic:
 if (!tcp_heuristic_do_ecn(tp))
  tp->ecn_flags &= ~TE_ENABLE_ECN;






 if ((tp->ecn_flags & (TE_ECN_MODE_ENABLE | TE_ECN_MODE_DISABLE
     | TE_ENABLE_ECN)) == TE_ENABLE_ECN) {




  if ((tp->iss % 100) >= tcp_ecn_setup_percentage)
   tp->ecn_flags &= ~TE_ENABLE_ECN;
 }
}
