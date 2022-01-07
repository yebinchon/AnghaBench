
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct socket {int dummy; } ;
struct mptsub {int mpts_evctl; struct mptses* mpts_mpte; } ;
struct mptses {TYPE_1__* mpte_mppcb; } ;
struct TYPE_2__ {int mpp_flags; } ;


 int MPP_SHOULD_WORKLOOP ;
 int VERIFY (int ) ;
 scalar_t__ mptcp_should_defer_upcall (TYPE_1__*) ;
 int mptcp_subflow_workloop (struct mptses*) ;
 int mpte_lock_assert_held (struct mptses*) ;

__attribute__((used)) static void
mptcp_subflow_eupcall1(struct socket *so, void *arg, uint32_t events)
{
#pragma unused(so)
 struct mptsub *mpts = arg;
 struct mptses *mpte = mpts->mpts_mpte;

 VERIFY(mpte != ((void*)0));
 mpte_lock_assert_held(mpte);

 if ((mpts->mpts_evctl & events) == events)
  return;

 mpts->mpts_evctl |= events;

 if (mptcp_should_defer_upcall(mpte->mpte_mppcb)) {
  mpte->mpte_mppcb->mpp_flags |= MPP_SHOULD_WORKLOOP;
  return;
 }

 mptcp_subflow_workloop(mpte);
}
