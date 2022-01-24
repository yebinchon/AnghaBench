#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;
typedef  struct TYPE_16__   TYPE_14__ ;

/* Type definitions */
typedef  TYPE_1__* vlan_parent_ref ;
struct ifnet {int dummy; } ;
typedef  TYPE_2__* ifvlan_ref ;
struct TYPE_18__ {scalar_t__ ifv_flags; scalar_t__ ifv_mtufudge; int /*<<< orphan*/  ifv_multicast; TYPE_1__* ifv_vlp; struct ifnet* ifv_ifp; } ;
struct TYPE_17__ {int /*<<< orphan*/  vlp_vlan_list; struct ifnet* vlp_ifp; } ;
struct TYPE_16__ {scalar_t__ verbose; } ;

/* Variables and functions */
 scalar_t__ ETHERMTU ; 
 int FALSE ; 
 int /*<<< orphan*/  IFEF_VLAN ; 
 int IFF_BROADCAST ; 
 int IFF_MULTICAST ; 
 int IFF_RUNNING ; 
 int IFF_SIMPLEX ; 
 int /*<<< orphan*/  IFT_L2VLAN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int TRUE ; 
 TYPE_14__* g_vlan ; 
 TYPE_2__* FUNC3 (struct ifnet*) ; 
 char* FUNC4 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC5 (struct ifnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ifnet*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct ifnet*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct ifnet*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct ifnet*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct ifnet*) ; 
 int /*<<< orphan*/  ifv_vlan_list ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC24 () ; 
 int /*<<< orphan*/  vlp_parent_list ; 

__attribute__((used)) static int
FUNC25(ifvlan_ref ifv, int need_to_wait)
{
    struct ifnet *	ifp = ifv->ifv_ifp;
    int			last_vlan = FALSE;
    int			need_ifv_release = 0;
    int			need_vlp_release = 0;
    struct ifnet *	p;
    vlan_parent_ref	vlp;

    FUNC15();
    vlp = ifv->ifv_vlp;
    if (vlp == NULL) {
	return (0);
    }
    if (need_to_wait) {
	need_vlp_release++;
	FUNC21(vlp);
	FUNC23(vlp, "vlan_unconfig");

        /* check again because another thread could be in vlan_unconfig */
	if (ifv != FUNC3(ifp)) {
	    goto signal_done;
	}
	if (ifv->ifv_vlp != vlp) {
	    /* vlan parent changed */
	    goto signal_done;
	}
    }

    /* ifv has a reference on vlp, need to remove it */
    need_vlp_release++;
    p = vlp->vlp_ifp;

    /* remember whether we're the last VLAN on the parent */
    if (FUNC1(FUNC0(&vlp->vlp_vlan_list), ifv_vlan_list) == NULL) {
	if (g_vlan->verbose) {
	    FUNC14("vlan_unconfig: last vlan on %s%d\n",
		   FUNC4(p), FUNC10(p));
	}
	last_vlan = TRUE;
    }

    /* back-out any effect our mtu might have had on the parent */
    (void)FUNC11(ifv, ETHERMTU - ifv->ifv_mtufudge);

    FUNC24();

    /* un-join multicast on parent interface */
    (void)FUNC13(&ifv->ifv_multicast);

    /* Clear our MAC address. */
    FUNC7(ifp, NULL, 0, IFT_L2VLAN);

    /* detach VLAN "protocol" */
    if (last_vlan) {
	(void)FUNC16(p);
    }

    FUNC17();

    /* return to the state we were in before SIFVLAN */
    FUNC8(ifp, 0);
    FUNC6(ifp, 0, 
		    IFF_BROADCAST | IFF_MULTICAST | IFF_SIMPLEX | IFF_RUNNING);
    FUNC9(ifp, 0);
    ifv->ifv_mtufudge = 0;

    /* Disconnect from parent. */
    FUNC20(vlp, ifv);
    ifv->ifv_flags = 0;

    /* vlan_parent has reference to ifv, remove it */
    need_ifv_release++;

    /* from this point on, no more referencing ifv */
    if (last_vlan && !FUNC18(vlp)) {
	/* the vlan parent has no more VLAN's */
	FUNC5(p, 0, IFEF_VLAN);
	FUNC2(vlp, vlp_parent_list);

	/* one for being in the list */
	need_vlp_release++;

	/* release outside of the lock below */
	need_vlp_release++;
    }

 signal_done:
    if (need_to_wait) {
	FUNC22(vlp, "vlan_unconfig");
    }
    FUNC24();
    while (need_ifv_release--) {
	FUNC12(ifv);
    }
    while (need_vlp_release--) {	/* references to vlp */
	FUNC19(vlp);
    }
    FUNC17();
    return (0);
}