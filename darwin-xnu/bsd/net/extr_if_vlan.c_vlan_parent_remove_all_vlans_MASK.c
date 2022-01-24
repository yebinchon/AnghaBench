#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* vlan_parent_ref ;
struct ifnet {int dummy; } ;
typedef  TYPE_2__* ifvlan_ref ;
struct TYPE_16__ {struct ifnet* ifv_ifp; } ;
struct TYPE_15__ {int /*<<< orphan*/  vlp_vlan_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  IFEF_VLAN ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC4 (struct ifnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ifv_vlan_list ; 
 TYPE_1__* FUNC5 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,char*) ; 
 int FUNC13 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  vlp_parent_list ; 

__attribute__((used)) static void
FUNC15(struct ifnet * p)
{
    ifvlan_ref 		ifv;
    int			need_vlp_release = 0;
    ifvlan_ref		next;
    vlan_parent_ref	vlp;

    FUNC6();
    vlp = FUNC5(p);
    if (vlp == NULL || FUNC7(vlp)) {
	/* no VLAN's */
	FUNC14();
	return;
    }
    FUNC8(vlp);
    FUNC10(vlp);
    FUNC12(vlp, "vlan_parent_remove_all_vlans");
    need_vlp_release++;

    /* check again */
    if (FUNC5(p) != vlp) {
	goto signal_done;
    }

    for (ifv = FUNC0(&vlp->vlp_vlan_list); ifv != NULL; ifv = next) {
	struct ifnet *	ifp = ifv->ifv_ifp;
	int		removed;

	next = FUNC1(ifv, ifv_vlan_list);
	removed = FUNC13(ifv, FALSE);
	if (removed) {
	    FUNC14();
	    FUNC3(ifp);
	    FUNC6();
	}
    }

    /* the vlan parent has no more VLAN's */
    FUNC4(p, 0, IFEF_VLAN); /* clear IFEF_VLAN */

    FUNC2(vlp, vlp_parent_list);
    need_vlp_release++;	/* one for being in the list */
    need_vlp_release++; /* final reference */

 signal_done:
    FUNC11(vlp, "vlan_parent_remove_all_vlans");
    FUNC14();

    while (need_vlp_release--) {
	FUNC9(vlp);
    }
    return;
}