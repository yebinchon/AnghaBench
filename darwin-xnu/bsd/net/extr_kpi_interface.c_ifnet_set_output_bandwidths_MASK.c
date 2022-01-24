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
typedef  int u_int64_t ;
struct if_bandwidths {scalar_t__ eff_bw; scalar_t__ max_bw; } ;
struct TYPE_2__ {int /*<<< orphan*/  max_bw; } ;
struct ifclassq {int dummy; } ;
struct ifnet {int if_baudrate; int /*<<< orphan*/  if_link_status_lock; int /*<<< orphan*/ * if_link_status; struct if_bandwidths if_output_bw; TYPE_1__ if_input_bw; struct ifclassq if_snd; } ;
typedef  int /*<<< orphan*/  errno_t ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  CLASSQ_EV_LINK_BANDWIDTH ; 
 int /*<<< orphan*/  FUNC0 (struct ifclassq*) ; 
 int /*<<< orphan*/  FUNC1 (struct ifclassq*) ; 
 int /*<<< orphan*/  FUNC2 (struct ifclassq*) ; 
 scalar_t__ FUNC3 (struct ifnet*) ; 
 int FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC7 (struct ifclassq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

errno_t
FUNC10(struct ifnet *ifp, struct if_bandwidths *bw,
    boolean_t locked)
{
	struct if_bandwidths old_bw;
	struct ifclassq *ifq;
	u_int64_t br;

	FUNC5(ifp != NULL && bw != NULL);

	ifq = &ifp->if_snd;
	if (!locked)
		FUNC0(ifq);
	FUNC1(ifq);

	old_bw = ifp->if_output_bw;
	if (bw->eff_bw != 0)
		ifp->if_output_bw.eff_bw = bw->eff_bw;
	if (bw->max_bw != 0)
		ifp->if_output_bw.max_bw = bw->max_bw;
	if (ifp->if_output_bw.eff_bw > ifp->if_output_bw.max_bw)
		ifp->if_output_bw.max_bw = ifp->if_output_bw.eff_bw;
	else if (ifp->if_output_bw.eff_bw == 0)
		ifp->if_output_bw.eff_bw = ifp->if_output_bw.max_bw;

	/* Pin if_baudrate to 32 bits */
	br = FUNC4(ifp->if_output_bw.max_bw, ifp->if_input_bw.max_bw);
	if (br != 0)
		ifp->if_baudrate = (br > 0xFFFFFFFF) ? 0xFFFFFFFF : br;

	/* Adjust queue parameters if needed */
	if (old_bw.eff_bw != ifp->if_output_bw.eff_bw ||
	    old_bw.max_bw != ifp->if_output_bw.max_bw)
		FUNC7(ifq, CLASSQ_EV_LINK_BANDWIDTH);

	if (!locked)
		FUNC2(ifq);

	/*
	 * If this is a Wifi interface, update the values in
	 * if_link_status structure also.
	 */
	if (FUNC3(ifp) && ifp->if_link_status != NULL) {
		FUNC9(&ifp->if_link_status_lock);
		FUNC6(ifp);
		FUNC8(&ifp->if_link_status_lock);
	}

	return (0);
}