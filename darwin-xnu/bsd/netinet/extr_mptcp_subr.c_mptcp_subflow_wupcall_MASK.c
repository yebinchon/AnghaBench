#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct socket {int dummy; } ;
struct mptsub {struct mptses* mpts_mpte; } ;
struct mptses {TYPE_1__* mpte_mppcb; } ;
struct TYPE_2__ {int mpp_flags; } ;

/* Variables and functions */
 int MPP_SHOULD_WWAKEUP ; 
 int MPP_WUPCALL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mptses*) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC3(struct socket *so, void *arg, int waitf)
{
#pragma unused(so, waitf)
	struct mptsub *mpts = arg;
	struct mptses *mpte = mpts->mpts_mpte;

	FUNC0(mpte != NULL);

	if (FUNC2(mpte->mpte_mppcb)) {
		if (!(mpte->mpte_mppcb->mpp_flags & MPP_WUPCALL))
			mpte->mpte_mppcb->mpp_flags |= MPP_SHOULD_WWAKEUP;
		return;
	}

	FUNC1(mpte);
}