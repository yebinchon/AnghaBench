
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcpcb {int t_mpflags; scalar_t__ tso_max_segment_size; int t_flags; struct inpcb* t_inpcb; } ;
struct inpcb {int inp_vflag; } ;
struct ifnet {int if_hwassist; scalar_t__ if_tso_v6_mtu; scalar_t__ if_tso_v4_mtu; } ;


 int IFNET_TSO_IPV4 ;
 int IFNET_TSO_IPV6 ;
 int INP_IPV6 ;
 void* TCP_MAXWIN ;
 int TF_TSO ;
 int TMPF_MPTCP_TRUE ;

void
tcp_set_tso(struct tcpcb *tp, struct ifnet *ifp)
{
 {
  if (ifp && (ifp->if_hwassist & IFNET_TSO_IPV4)) {
   tp->t_flags |= TF_TSO;
   if (ifp->if_tso_v4_mtu != 0)
    tp->tso_max_segment_size = ifp->if_tso_v4_mtu;
   else
    tp->tso_max_segment_size = TCP_MAXWIN;
  } else
    tp->t_flags &= ~TF_TSO;
 }
}
