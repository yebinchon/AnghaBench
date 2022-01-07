
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int32_t ;
struct mptses {struct mptcb* mpte_mptcb; TYPE_1__* mpte_mppcb; } ;
struct mptcb {int mpt_notsent_lowat; } ;
struct TYPE_2__ {int mpp_flags; } ;


 int MPP_ATTACHED ;

u_int32_t
mptcp_get_notsent_lowat(struct mptses *mpte)
{
 struct mptcb *mp_tp = ((void*)0);

 if (mpte->mpte_mppcb->mpp_flags & MPP_ATTACHED)
  mp_tp = mpte->mpte_mptcb;

 if (mp_tp)
  return (mp_tp->mpt_notsent_lowat);
 else
  return (0);
}
