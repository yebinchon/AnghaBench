#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct ifnet {int dummy; } ;
typedef  int /*<<< orphan*/  devtimer_ref ;
typedef  int devtimer_process_func_event ;
typedef  TYPE_1__* bondport_ref ;
struct TYPE_6__ {int /*<<< orphan*/  verbose; } ;
struct TYPE_5__ {int ifb_last_link_event; struct ifnet* ifb_ifp; int /*<<< orphan*/  ifb_name; int /*<<< orphan*/ * ifb_active_lag; } ;
struct TYPE_4__ {TYPE_2__* po_bond; } ;

/* Variables and functions */
 int KEV_DL_LINK_OFF ; 
 int KEV_DL_LINK_ON ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
#define  devtimer_process_func_event_lock 129 
#define  devtimer_process_func_event_unlock 128 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_3__* g_bond ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (struct ifnet*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(devtimer_ref timer, 
			    devtimer_process_func_event event)
{
    bondport_ref	p;

    switch (event) {
    case devtimer_process_func_event_lock:
	FUNC0();
	FUNC4(timer);
	break;
    case devtimer_process_func_event_unlock:
	if (FUNC5(timer)) {
	    /* as long as the devtimer is valid, we can look at arg0 */
	    int			event_code = 0;
	    struct ifnet *	bond_ifp = NULL;

	    p = (bondport_ref)FUNC2(timer);
	    if (FUNC6(p->po_bond)) {
		event_code = (p->po_bond->ifb_active_lag == NULL) 
		    ? KEV_DL_LINK_OFF 
		    : KEV_DL_LINK_ON;
		/* XXX need to take a reference on bond_ifp */
		bond_ifp = p->po_bond->ifb_ifp;
		p->po_bond->ifb_last_link_event = event_code;
	    }
	    else {
		event_code = (p->po_bond->ifb_active_lag == NULL) 
		    ? KEV_DL_LINK_OFF 
		    : KEV_DL_LINK_ON;
		if (event_code != p->po_bond->ifb_last_link_event) {
		    if (g_bond->verbose) {
			FUNC8("%s: (timer) generating LINK event\n",
					 p->po_bond->ifb_name);
		    }
		    bond_ifp = p->po_bond->ifb_ifp;
		    p->po_bond->ifb_last_link_event = event_code;
		}
	    }
	    FUNC3(timer);
	    FUNC1();
	    if (bond_ifp != NULL) {
		FUNC7(bond_ifp, event_code);
	    }
	}
	else {
	    /* timer is going away */
	    FUNC3(timer);
	    FUNC1();
	}
	break;
    default:
	break;
    }
}