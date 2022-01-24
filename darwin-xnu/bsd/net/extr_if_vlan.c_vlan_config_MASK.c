#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_1__ ;
typedef  struct TYPE_11__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/ * vlan_parent_ref ;
typedef  int u_int16_t ;
struct ifnet {int /*<<< orphan*/  if_eflags; } ;
typedef  TYPE_1__* ifvlan_ref ;
typedef  int ifnet_offload_t ;
typedef  int /*<<< orphan*/  caddr_t ;
struct TYPE_12__ {scalar_t__ ifv_mtufudge; scalar_t__ ifv_encaplen; scalar_t__ ifv_flags; int /*<<< orphan*/  ifv_multicast; int /*<<< orphan*/ * ifv_vlp; } ;
struct TYPE_11__ {int /*<<< orphan*/  parent_list; } ;

/* Variables and functions */
 int EADDRINUSE ; 
 int EBUSY ; 
 int EINVAL ; 
 scalar_t__ ETHERMTU ; 
 int /*<<< orphan*/  ETHER_ADDR_LEN ; 
 scalar_t__ ETHER_VLAN_ENCAP_LEN ; 
 int FALSE ; 
 int IFEF_BOND ; 
 int /*<<< orphan*/  IFEF_VLAN ; 
 int IFF_BROADCAST ; 
 int IFF_MULTICAST ; 
 int IFF_RUNNING ; 
 int IFF_SIMPLEX ; 
 int IFF_UP ; 
 int IFNET_VLAN_MTU ; 
 int IFNET_VLAN_TAGGING ; 
 int /*<<< orphan*/  IFT_ETHER ; 
 int /*<<< orphan*/  FUNC0 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SIOCSIFFLAGS ; 
 int TRUE ; 
 TYPE_10__* g_vlan ; 
 int FUNC3 (struct ifnet*) ; 
 int FUNC4 (struct ifnet*) ; 
 TYPE_1__* FUNC5 (struct ifnet*) ; 
 TYPE_1__* FUNC6 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC7 (struct ifnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC9 (struct ifnet*) ; 
 int FUNC10 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC11 (struct ifnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct ifnet*,int,int) ; 
 int /*<<< orphan*/  FUNC13 (struct ifnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct ifnet*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (struct ifnet*,int) ; 
 scalar_t__ FUNC16 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_1__*) ; 
 int FUNC20 (int /*<<< orphan*/ *,struct ifnet*,struct ifnet*) ; 
 int /*<<< orphan*/ * FUNC21 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC22 () ; 
 int FUNC23 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC24 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC25 () ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *,TYPE_1__*,int) ; 
 int FUNC27 (struct ifnet*,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC28 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC29 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC30 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC31 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC35 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC36 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC37 () ; 
 int /*<<< orphan*/  vlp_parent_list ; 

__attribute__((used)) static int
FUNC38(struct ifnet * ifp, struct ifnet * p, int tag)
{
    int			error;
    int			first_vlan = FALSE;
    ifvlan_ref 		ifv = NULL;
    int			ifv_added = FALSE;
    int			need_vlp_release = 0;
    vlan_parent_ref	new_vlp = NULL;
    ifnet_offload_t	offload;
    u_int16_t		parent_flags;
    vlan_parent_ref	vlp = NULL;

    /* pre-allocate space for vlan_parent, in case we're first */
    error = FUNC27(p, &new_vlp);
    if (error != 0) {
	return (error);
    }

    FUNC25();
    ifv = FUNC6(ifp);
    if (ifv == NULL || ifv->ifv_vlp != NULL) {
	FUNC37();
	if (ifv != NULL) {
	    FUNC18(ifv);
	}
	FUNC32(new_vlp);
	return (EBUSY);
    }
    vlp = FUNC21(p);
    if (vlp != NULL) {
	FUNC34(vlp);
	need_vlp_release++;
	if (FUNC30(vlp, tag) != NULL) {
	    /* already a VLAN with that tag on this interface */
	    error = EADDRINUSE;
	    goto unlock_done;
	}
    }
    else {
	/* one for being in the list */
	FUNC34(new_vlp);

	/* we're the first VLAN on this interface */
	FUNC1(&g_vlan->parent_list, new_vlp, vlp_parent_list);
	vlp = new_vlp;

	FUNC34(vlp);
	need_vlp_release++;
    }

    /* need to wait to ensure no one else is trying to add/remove */
    FUNC36(vlp, "vlan_config");

    if (FUNC5(ifp) != ifv) {
	error = EINVAL;
	goto signal_done;
    }

    /* check again because someone might have gotten in */
    if (FUNC21(p) != vlp) {
	error = EBUSY;
	goto signal_done;
    }

    if (FUNC28(vlp)
	|| FUNC16(ifv) || ifv->ifv_vlp != NULL) {
	error = EBUSY;
	goto signal_done;
    }

    /* check again because someone might have gotten the tag */
    if (FUNC30(vlp, tag) != NULL) {
	/* already a VLAN with that tag on this interface */
	error = EADDRINUSE;
	goto signal_done;
    }

    if (FUNC31(vlp)) {
	first_vlan = TRUE;
    }
    FUNC26(vlp, ifv, tag);
    FUNC19(ifv);	/* parent references ifv */
    ifv_added = TRUE;

    /* check whether bond interface is using parent interface */
    FUNC9(p);
    if ((FUNC3(p) & IFEF_BOND) != 0) {
	FUNC8(p);
	/* don't allow VLAN over interface that's already part of a bond */
	error = EBUSY;
	goto signal_done;
    }
    /* prevent BOND interface from using it */
    /* Can't use ifnet_set_eflags because that would take the lock */
    p->if_eflags |= IFEF_VLAN;
    FUNC8(p);
    FUNC37();

    if (first_vlan) {
	/* attach our VLAN "protocol" to the interface */
	error = FUNC23(p);
	if (error) {
	    FUNC25();
	    goto signal_done;
	}
    }

    /* configure parent to receive our multicast addresses */
    error = FUNC20(&ifv->ifv_multicast, ifp, p);
    if (error != 0) {
	if (first_vlan) {
	    (void)FUNC24(p);
	}
	FUNC25();
	goto signal_done;
    }

    /* set our ethernet address to that of the parent */
    FUNC13(ifp, FUNC0(p), ETHER_ADDR_LEN, IFT_ETHER);

    /* no failures past this point */
    FUNC25();

    ifv->ifv_encaplen = ETHER_VLAN_ENCAP_LEN;
    ifv->ifv_flags = 0;
    if (FUNC29(vlp)) {
	ifv->ifv_mtufudge = 0;
    } else {
	/*
	 * Fudge the MTU by the encapsulation size.  This
	 * makes us incompatible with strictly compliant
	 * 802.1Q implementations, but allows us to use
	 * the feature with other NetBSD implementations,
	 * which might still be useful.
	 */
	ifv->ifv_mtufudge = ifv->ifv_encaplen;
    }
    FUNC14(ifp, ETHERMTU - ifv->ifv_mtufudge);

    /*
     * Copy only a selected subset of flags from the parent.
     * Other flags are none of our business.
     */
    parent_flags = FUNC4(p) 
	& (IFF_BROADCAST | IFF_MULTICAST | IFF_SIMPLEX);
    FUNC12(ifp, parent_flags,
		    IFF_BROADCAST | IFF_MULTICAST | IFF_SIMPLEX);

    /* use hwassist bits from parent interface, but exclude VLAN bits */
    offload = FUNC10(p) & ~(IFNET_VLAN_TAGGING | IFNET_VLAN_MTU);
    FUNC15(ifp, offload);

    FUNC12(ifp, IFF_RUNNING, IFF_RUNNING);
    FUNC17(ifv);
    FUNC35(vlp, "vlan_config");
    FUNC37();
    if (new_vlp != vlp) {
	/* throw it away, it wasn't needed */
	FUNC32(new_vlp);
    }
    if (ifv != NULL) {
	FUNC18(ifv);
    }
    if (first_vlan) {
	/* mark the parent interface up */
	FUNC12(p, IFF_UP, IFF_UP);
	(void)FUNC7(p, 0, SIOCSIFFLAGS, (caddr_t)NULL);
    }
    return 0;

 signal_done:
    FUNC22();

    if (ifv_added) {
	FUNC33(vlp, ifv);
	if (!FUNC28(vlp) && FUNC31(vlp)) {
	    /* the vlan parent has no more VLAN's */
	    FUNC11(p, 0, IFEF_VLAN);
	    FUNC2(vlp, vlp_parent_list);
	    /* release outside of the lock below */
	    need_vlp_release++;

	    /* one for being in the list */
	    need_vlp_release++;
	}
    }
    FUNC35(vlp, "vlan_config");

 unlock_done:
    FUNC37();

    while (need_vlp_release--) {
	FUNC32(vlp);
    }
    if (new_vlp != vlp) {
	FUNC32(new_vlp);
    }
    if (ifv != NULL) {
	if (ifv_added) {
	    FUNC18(ifv);
	}
	FUNC18(ifv);
    }
    return (error);
}