#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct net_event_data {int dummy; } ;
struct kev_dl_link_quality_metric_data {int link_quality_metric; } ;
struct TYPE_4__ {int lqm_state; int valid_bitmask; } ;
struct ifnet {TYPE_1__ if_interface_state; } ;
typedef  int /*<<< orphan*/  ev_lqm_data ;
struct TYPE_5__ {int /*<<< orphan*/  ipi_flags; } ;

/* Variables and functions */
 int IFNET_LQM_MAX ; 
 int IFNET_LQM_MIN ; 
 int IFNET_LQM_THRESH_ABORT ; 
 int IFNET_LQM_THRESH_GOOD ; 
 int IFNET_LQM_THRESH_MINIMALLY_VIABLE ; 
 int IFNET_LQM_THRESH_POOR ; 
 int IF_INTERFACE_STATE_LQM_STATE_VALID ; 
 int /*<<< orphan*/  INPCBINFO_HANDLE_LQM_ABORT ; 
 int /*<<< orphan*/  INPCB_TIMER_FAST ; 
 int /*<<< orphan*/  KEV_DL_LINK_QUALITY_METRIC_CHANGED ; 
 int /*<<< orphan*/  KEV_DL_SUBCLASS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct kev_dl_link_quality_metric_data*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ifnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net_event_data*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC5 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_2__ tcbinfo ; 

void
FUNC7(struct ifnet *ifp, int lqm, int locked)
{
	struct kev_dl_link_quality_metric_data ev_lqm_data;

	FUNC0(lqm >= IFNET_LQM_MIN && lqm <= IFNET_LQM_MAX);

	/* Normalize to edge */
	if (lqm >= 0 && lqm <= IFNET_LQM_THRESH_ABORT) {
		lqm = IFNET_LQM_THRESH_ABORT;
		FUNC1(&tcbinfo.ipi_flags,
		    INPCBINFO_HANDLE_LQM_ABORT);
		FUNC6(&tcbinfo, INPCB_TIMER_FAST);
	} else if (lqm > IFNET_LQM_THRESH_ABORT &&
	    lqm <= IFNET_LQM_THRESH_MINIMALLY_VIABLE) {
		lqm = IFNET_LQM_THRESH_MINIMALLY_VIABLE;
	} else if (lqm > IFNET_LQM_THRESH_MINIMALLY_VIABLE &&
	    lqm <= IFNET_LQM_THRESH_POOR) {
		lqm = IFNET_LQM_THRESH_POOR;
	} else if (lqm > IFNET_LQM_THRESH_POOR &&
	    lqm <= IFNET_LQM_THRESH_GOOD) {
		lqm = IFNET_LQM_THRESH_GOOD;
	}

	/*
	 * Take the lock if needed
	 */
	if (!locked)
		FUNC5(ifp);

	if (lqm == ifp->if_interface_state.lqm_state &&
	    (ifp->if_interface_state.valid_bitmask &
	    IF_INTERFACE_STATE_LQM_STATE_VALID)) {
		/*
		 * Release the lock if was not held by the caller
		 */
		if (!locked)
			FUNC4(ifp);
		return;		/* nothing to update */
	}
	ifp->if_interface_state.valid_bitmask |=
		    IF_INTERFACE_STATE_LQM_STATE_VALID;
	ifp->if_interface_state.lqm_state = lqm;

	/*
	 * Don't want to hold the lock when issuing kernel events
	 */
	FUNC4(ifp);

	FUNC2(&ev_lqm_data, sizeof (ev_lqm_data));
	ev_lqm_data.link_quality_metric = lqm;

	FUNC3(ifp, KEV_DL_SUBCLASS, KEV_DL_LINK_QUALITY_METRIC_CHANGED,
	    (struct net_event_data *)&ev_lqm_data, sizeof (ev_lqm_data));

	/*
	 * Reacquire the lock for the caller
	 */
	if (locked)
		FUNC5(ifp);
}