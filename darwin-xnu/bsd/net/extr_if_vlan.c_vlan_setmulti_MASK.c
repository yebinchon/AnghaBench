#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* vlan_parent_ref ;
struct ifnet {int dummy; } ;
typedef  TYPE_2__* ifvlan_ref ;
struct TYPE_13__ {int /*<<< orphan*/  ifv_multicast; } ;
struct TYPE_12__ {struct ifnet* vlp_ifp; } ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 TYPE_2__* FUNC0 (struct ifnet*) ; 
 scalar_t__ FUNC1 (struct ifnet*,TYPE_2__*,TYPE_1__*) ; 
 TYPE_1__* FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int FUNC4 (int /*<<< orphan*/ *,struct ifnet*,struct ifnet*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC9 () ; 

__attribute__((used)) static int
FUNC10(struct ifnet * ifp)
{
    int			error = 0;
    ifvlan_ref 		ifv;
    struct ifnet *	p;
    vlan_parent_ref	vlp = NULL;

    FUNC5();
    ifv = FUNC0(ifp);
    if (ifv == NULL) {
	goto unlock_done;
    }
    vlp = FUNC2(ifv);
    if (vlp == NULL) {
	/* no parent, no need to program the multicast filter */
	goto unlock_done;
    }
    FUNC8(vlp, "vlan_setmulti");

    /* check again, things could have changed */
    if (FUNC1(ifp, ifv, vlp) == FALSE) {
	goto signal_done;
    }
    p = vlp->vlp_ifp;
    FUNC9();

    /* update parent interface with our multicast addresses */
    error = FUNC4(&ifv->ifv_multicast, ifp, p);

    FUNC5();

 signal_done:
    FUNC7(vlp, "vlan_setmulti");

 unlock_done:
    FUNC9();
    if (ifv != NULL) {
	FUNC3(ifv);
    }
    if (vlp != NULL) {
	FUNC6(vlp);
    }
    return (error);
}