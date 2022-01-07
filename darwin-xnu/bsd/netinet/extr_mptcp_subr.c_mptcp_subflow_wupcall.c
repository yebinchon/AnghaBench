
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {int dummy; } ;
struct mptsub {struct mptses* mpts_mpte; } ;
struct mptses {TYPE_1__* mpte_mppcb; } ;
struct TYPE_2__ {int mpp_flags; } ;


 int MPP_SHOULD_WWAKEUP ;
 int MPP_WUPCALL ;
 int VERIFY (int ) ;
 int mptcp_output (struct mptses*) ;
 scalar_t__ mptcp_should_defer_upcall (TYPE_1__*) ;

__attribute__((used)) static void
mptcp_subflow_wupcall(struct socket *so, void *arg, int waitf)
{
#pragma unused(so, waitf)
 struct mptsub *mpts = arg;
 struct mptses *mpte = mpts->mpts_mpte;

 VERIFY(mpte != ((void*)0));

 if (mptcp_should_defer_upcall(mpte->mpte_mppcb)) {
  if (!(mpte->mpte_mppcb->mpp_flags & MPP_WUPCALL))
   mpte->mpte_mppcb->mpp_flags |= MPP_SHOULD_WWAKEUP;
  return;
 }

 mptcp_output(mpte);
}
