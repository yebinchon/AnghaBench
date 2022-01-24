#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct ifnet {int dummy; } ;
typedef  TYPE_1__* ifbond_ref ;
struct TYPE_10__ {int ifb_mode; scalar_t__ ifb_distributing_count; int ifb_last_link_event; int /*<<< orphan*/ * ifb_active_lag; } ;

/* Variables and functions */
 int EBUSY ; 
 int EOPNOTSUPP ; 
 int IF_BOND_MODE_LACP ; 
 int KEV_DL_LINK_OFF ; 
 int KEV_DL_LINK_ON ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 scalar_t__ FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,char*) ; 
 scalar_t__ FUNC10 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC11 (struct ifnet*,int) ; 

__attribute__((used)) static int
FUNC12(struct ifnet * ifp, int mode)
{
    int				error = 0;
    int				event_code = 0;
    ifbond_ref			ifb;

    FUNC0();
    ifb = (ifbond_ref)FUNC10(ifp);
    if (ifb == NULL || FUNC4(ifb)) {
	FUNC3();
	return ((ifb == NULL) ? EOPNOTSUPP : EBUSY);
    }
    if (ifb->ifb_mode == mode) {
	FUNC3();
	return (0);
    }

    FUNC6(ifb);
    FUNC9(ifb, "bond_set_mode");

    /* verify (again) that the mode is actually different */
    if (ifb->ifb_mode == mode) {
	/* nothing to do */
	goto signal_done;
    }

    ifb->ifb_mode = mode;
    if (mode == IF_BOND_MODE_LACP) {
	FUNC1(ifb);
	
	/* check if we need to generate a link status event */
	if (FUNC7(ifb)) {
	    event_code = (ifb->ifb_active_lag == NULL) 
		? KEV_DL_LINK_OFF 
		: KEV_DL_LINK_ON;
	}
    } else {
	FUNC2(ifb);
	event_code = (ifb->ifb_distributing_count == 0) 
	    ? KEV_DL_LINK_OFF 
	    : KEV_DL_LINK_ON;
    }
    ifb->ifb_last_link_event = event_code;

 signal_done:
    FUNC8(ifb, "bond_set_mode");
    FUNC3();
    FUNC5(ifb);

    if (event_code != 0) {
	FUNC11(ifp, event_code);
    }
    return (error);
}