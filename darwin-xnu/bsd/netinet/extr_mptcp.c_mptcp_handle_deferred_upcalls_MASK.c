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
typedef  int uint32_t ;
struct mppcb {int mpp_flags; int /*<<< orphan*/  mpp_pcbe; int /*<<< orphan*/  mpp_socket; } ;

/* Variables and functions */
 int MPP_SET_CELLICON ; 
 int MPP_SHOULD_RWAKEUP ; 
 int MPP_SHOULD_WORKLOOP ; 
 int MPP_SHOULD_WWAKEUP ; 
 int MPP_UNSET_CELLICON ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct mppcb*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

void
FUNC7(struct mppcb *mpp, uint32_t flag)
{
	FUNC0(mpp->mpp_flags & flag);
	mpp->mpp_flags &= ~flag;

	if (FUNC2(mpp))
		return;

	if (mpp->mpp_flags & MPP_SHOULD_WORKLOOP) {
		mpp->mpp_flags &= ~MPP_SHOULD_WORKLOOP;

		FUNC3(mpp->mpp_pcbe);
	}

	if (mpp->mpp_flags & MPP_SHOULD_RWAKEUP) {
		mpp->mpp_flags &= ~MPP_SHOULD_RWAKEUP;

		FUNC5(mpp->mpp_socket);
	}

	if (mpp->mpp_flags & MPP_SHOULD_WWAKEUP) {
		mpp->mpp_flags &= ~MPP_SHOULD_WWAKEUP;

		FUNC6(mpp->mpp_socket);
	}

	if (mpp->mpp_flags & MPP_SET_CELLICON) {
		mpp->mpp_flags &= ~MPP_SET_CELLICON;

		FUNC1(mpp->mpp_pcbe);
	}

	if (mpp->mpp_flags & MPP_UNSET_CELLICON) {
		mpp->mpp_flags &= ~MPP_UNSET_CELLICON;

		FUNC4();
	}
}