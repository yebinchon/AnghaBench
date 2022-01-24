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
struct socket {struct mppcb* so_pcb; } ;
struct mppcbinfo {int /*<<< orphan*/  mppi_lock; int /*<<< orphan*/  mppi_count; int /*<<< orphan*/  mppi_pcbs; int /*<<< orphan*/  mppi_zone; int /*<<< orphan*/  mppi_lock_grp; int /*<<< orphan*/  mppi_lock_attr; int /*<<< orphan*/  mppi_size; } ;
struct mppcb {int /*<<< orphan*/  mpp_flags; int /*<<< orphan*/  mpp_lock; struct socket* mpp_socket; int /*<<< orphan*/  mpp_state; struct mppcbinfo* mpp_pcbinfo; } ;

/* Variables and functions */
 int ENOBUFS ; 
 int /*<<< orphan*/  MPPCB_STATE_INUSE ; 
 int /*<<< orphan*/  MPP_ATTACHED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct mppcb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mppcb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mpp_entry ; 
 int /*<<< orphan*/ * FUNC7 (struct socket*) ; 
 int FUNC8 (struct mppcb*) ; 
 struct mppcb* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,struct mppcb*) ; 

int
FUNC11(struct socket *so, struct mppcbinfo *mppi)
{
	struct mppcb *mpp = NULL;
	int error;

	FUNC1(FUNC7(so) == NULL);

	mpp = FUNC9(mppi->mppi_zone);
	if (mpp == NULL) {
		return (ENOBUFS);
	}

	FUNC2(mpp, mppi->mppi_size);
	FUNC4(&mpp->mpp_lock, mppi->mppi_lock_grp, mppi->mppi_lock_attr);
	mpp->mpp_pcbinfo = mppi;
	mpp->mpp_state = MPPCB_STATE_INUSE;
	mpp->mpp_socket = so;
	so->so_pcb = mpp;

	error = FUNC8(mpp);
	if (error) {
		FUNC3(&mpp->mpp_lock, mppi->mppi_lock_grp);
		FUNC10(mppi->mppi_zone, mpp);
		return (error);
	}

	FUNC5(&mppi->mppi_lock);
	mpp->mpp_flags |= MPP_ATTACHED;
	FUNC0(&mppi->mppi_pcbs, mpp, mpp_entry);
	mppi->mppi_count++;
	FUNC6(&mppi->mppi_lock);

	return (0);
}