
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mptses {struct mptcb* mpte_mptcb; } ;
struct mptcb {scalar_t__ mpt_sndnxt; scalar_t__ mpt_sndmax; } ;


 int MPCE_CLOSE ;
 int mptcp_close_fsm (struct mptcb*,int ) ;
 int mptcp_finish_usrclosed (struct mptses*) ;

__attribute__((used)) static struct mptses *
mptcp_usrclosed(struct mptses *mpte)
{
 struct mptcb *mp_tp = mpte->mpte_mptcb;

 mptcp_close_fsm(mp_tp, MPCE_CLOSE);


 if (mp_tp->mpt_sndnxt + 1 != mp_tp->mpt_sndmax)
  return (mpte);

 mptcp_finish_usrclosed(mpte);

 return (mpte);
}
