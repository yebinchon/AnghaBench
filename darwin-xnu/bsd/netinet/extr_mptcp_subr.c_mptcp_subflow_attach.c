
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcpcb {struct mptsub* t_mpsub; int t_mptcb; } ;
struct socket {int so_usecount; int so_flags; } ;
struct mptsub {struct socket* mpts_socket; struct mptses* mpts_mpte; int mpts_flags; } ;
struct mptses {int mpte_numflows; int mpte_subflows; int mpte_mptcb; TYPE_1__* mpte_mppcb; } ;
struct TYPE_2__ {struct socket* mpp_socket; } ;


 int MPTSF_ATTACHED ;
 int SOF_MP_SUBFLOW ;
 int TAILQ_INSERT_TAIL (int *,struct mptsub*,int ) ;
 int atomic_bitset_32 (int *,int ) ;
 int mptcp_subflow_addref (struct mptsub*) ;
 int mpts_entry ;
 struct tcpcb* sototcpcb (struct socket*) ;

__attribute__((used)) static void
mptcp_subflow_attach(struct mptses *mpte, struct mptsub *mpts, struct socket *so)
{
 struct socket *mp_so = mpte->mpte_mppcb->mpp_socket;
 struct tcpcb *tp = sototcpcb(so);





 tp->t_mptcb = mpte->mpte_mptcb;
 so->so_flags |= SOF_MP_SUBFLOW;
 mp_so->so_usecount++;






 TAILQ_INSERT_TAIL(&mpte->mpte_subflows, mpts, mpts_entry);
 mpte->mpte_numflows++;

 atomic_bitset_32(&mpts->mpts_flags, MPTSF_ATTACHED);
 mpts->mpts_mpte = mpte;
 mpts->mpts_socket = so;
 tp->t_mpsub = mpts;
 mptcp_subflow_addref(mpts);
 mptcp_subflow_addref(mpts);
}
