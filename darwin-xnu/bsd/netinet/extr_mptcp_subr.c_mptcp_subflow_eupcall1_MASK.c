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
typedef  int uint32_t ;
struct socket {int dummy; } ;
struct mptsub {int mpts_evctl; struct mptses* mpts_mpte; } ;
struct mptses {TYPE_1__* mpte_mppcb; } ;
struct TYPE_2__ {int /*<<< orphan*/  mpp_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  MPP_SHOULD_WORKLOOP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct mptses*) ; 
 int /*<<< orphan*/  FUNC3 (struct mptses*) ; 

__attribute__((used)) static void
FUNC4(struct socket *so, void *arg, uint32_t events)
{
#pragma unused(so)
	struct mptsub *mpts = arg;
	struct mptses *mpte = mpts->mpts_mpte;

	FUNC0(mpte != NULL);
	FUNC3(mpte);

	if ((mpts->mpts_evctl & events) == events)
		return;

	mpts->mpts_evctl |= events;

	if (FUNC1(mpte->mpte_mppcb)) {
		mpte->mpte_mppcb->mpp_flags |= MPP_SHOULD_WORKLOOP;
		return;
	}

	FUNC2(mpte);
}