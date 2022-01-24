#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct mptses {int /*<<< orphan*/  mpte_sopts; } ;
struct mptopt {int mpo_flags; } ;

/* Variables and functions */
 int MPOF_ATTACHED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct mptopt*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  mpo_entry ; 
 int /*<<< orphan*/  FUNC2 (struct mptses*) ; 

void
FUNC3(struct mptses *mpte, struct mptopt *mpo)
{
	FUNC2(mpte);	/* same as MP socket lock */
	FUNC1(mpo->mpo_flags & MPOF_ATTACHED);
	mpo->mpo_flags &= ~MPOF_ATTACHED;
	FUNC0(&mpte->mpte_sopts, mpo, mpo_entry);
}