#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_8__ ;
typedef  struct TYPE_18__   TYPE_6__ ;
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  user_addr_t ;
typedef  int u_long ;
struct TYPE_16__ {int /*<<< orphan*/  ifdm_max; int /*<<< orphan*/  ifdm_min; int /*<<< orphan*/  ifdm_current; } ;
struct ifreq {int /*<<< orphan*/  ifr_data; int /*<<< orphan*/  ifr_data64; int /*<<< orphan*/  ifr_mtu; TYPE_4__ ifr_devmtu; } ;
struct ifnet {int dummy; } ;
struct ifmediareq64 {int /*<<< orphan*/  ifmu_ulist; } ;
struct ifmediareq32 {int /*<<< orphan*/  ifmu_ulist; } ;
struct ifmediareq {int ifm_count; void* ifm_current; int /*<<< orphan*/  ifm_status; void* ifm_active; int /*<<< orphan*/  ifm_mask; } ;
struct ifaddr {int dummy; } ;
struct TYPE_17__ {int /*<<< orphan*/  ibru_int_val; int /*<<< orphan*/  ibru_if_name; } ;
struct if_bond_req {int /*<<< orphan*/  ibr_op; TYPE_5__ ibr_ibru; } ;
typedef  TYPE_6__* ifbond_ref ;
typedef  int /*<<< orphan*/  ibr ;
struct TYPE_19__ {int /*<<< orphan*/  verbose; } ;
struct TYPE_18__ {int ifb_mode; int /*<<< orphan*/  ifb_altmtu; TYPE_3__** ifb_distributing_array; int /*<<< orphan*/  ifb_distributing_count; TYPE_1__* ifb_active_lag; } ;
struct TYPE_14__ {void* mi_active; } ;
struct TYPE_15__ {TYPE_2__ po_media_info; } ;
struct TYPE_13__ {void* lag_active_media; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EBUSY ; 
 int EINVAL ; 
 int ENXIO ; 
 int EOPNOTSUPP ; 
 int EPROTONOSUPPORT ; 
 int /*<<< orphan*/  IFF_UP ; 
 int /*<<< orphan*/  IFM_ACTIVE ; 
 int /*<<< orphan*/  IFM_AVALID ; 
 void* IFM_ETHER ; 
 scalar_t__ IFT_ETHER ; 
 scalar_t__ IFT_IEEE8023ADLAG ; 
#define  IF_BOND_MODE_LACP 148 
#define  IF_BOND_MODE_STATIC 147 
#define  IF_BOND_OP_ADD_INTERFACE 146 
#define  IF_BOND_OP_GET_STATUS 145 
#define  IF_BOND_OP_REMOVE_INTERFACE 144 
#define  IF_BOND_OP_SET_MODE 143 
#define  IF_BOND_OP_SET_VERBOSE 142 
#define  SIOCADDMULTI 141 
#define  SIOCDELMULTI 140 
#define  SIOCGIFALTMTU 139 
#define  SIOCGIFBOND 138 
#define  SIOCGIFDEVMTU 137 
#define  SIOCGIFMEDIA32 136 
#define  SIOCGIFMEDIA64 135 
#define  SIOCSIFADDR 134 
#define  SIOCSIFALTMTU 133 
#define  SIOCSIFBOND 132 
#define  SIOCSIFFLAGS 131 
#define  SIOCSIFLLADDR 130 
#define  SIOCSIFMEDIA 129 
#define  SIOCSIFMTU 128 
 int /*<<< orphan*/  USER_ADDR_NULL ; 
 int FUNC1 (struct ifnet*,struct ifnet*) ; 
 int /*<<< orphan*/  FUNC2 (struct ifnet*,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (TYPE_6__*,struct if_bond_req*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 (TYPE_6__*,struct ifnet*) ; 
 int FUNC7 (struct ifnet*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct ifnet*,int /*<<< orphan*/ ,int) ; 
 int FUNC9 (struct ifnet*) ; 
 int FUNC10 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int FUNC12 (int /*<<< orphan*/ ,struct if_bond_req*,int) ; 
 int FUNC13 (void**,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 TYPE_8__* g_bond ; 
 int /*<<< orphan*/  FUNC15 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC16 (struct ifnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct ifnet*) ; 
 scalar_t__ FUNC18 (struct ifnet*) ; 
 struct ifnet* FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC21(struct ifnet *ifp, u_long cmd, void * data)
{
    int 		error = 0;
    struct if_bond_req	ibr;
    struct ifaddr *	ifa;
    ifbond_ref		ifb;
    struct ifreq *	ifr;
    struct ifmediareq	*ifmr;
    struct ifnet *	port_ifp = NULL;
    user_addr_t		user_addr;

    if (FUNC18(ifp) != IFT_IEEE8023ADLAG) {
	return (EOPNOTSUPP);
    }
    ifr = (struct ifreq *)data;
    ifa = (struct ifaddr *)data;

    switch (cmd) {
    case SIOCSIFADDR:
	FUNC16(ifp, IFF_UP, IFF_UP);
	break;

    case SIOCGIFMEDIA32:
    case SIOCGIFMEDIA64:
	FUNC5();
	ifb = (ifbond_ref)FUNC17(ifp);
	if (ifb == NULL || FUNC15(ifb)) {
	    FUNC11();
	    return (ifb == NULL ? EOPNOTSUPP : EBUSY);
	}
	ifmr = (struct ifmediareq *)data;
	ifmr->ifm_current = IFM_ETHER;
	ifmr->ifm_mask = 0;
	ifmr->ifm_status = IFM_AVALID;
	ifmr->ifm_active = IFM_ETHER;
	ifmr->ifm_count = 1;
	if (ifb->ifb_mode == IF_BOND_MODE_LACP) {
	    if (ifb->ifb_active_lag != NULL) {
		ifmr->ifm_active = ifb->ifb_active_lag->lag_active_media;
		ifmr->ifm_status |= IFM_ACTIVE;
	    }
	}
	else if (ifb->ifb_distributing_count > 0) {
	    ifmr->ifm_active
		= ifb->ifb_distributing_array[0]->po_media_info.mi_active;
	    ifmr->ifm_status |= IFM_ACTIVE;
	}
	FUNC11();
	user_addr = (cmd == SIOCGIFMEDIA64) ?
	    ((struct ifmediareq64 *)ifmr)->ifmu_ulist :
	    FUNC0(((struct ifmediareq32 *)ifmr)->ifmu_ulist);
	if (user_addr != USER_ADDR_NULL) {
	    error = FUNC13(&ifmr->ifm_current,
			    user_addr,
			    sizeof(int));
	}
	break;

    case SIOCSIFMEDIA:
	/* XXX send the SIFMEDIA to all children?  Or force autoselect? */
	error = EINVAL;
	break;

    case SIOCGIFDEVMTU:
	FUNC5();
	ifb = (ifbond_ref)FUNC17(ifp);
	if (ifb == NULL || FUNC15(ifb)) {
	    FUNC11();
	    error = (ifb == NULL) ? EOPNOTSUPP : EBUSY;
	    break;
	}
	ifr->ifr_devmtu.ifdm_current = FUNC2(ifp, ifb);
	FUNC3(ifb, &ifr->ifr_devmtu.ifdm_min,
			    &ifr->ifr_devmtu.ifdm_max);
	FUNC11();
	break;

    case SIOCGIFALTMTU:
	FUNC5();
	ifb = (ifbond_ref)FUNC17(ifp);
	if (ifb == NULL || FUNC15(ifb)) {
	    FUNC11();
	    error = (ifb == NULL) ? EOPNOTSUPP : EBUSY;
	    break;
	}
	ifr->ifr_mtu = ifb->ifb_altmtu;
	FUNC11();
	break;

    case SIOCSIFALTMTU:
	error = FUNC8(ifp, ifr->ifr_mtu, 1);
	break;

    case SIOCSIFMTU:
	error = FUNC8(ifp, ifr->ifr_mtu, 0);
	break;

    case SIOCSIFBOND:
	user_addr = FUNC20(FUNC14())
	    ? ifr->ifr_data64 : FUNC0(ifr->ifr_data);
	error = FUNC12(user_addr, &ibr, sizeof(ibr));
	if (error) {
	    break;
	}
	switch (ibr.ibr_op) {
	case IF_BOND_OP_ADD_INTERFACE:
	case IF_BOND_OP_REMOVE_INTERFACE:
	    port_ifp = FUNC19(ibr.ibr_ibru.ibru_if_name);
	    if (port_ifp == NULL) {
		error = ENXIO;
		break;
	    }
	    if (FUNC18(port_ifp) != IFT_ETHER) {
		error = EPROTONOSUPPORT;
		break;
	    }
	    break;
	case IF_BOND_OP_SET_VERBOSE:
	case IF_BOND_OP_SET_MODE:
	    break;
	default:
	    error = EOPNOTSUPP;
	    break;
	}
	if (error != 0) {
	    break;
	}
	switch (ibr.ibr_op) {
	case IF_BOND_OP_ADD_INTERFACE:
	    error = FUNC1(ifp, port_ifp);
	    break;
	case IF_BOND_OP_REMOVE_INTERFACE:
	    FUNC5();
	    ifb = (ifbond_ref)FUNC17(ifp);
	    if (ifb == NULL || FUNC15(ifb)) {
		FUNC11();
		return (ifb == NULL ? EOPNOTSUPP : EBUSY);
	    }
	    error = FUNC6(ifb, port_ifp);
	    FUNC11();
	    break;
	case IF_BOND_OP_SET_VERBOSE:
	    FUNC5();
	    if (g_bond == NULL) {
		FUNC11();
		error = ENXIO;
		break;
	    }
	    g_bond->verbose = ibr.ibr_ibru.ibru_int_val;
	    FUNC11();
	    break;
	case IF_BOND_OP_SET_MODE:
	    switch (ibr.ibr_ibru.ibru_int_val) {
	    case IF_BOND_MODE_LACP:
	    case IF_BOND_MODE_STATIC:
		break;
	    default:
		error = EINVAL;
		break;
	    }
	    if (error != 0) {
		break;
	    }
	    error = FUNC7(ifp, ibr.ibr_ibru.ibru_int_val);
	    break;
	}
	break; /* SIOCSIFBOND */
		
    case SIOCGIFBOND:
	user_addr = FUNC20(FUNC14())
	    ? ifr->ifr_data64 : FUNC0(ifr->ifr_data);
	error = FUNC12(user_addr, &ibr, sizeof(ibr));
	if (error) {
	    break;
	}
	switch (ibr.ibr_op) {
	case IF_BOND_OP_GET_STATUS:
	    break;
	default:
	    error = EOPNOTSUPP;
	    break;
	}
	if (error != 0) {
	    break;
	}
	FUNC5();
	ifb = (ifbond_ref)FUNC17(ifp);
	if (ifb == NULL || FUNC15(ifb)) {
	    FUNC11();
	    return (ifb == NULL ? EOPNOTSUPP : EBUSY);
	}
	switch (ibr.ibr_op) {
	case IF_BOND_OP_GET_STATUS:
	    error = FUNC4(ifb, &ibr, user_addr);
	    break;
	}
	FUNC11();
	break; /* SIOCGIFBOND */
		
    case SIOCSIFLLADDR:
	error = EOPNOTSUPP;
	break;

    case SIOCSIFFLAGS:
	/* enable/disable promiscuous mode */
	FUNC5();
	error = FUNC9(ifp);
	FUNC11();
	break;

    case SIOCADDMULTI:
    case SIOCDELMULTI:
	error = FUNC10(ifp);
	break;
    default:
	error = EOPNOTSUPP;
    }
    return error;
}