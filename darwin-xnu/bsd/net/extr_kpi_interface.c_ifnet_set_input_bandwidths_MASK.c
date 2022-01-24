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
struct if_bandwidths {scalar_t__ eff_bw; scalar_t__ max_bw; } ;
struct ifnet {struct if_bandwidths if_input_bw; int /*<<< orphan*/  if_link_status_lock; int /*<<< orphan*/ * if_link_status; } ;
typedef  int /*<<< orphan*/  errno_t ;

/* Variables and functions */
 int /*<<< orphan*/  CLASSQ_EV_LINK_BANDWIDTH ; 
 scalar_t__ FUNC0 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC3 (struct ifnet*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

errno_t
FUNC6(struct ifnet *ifp, struct if_bandwidths *bw)
{
	struct if_bandwidths old_bw;

	FUNC1(ifp != NULL && bw != NULL);

	old_bw = ifp->if_input_bw;
	if (bw->eff_bw != 0)
		ifp->if_input_bw.eff_bw = bw->eff_bw;
	if (bw->max_bw != 0)
		ifp->if_input_bw.max_bw = bw->max_bw;
	if (ifp->if_input_bw.eff_bw > ifp->if_input_bw.max_bw)
		ifp->if_input_bw.max_bw = ifp->if_input_bw.eff_bw;
	else if (ifp->if_input_bw.eff_bw == 0)
		ifp->if_input_bw.eff_bw = ifp->if_input_bw.max_bw;

	if (FUNC0(ifp) && ifp->if_link_status != NULL) {
		FUNC5(&ifp->if_link_status_lock);
		FUNC2(ifp);
		FUNC4(&ifp->if_link_status_lock);
	}

	if (old_bw.eff_bw != ifp->if_input_bw.eff_bw ||
	    old_bw.max_bw != ifp->if_input_bw.max_bw)
		FUNC3(ifp, CLASSQ_EV_LINK_BANDWIDTH);

	return (0);
}