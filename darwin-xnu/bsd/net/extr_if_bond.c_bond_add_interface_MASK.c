#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_3__ ;
typedef  struct TYPE_24__   TYPE_2__ ;
typedef  struct TYPE_23__   TYPE_1__ ;

/* Type definitions */
struct ifnet {int if_eflags; } ;
struct ether_addr {int dummy; } ;
typedef  int ifnet_offload_t ;
typedef  TYPE_2__* ifbond_ref ;
typedef  TYPE_3__* bondport_ref ;
struct TYPE_23__ {int ifdm_max; int ifdm_min; int ifdm_current; } ;
struct TYPE_25__ {int po_enabled; TYPE_1__ po_devmtu; struct ether_addr const po_saved_addr; int /*<<< orphan*/  po_media_info; int /*<<< orphan*/  po_multicast; TYPE_2__* po_bond; } ;
struct TYPE_24__ {char* ifb_name; int ifb_port_count; int ifb_distributing_count; scalar_t__ ifb_mode; int ifb_last_link_event; scalar_t__ ifb_altmtu; int /*<<< orphan*/  ifb_port_list; int /*<<< orphan*/ * ifb_active_lag; TYPE_3__** ifb_distributing_array; } ;

/* Variables and functions */
 int BOND_ADD_PROGRESS_IN_LIST ; 
 int BOND_ADD_PROGRESS_LLADDR_SET ; 
 int BOND_ADD_PROGRESS_MTU_SET ; 
 int BOND_ADD_PROGRESS_PROTO_ATTACHED ; 
 int EBUSY ; 
 int EINVAL ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  ETHERMTU ; 
 int /*<<< orphan*/  ETHER_ADDR_LEN ; 
 int FALSE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__**,int /*<<< orphan*/ ) ; 
 int IFEF_BOND ; 
 int IFEF_VLAN ; 
 int /*<<< orphan*/  IFF_RUNNING ; 
 int /*<<< orphan*/  IFF_UP ; 
 scalar_t__ FUNC1 (struct ifnet*) ; 
 int /*<<< orphan*/  IFT_ETHER ; 
 int /*<<< orphan*/  IFT_IEEE8023ADLAG ; 
 scalar_t__ IF_BOND_MODE_LACP ; 
 int /*<<< orphan*/ * FUNC2 (struct ifnet*) ; 
 int KEV_DL_LINK_OFF ; 
 int KEV_DL_LINK_ON ; 
 int /*<<< orphan*/  M_BOND ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  SIOCSIFFLAGS ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int TRUE ; 
 scalar_t__ FUNC6 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__**,TYPE_3__**,int) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int FUNC9 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC10 (struct ifnet*) ; 
 int FUNC11 (struct ifnet*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/ * FUNC13 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 TYPE_3__* FUNC15 (struct ifnet*,int,int,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_3__*) ; 
 char* FUNC19 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC21 (struct ether_addr const*,int /*<<< orphan*/ *) ; 
 int FUNC22 (struct ifnet*,struct ether_addr const*) ; 
 scalar_t__ FUNC23 (TYPE_2__*) ; 
 int FUNC24 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC26 (TYPE_2__*) ; 
 scalar_t__ FUNC27 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC28 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC29 (TYPE_2__*,char*) ; 
 int FUNC30 (struct ifnet*) ; 
 int FUNC31 (struct ifnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC32 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC33 (struct ifnet*) ; 
 scalar_t__ FUNC34 (struct ifnet*) ; 
 int FUNC35 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC36 (struct ifnet*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC37 (struct ifnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC38 (struct ifnet*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC39 (struct ifnet*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC40 (struct ifnet*,int) ; 
 scalar_t__ FUNC41 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC42 (struct ifnet*,int) ; 
 scalar_t__ FUNC43 (int /*<<< orphan*/ *) ; 
 int FUNC44 (int /*<<< orphan*/ *,struct ifnet*,struct ifnet*) ; 
 int /*<<< orphan*/  po_port_list ; 
 int /*<<< orphan*/  FUNC45 (char*,char*,...) ; 
 int FUNC46 (struct ifnet*,int) ; 

__attribute__((used)) static int
FUNC47(struct ifnet * ifp, struct ifnet * port_ifp)
{
    int				devmtu;
    int				error = 0;
    int				event_code = 0;
    int				first = FALSE;
    ifbond_ref			ifb;
    bondport_ref *		new_array = NULL;
    bondport_ref *		old_array = NULL;
    bondport_ref 		p;
    int				progress = 0;

    if (FUNC1(port_ifp)) {
	return (EINVAL);
    }

    /* pre-allocate space for new port */
    p = FUNC15(port_ifp, 0x8000, 1, 0, &error);
    if (p == NULL) {
	return (error);
    }
    FUNC12();
    ifb = (ifbond_ref)FUNC41(ifp);
    if (ifb == NULL || FUNC23(ifb)) {
	FUNC14();
	FUNC18(p);
	return ((ifb == NULL ? EOPNOTSUPP : EBUSY));
    }

    /* make sure this interface can handle our current MTU */
    devmtu = FUNC11(ifp, ifb);
    if (devmtu != 0 
	&& (devmtu > p->po_devmtu.ifdm_max || devmtu < p->po_devmtu.ifdm_min)) {
	FUNC14();
	FUNC45("if_bond: interface %s doesn't support mtu %d",
	       FUNC19(p), devmtu);
	FUNC18(p);
	return (EINVAL);
    }

    /* make sure ifb doesn't get de-allocated while we wait */
    FUNC26(ifb);

    /* wait for other add or remove to complete */
    FUNC29(ifb, "bond_add_interface");

    if (FUNC23(ifb)) {
	/* someone destroyed the bond while we were waiting */
	error = EBUSY;
	goto signal_done;
    }
    if (FUNC13(port_ifp) != NULL) {
	/* port is already part of a bond */
	error = EBUSY;
	goto signal_done;
    }
    FUNC33(port_ifp);
    if ((FUNC30(port_ifp) & (IFEF_VLAN | IFEF_BOND)) != 0) {
	/* interface already has VLAN's, or is part of bond */
	FUNC32(port_ifp);
	error = EBUSY;
	goto signal_done;
    }

    /* mark the interface busy */
    /* can't use ifnet_set_eflags because that takes the lock */
    port_ifp->if_eflags |= IFEF_BOND;
    FUNC32(port_ifp);

    if (FUNC3(&ifb->ifb_port_list)) {
	FUNC40(ifp, FUNC35(port_ifp));
	FUNC37(ifp, IFF_RUNNING, IFF_RUNNING);
	if (FUNC24(ifb) == FALSE) {
	    first = TRUE;
	}
    } else {
	ifnet_offload_t		ifp_offload;
	ifnet_offload_t		port_ifp_offload;

	ifp_offload = FUNC35(ifp);
	port_ifp_offload = FUNC35(port_ifp);
	if (ifp_offload != port_ifp_offload) {
	    ifnet_offload_t	offload;

	    offload = ifp_offload & port_ifp_offload;
	    FUNC45("bond_add_interface(%s, %s)  "
		   "hwassist values don't match 0x%x != 0x%x, using 0x%x instead\n",
		   ifb->ifb_name, FUNC19(p),
		   ifp_offload, port_ifp_offload, offload);
	    /*
	     * XXX
	     * if the bond has VLAN's, we can't simply change the hwassist
	     * field behind its back: this needs work
	     */
	    FUNC40(ifp, offload);
	}
    }
    p->po_bond = ifb;

    /* remember the port's ethernet address so it can be restored */
    FUNC21(&p->po_saved_addr, FUNC2(port_ifp));

    /* add it to the list of ports */
    FUNC4(&ifb->ifb_port_list, p, po_port_list);
    ifb->ifb_port_count++;

    /* set the default MTU */
    if (FUNC34(ifp) == 0) {
	FUNC39(ifp, ETHERMTU);
    }
    FUNC14();


    /* first port added to bond determines bond's ethernet address */
    if (first) {
	FUNC38(ifp, FUNC2(port_ifp), ETHER_ADDR_LEN,
				  IFT_ETHER);
    }

    progress |= BOND_ADD_PROGRESS_IN_LIST;

    /* allocate a larger distributing array */
    new_array = (bondport_ref *)
	FUNC6(sizeof(*new_array) * ifb->ifb_port_count, M_BOND, M_WAITOK);
    if (new_array == NULL) {
	error = ENOMEM;
	goto failed;
    }

    /* attach our BOND "protocol" to the interface */
    error = FUNC9(port_ifp);
    if (error) {
	goto failed;
    }
    progress |= BOND_ADD_PROGRESS_PROTO_ATTACHED;

    /* set the interface MTU */
    devmtu = FUNC11(ifp, ifb);
    error = FUNC46(port_ifp, devmtu);
    if (error != 0) {
	FUNC45("bond_add_interface(%s, %s):"
	       " SIOCSIFMTU %d failed %d\n", 
	       ifb->ifb_name, FUNC19(p), devmtu, error);
	goto failed;
    }
    progress |= BOND_ADD_PROGRESS_MTU_SET;

    /* program the port with our multicast addresses */
    error = FUNC44(&p->po_multicast, ifp, port_ifp);
    if (error) {
	FUNC45("bond_add_interface(%s, %s):"
	       " multicast_list_program failed %d\n", 
	       ifb->ifb_name, FUNC19(p), error);
	goto failed;
    }

    /* mark the interface up */
    FUNC37(port_ifp, IFF_UP, IFF_UP);

    error = FUNC31(port_ifp, 0, SIOCSIFFLAGS, NULL);
    if (error != 0) {
	FUNC45("bond_add_interface(%s, %s): SIOCSIFFLAGS failed %d\n", 
	       ifb->ifb_name, FUNC19(p), error);
	goto failed;
    }

    /* re-program the port's ethernet address */
    error = FUNC22(port_ifp, 
			 (const struct ether_addr *)FUNC2(ifp));
    if (error != 0) {
	/* port doesn't support setting the link address */
	FUNC45("bond_add_interface(%s, %s): if_siflladdr failed %d\n", 
	       ifb->ifb_name, FUNC19(p), error);
	goto failed;
    }
    progress |= BOND_ADD_PROGRESS_LLADDR_SET;

    FUNC12();

    /* no failures past this point */
    p->po_enabled = 1;

    /* copy the contents of the existing distributing array */
    if (ifb->ifb_distributing_count) {
	FUNC7(ifb->ifb_distributing_array, new_array, 
	      sizeof(*new_array) * ifb->ifb_distributing_count);
    }
    old_array = ifb->ifb_distributing_array;
    ifb->ifb_distributing_array = new_array;

    if (ifb->ifb_mode == IF_BOND_MODE_LACP) {
	FUNC20(p);

	/* check if we need to generate a link status event */
	if (FUNC27(ifb)) {
	    event_code = (ifb->ifb_active_lag == NULL) 
		? KEV_DL_LINK_OFF 
		: KEV_DL_LINK_ON;
	    ifb->ifb_last_link_event = event_code;
	}
    }
    else {
	/* are we adding the first distributing interface? */
	if (FUNC43(&p->po_media_info)) {
	    if (ifb->ifb_distributing_count == 0) {
		ifb->ifb_last_link_event = event_code = KEV_DL_LINK_ON;
	    }
	    FUNC17(p);
	}
	else {
	    FUNC16(p);
	}
    }
    /* clear the busy state, and wakeup anyone waiting */
    FUNC28(ifb, "bond_add_interface");
    FUNC14();
    if (event_code != 0) {
	FUNC42(ifp, event_code);
    }
    if (old_array != NULL) {
	FUNC0(old_array, M_BOND);
    }
    return 0;

 failed:
    FUNC8();

    /* if this was the first port to be added, clear our address */
    if (first) {
	FUNC38(ifp, NULL, 0, IFT_IEEE8023ADLAG);
    }

    if (new_array != NULL) {
	FUNC0(new_array, M_BOND);
    }
    if ((progress & BOND_ADD_PROGRESS_LLADDR_SET) != 0) {
	int	error1;

	error1 = FUNC22(port_ifp, &p->po_saved_addr);
	if (error1 != 0) {
	    FUNC45("bond_add_interface(%s, %s): if_siflladdr failed %d\n", 
		   ifb->ifb_name, FUNC19(p), error1);
	}
    }
    if ((progress & BOND_ADD_PROGRESS_PROTO_ATTACHED) != 0) {
	(void)FUNC10(port_ifp);
    }
    if ((progress & BOND_ADD_PROGRESS_MTU_SET) != 0) {
	int error1;

	error1 = FUNC46(port_ifp, p->po_devmtu.ifdm_current);
	if (error1 != 0) {
	    FUNC45("bond_add_interface(%s, %s): SIOCSIFMTU %d failed %d\n", 
		   ifb->ifb_name, FUNC19(p),
		   p->po_devmtu.ifdm_current, error1);
	}
    }
    FUNC12();
    if ((progress & BOND_ADD_PROGRESS_IN_LIST) != 0) {
	FUNC5(&ifb->ifb_port_list, p, po_port_list);
	ifb->ifb_port_count--;
    }
    FUNC36(ifp, 0, IFEF_BOND);
    if (FUNC3(&ifb->ifb_port_list)) {
	ifb->ifb_altmtu = 0;
	FUNC39(ifp, 0);
	FUNC40(ifp, 0);
    }

 signal_done:
    FUNC28(ifb, "bond_add_interface");
    FUNC14();
    FUNC25(ifb);
    FUNC18(p);
    return (error);
}