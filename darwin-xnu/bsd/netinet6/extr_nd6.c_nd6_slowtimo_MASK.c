#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct nd_ifinfo {scalar_t__ initialized; scalar_t__ recalctm; int /*<<< orphan*/  lock; scalar_t__ basereachable; int /*<<< orphan*/  reachable; } ;
struct TYPE_3__ {struct ifnet* tqe_next; } ;
struct ifnet {TYPE_1__ if_link; } ;
struct TYPE_4__ {struct ifnet* tqh_first; } ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 scalar_t__ ND6_SLOWTIMER_INTERVAL ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 struct nd_ifinfo* FUNC1 (struct ifnet*) ; 
 scalar_t__ hz ; 
 TYPE_2__ ifnet_head ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ nd6_recalc_reachtm_interval ; 
 int /*<<< orphan*/  FUNC6 (void (*) (void*),int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static void
FUNC7(void *arg)
{
#pragma unused(arg)
	struct nd_ifinfo *nd6if = NULL;
	struct ifnet *ifp = NULL;

	FUNC3();
	for (ifp = ifnet_head.tqh_first; ifp;
	    ifp = ifp->if_link.tqe_next) {
		nd6if = FUNC1(ifp);
		if ((NULL == nd6if) || (FALSE == nd6if->initialized)) {
			continue;
		}

		FUNC4(&nd6if->lock);
		if (nd6if->basereachable && /* already initialized */
		    (nd6if->recalctm -= ND6_SLOWTIMER_INTERVAL) <= 0) {
			/*
			 * Since reachable time rarely changes by router
			 * advertisements, we SHOULD insure that a new random
			 * value gets recomputed at least once every few hours.
			 * (RFC 4861, 6.3.4)
			 */
			nd6if->recalctm = nd6_recalc_reachtm_interval;
			nd6if->reachable =
			    FUNC0(nd6if->basereachable);
		}
		FUNC5(&nd6if->lock);
	}
	FUNC2();
	FUNC6(nd6_slowtimo, NULL, ND6_SLOWTIMER_INTERVAL * hz);
}