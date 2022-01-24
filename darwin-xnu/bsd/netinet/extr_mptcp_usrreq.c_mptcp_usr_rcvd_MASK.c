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
struct socket {int dummy; } ;
struct mptses {int dummy; } ;
struct mppcb {scalar_t__ mpp_state; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ MPPCB_STATE_DEAD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct mppcb* FUNC1 (struct socket*) ; 
 int FUNC2 (struct mptses*) ; 
 struct mptses* FUNC3 (struct mppcb*) ; 

__attribute__((used)) static int
FUNC4(struct socket *mp_so, int flags)
{
#pragma unused(flags)
	struct mppcb *mpp = FUNC1(mp_so);
	struct mptses *mpte;
	int error = 0;

	if (mpp == NULL || mpp->mpp_state == MPPCB_STATE_DEAD) {
		error = EINVAL;
		goto out;
	}
	mpte = FUNC3(mpp);
	FUNC0(mpte != NULL);

	error = FUNC2(mpte);
out:
	return (error);
}