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
typedef  struct TYPE_22__   TYPE_18__ ;

/* Type definitions */
struct nd_ifinfo {int /*<<< orphan*/  cga_initialized; } ;
struct ifnet {int dummy; } ;
struct dlil_ifnet {int /*<<< orphan*/  dl_if_detach; } ;
typedef  TYPE_3__* ifnet_t ;
typedef  int /*<<< orphan*/  errno_t ;
struct TYPE_22__ {struct ifnet* ifp; } ;
struct TYPE_24__ {int /*<<< orphan*/ * tqe_prev; int /*<<< orphan*/ * tqe_next; } ;
struct TYPE_23__ {int /*<<< orphan*/ * tqe_prev; int /*<<< orphan*/ * tqe_next; } ;
struct TYPE_25__ {int if_refflags; int if_eflags; size_t if_index; int /*<<< orphan*/ * if_dt_tcall; scalar_t__ if_data_threshold; int /*<<< orphan*/  if_cached_route_lock; scalar_t__ if_fwd_cacheok; scalar_t__ if_agentcount; int /*<<< orphan*/ * if_agentids; int /*<<< orphan*/ * if_link_status; TYPE_18__* if_ipv6_stat; TYPE_18__* if_ipv4_stat; TYPE_18__* if_udp_stat; TYPE_18__* if_tcp_stat; TYPE_18__ if_interface_state; TYPE_18__ if_delegated; TYPE_18__ if_log; TYPE_2__ if_ordered_link; TYPE_1__ if_link; int /*<<< orphan*/  if_flowhash; int /*<<< orphan*/  if_ref_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENXIO ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int IFEF_CLAT46 ; 
 int IFEF_ECN_DISABLE ; 
 int IFEF_ECN_ENABLE ; 
 int IFEF_IPV4_ROUTER ; 
 int IFEF_IPV6_ROUTER ; 
 int IFEF_TXSTART ; 
 int /*<<< orphan*/  IFNET_LQM_THRESH_OFF ; 
 int IFRF_ATTACHED ; 
 int IFRF_DETACHING ; 
 int IFRF_EMBRYONIC ; 
 int /*<<< orphan*/  KEV_DL_IF_DETACHING ; 
 int /*<<< orphan*/  KEV_DL_SUBCLASS ; 
 int /*<<< orphan*/  M_NETAGENT ; 
 int /*<<< orphan*/  M_TEMP ; 
 struct nd_ifinfo* FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_18__*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ dlil_verbose ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*) ; 
 int /*<<< orphan*/  if_link ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC12 (TYPE_3__*) ; 
 TYPE_3__** ifindex2ifnet ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ifnet_head ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC19 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 TYPE_3__* lo_ifp ; 
 int /*<<< orphan*/  FUNC26 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC27 (char*,char*) ; 
 int /*<<< orphan*/ * rnh_lock ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *) ; 

errno_t
FUNC29(ifnet_t ifp)
{
	struct ifnet *delegated_ifp;
	struct nd_ifinfo *ndi = NULL;

	if (ifp == NULL)
		return (EINVAL);

	ndi = FUNC1(ifp);
	if (NULL != ndi)
		ndi->cga_initialized = FALSE;

	FUNC23(rnh_lock);
	FUNC16();
	FUNC18(ifp);

	/*
	 * Check to see if this interface has previously triggered
	 * aggressive protocol draining; if so, decrement the global
	 * refcnt and clear PR_AGGDRAIN on the route domain if
	 * there are no more of such an interface around.
	 */
	(void) FUNC21(ifp, 0, ~0);

	FUNC24(&ifp->if_ref_lock);
	if (!(ifp->if_refflags & IFRF_ATTACHED)) {
		FUNC25(&ifp->if_ref_lock);
		FUNC17(ifp);
		FUNC15();
		FUNC25(rnh_lock);
		return (EINVAL);
	} else if (ifp->if_refflags & IFRF_DETACHING) {
		/* Interface has already been detached */
		FUNC25(&ifp->if_ref_lock);
		FUNC17(ifp);
		FUNC15();
		FUNC25(rnh_lock);
		return (ENXIO);
	}
	FUNC3(!(ifp->if_refflags & IFRF_EMBRYONIC));
	/* Indicate this interface is being detached */
	ifp->if_refflags &= ~IFRF_ATTACHED;
	ifp->if_refflags |= IFRF_DETACHING;
	FUNC25(&ifp->if_ref_lock);

	if (dlil_verbose) {
		FUNC27("%s: detaching\n", FUNC12(ifp));
	}

	/* clean up flow control entry object if there's any */
	if (ifp->if_eflags & IFEF_TXSTART) {
		FUNC14(ifp->if_flowhash);
	}

	/* Reset ECN enable/disable flags */
	ifp->if_eflags &= ~IFEF_ECN_DISABLE;
	ifp->if_eflags &= ~IFEF_ECN_ENABLE;

	/* Reset CLAT46 flag */
	ifp->if_eflags &= ~IFEF_CLAT46;

	/*
	 * Remove ifnet from the ifnet_head, ifindex2ifnet[]; it will
	 * no longer be visible during lookups from this point.
	 */
	FUNC3(ifindex2ifnet[ifp->if_index] == ifp);
	FUNC2(&ifnet_head, ifp, if_link);
	ifp->if_link.tqe_next = NULL;
	ifp->if_link.tqe_prev = NULL;
	if (ifp->if_ordered_link.tqe_next != NULL ||
		ifp->if_ordered_link.tqe_prev != NULL) {
		FUNC20(ifp);
	}
	ifindex2ifnet[ifp->if_index] = NULL;

	/* 18717626 - reset IFEF_IPV4_ROUTER and IFEF_IPV6_ROUTER */
	ifp->if_eflags &= ~(IFEF_IPV4_ROUTER | IFEF_IPV6_ROUTER);

	/* Record detach PC stacktrace */
	FUNC6(&((struct dlil_ifnet *)ifp)->dl_if_detach);

	/* Clear logging parameters */
	FUNC5(&ifp->if_log, sizeof (ifp->if_log));

	/* Clear delegated interface info (reference released below) */
	delegated_ifp = ifp->if_delegated.ifp;
	FUNC5(&ifp->if_delegated, sizeof (ifp->if_delegated));

	/* Reset interface state */
	FUNC5(&ifp->if_interface_state, sizeof(ifp->if_interface_state));

	FUNC17(ifp);
	FUNC15();
	FUNC25(rnh_lock);


	/* Release reference held on the delegated interface */
	if (delegated_ifp != NULL)
		FUNC19(delegated_ifp);

	/* Reset Link Quality Metric (unless loopback [lo0]) */
	if (ifp != lo_ifp)
		FUNC11(ifp, IFNET_LQM_THRESH_OFF, 0);

	/* Reset TCP local statistics */
	if (ifp->if_tcp_stat != NULL)
		FUNC5(ifp->if_tcp_stat, sizeof(*ifp->if_tcp_stat));

	/* Reset UDP local statistics */
	if (ifp->if_udp_stat != NULL)
		FUNC5(ifp->if_udp_stat, sizeof(*ifp->if_udp_stat));

	/* Reset ifnet IPv4 stats */
	if (ifp->if_ipv4_stat != NULL)
		FUNC5(ifp->if_ipv4_stat, sizeof(*ifp->if_ipv4_stat));

	/* Reset ifnet IPv6 stats */
	if (ifp->if_ipv6_stat != NULL)
		FUNC5(ifp->if_ipv6_stat, sizeof(*ifp->if_ipv6_stat));

	/* Release memory held for interface link status report */
	if (ifp->if_link_status != NULL) {
		FUNC0(ifp->if_link_status, M_TEMP);
		ifp->if_link_status = NULL;
	}

	/* Clear agent IDs */
	if (ifp->if_agentids != NULL) {
		FUNC0(ifp->if_agentids, M_NETAGENT);
		ifp->if_agentids = NULL;
	}
	ifp->if_agentcount = 0;


	/* Let BPF know we're detaching */
	FUNC4(ifp);

	/* Mark the interface as DOWN */
	FUNC10(ifp);

	/* Disable forwarding cached route */
	FUNC23(&ifp->if_cached_route_lock);
	ifp->if_fwd_cacheok = 0;
	FUNC25(&ifp->if_cached_route_lock);

	/* Disable data threshold and wait for any pending event posting */
	ifp->if_data_threshold = 0;
	FUNC3(ifp->if_dt_tcall != NULL);
	(void) FUNC28(ifp->if_dt_tcall);

	/*
	 * Drain any deferred IGMPv3/MLDv2 query responses, but keep the
	 * references to the info structures and leave them attached to
	 * this ifnet.
	 */
#if INET
	igmp_domifdetach(ifp);
#endif /* INET */
#if INET6
	mld_domifdetach(ifp);
#endif /* INET6 */

	FUNC9(ifp, KEV_DL_SUBCLASS, KEV_DL_IF_DETACHING, NULL, 0);

	/* Let worker thread take care of the rest, to avoid reentrancy */
	FUNC7();
	FUNC13(ifp);
	FUNC8();

	return (0);
}