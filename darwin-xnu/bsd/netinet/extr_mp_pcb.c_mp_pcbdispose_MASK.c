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
struct mppcbinfo {scalar_t__ mppi_count; int /*<<< orphan*/  mppi_zone; int /*<<< orphan*/  mppi_lock_grp; int /*<<< orphan*/  mppi_pcbs; int /*<<< orphan*/  mppi_lock; } ;
struct mppcb {scalar_t__ mpp_state; int mpp_flags; TYPE_1__* mpp_socket; int /*<<< orphan*/  mpp_lock; struct mppcbinfo* mpp_pcbinfo; } ;
struct TYPE_2__ {scalar_t__ so_usecount; int /*<<< orphan*/ * so_pcb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LCK_MTX_ASSERT_OWNED ; 
 scalar_t__ MPPCB_STATE_DEAD ; 
 int MPP_ATTACHED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct mppcb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mpp_entry ; 
 int /*<<< orphan*/  FUNC4 (struct mppcb*) ; 
 int /*<<< orphan*/  FUNC5 (struct mppcb*) ; 
 int /*<<< orphan*/  FUNC6 (struct mppcb*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct mppcb*) ; 

void
FUNC8(struct mppcb *mpp)
{
	struct mppcbinfo *mppi = mpp->mpp_pcbinfo;

	FUNC2(mppi != NULL);

	FUNC0(&mppi->mppi_lock, LCK_MTX_ASSERT_OWNED);
	FUNC4(mpp);

	FUNC2(mpp->mpp_state == MPPCB_STATE_DEAD);
	FUNC2(mpp->mpp_flags & MPP_ATTACHED);

	mpp->mpp_flags &= ~MPP_ATTACHED;
	FUNC1(&mppi->mppi_pcbs, mpp, mpp_entry);
	FUNC2(mppi->mppi_count != 0);
	mppi->mppi_count--;

	FUNC5(mpp);

#if NECP
	necp_mppcb_dispose(mpp);
#endif /* NECP */

	FUNC3(&mpp->mpp_lock, mppi->mppi_lock_grp);

	FUNC2(mpp->mpp_socket != NULL);
	FUNC2(mpp->mpp_socket->so_usecount == 0);
	mpp->mpp_socket->so_pcb = NULL;
	mpp->mpp_socket = NULL;

	FUNC7(mppi->mppi_zone, mpp);
}