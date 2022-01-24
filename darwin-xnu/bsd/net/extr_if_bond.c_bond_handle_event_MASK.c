#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct media_info {int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct ifnet {int dummy; } ;
typedef  TYPE_1__* ifbond_ref ;
typedef  TYPE_2__* bondport_ref ;
struct TYPE_10__ {scalar_t__ verbose; } ;
struct TYPE_9__ {int /*<<< orphan*/  po_enabled; struct media_info po_media_info; int /*<<< orphan*/  po_ifp; TYPE_1__* po_bond; } ;
struct TYPE_8__ {int ifb_distributing_count; scalar_t__ ifb_mode; int ifb_last_link_event; struct ifnet* ifb_ifp; int /*<<< orphan*/  ifb_name; int /*<<< orphan*/ * ifb_active_lag; } ;

/* Variables and functions */
 scalar_t__ IF_BOND_MODE_LACP ; 
#define  KEV_DL_IF_DETACHED 130 
#define  KEV_DL_LINK_OFF 129 
#define  KEV_DL_LINK_ON 128 
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_2__* FUNC1 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 TYPE_4__* g_bond ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (struct ifnet*,int) ; 
 struct media_info FUNC7 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(struct ifnet * port_ifp, int event_code)
{
    struct ifnet *	bond_ifp = NULL;
    ifbond_ref		ifb;
    int			old_distributing_count;
    bondport_ref	p;
    struct media_info	media_info = { 0, 0};

    switch (event_code) {
    case KEV_DL_IF_DETACHED:
	break;
    case KEV_DL_LINK_OFF:
    case KEV_DL_LINK_ON:
	media_info = FUNC7(port_ifp);
	break;
    default:
	return;
    }
    FUNC0();
    p = FUNC1(port_ifp);
    if (p == NULL) {
	FUNC3();
	return;
    }
    ifb = p->po_bond;
    old_distributing_count = ifb->ifb_distributing_count;
    switch (event_code) {
    case KEV_DL_IF_DETACHED:
	FUNC2(ifb, p->po_ifp);
	break;
    case KEV_DL_LINK_OFF:
    case KEV_DL_LINK_ON:
	p->po_media_info = media_info;
	if (p->po_enabled) {
	    FUNC4(p);
	}
	break;
    }
    /* generate a link-event */
    if (ifb->ifb_mode == IF_BOND_MODE_LACP) {
	if (FUNC5(ifb)) {
	    event_code = (ifb->ifb_active_lag == NULL) 
		? KEV_DL_LINK_OFF 
		: KEV_DL_LINK_ON;
	    /* XXX need to take a reference on bond_ifp */
	    bond_ifp = ifb->ifb_ifp;
	    ifb->ifb_last_link_event = event_code;
	}
	else {
	    event_code = (ifb->ifb_active_lag == NULL) 
		? KEV_DL_LINK_OFF 
		: KEV_DL_LINK_ON;
	    if (event_code != ifb->ifb_last_link_event) {
		if (g_bond->verbose) {
		    FUNC8("%s: (event) generating LINK event\n",
				     ifb->ifb_name);
		}
		bond_ifp = ifb->ifb_ifp;
		ifb->ifb_last_link_event = event_code;
	    }
	}
    }
    else {
	/*
	 * if the distributing array membership changed from 0 <-> !0
	 * generate a link event
	 */
	if (old_distributing_count == 0 
	    && ifb->ifb_distributing_count != 0) {
	    event_code = KEV_DL_LINK_ON;
	}
	else if (old_distributing_count != 0 
		 && ifb->ifb_distributing_count == 0) {
	    event_code = KEV_DL_LINK_OFF;
	}
	if (event_code != 0 && event_code != ifb->ifb_last_link_event) {
	    bond_ifp = ifb->ifb_ifp;
	    ifb->ifb_last_link_event = event_code;
	}
    }

    FUNC3();
    if (bond_ifp != NULL) {
	FUNC6(bond_ifp, event_code);
    }
    return;
}