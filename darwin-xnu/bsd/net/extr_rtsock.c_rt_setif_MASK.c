#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct sockaddr {int dummy; } ;
struct TYPE_6__ {int rmx_locks; int /*<<< orphan*/  rmx_mtu; } ;
struct rtentry {int rt_flags; struct ifaddr* rt_ifa; struct ifnet* rt_ifp; TYPE_1__ rt_rmx; int /*<<< orphan*/  (* rt_if_ref_fn ) (struct ifnet*,int) ;int /*<<< orphan*/  (* rt_llinfo_purge ) (struct rtentry*) ;} ;
struct ifnet {int if_flags; int /*<<< orphan*/  if_mtu; int /*<<< orphan*/  if_index; int /*<<< orphan*/  if_addrhead; } ;
struct ifaddr {void (* ifa_rtrequest ) (int,struct rtentry*,struct sockaddr*) ;struct ifnet* ifa_ifp; } ;
struct TYPE_7__ {scalar_t__ sa_family; } ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 scalar_t__ AF_INET6 ; 
 scalar_t__ CLAT46_HDR_EXPANSION_OVERHD ; 
 int /*<<< orphan*/  FUNC0 (struct ifaddr*) ; 
 int /*<<< orphan*/  FUNC1 (struct ifaddr*) ; 
 int /*<<< orphan*/  FUNC2 (struct ifaddr*) ; 
 int /*<<< orphan*/  FUNC3 (struct ifaddr*) ; 
 int IFF_LOOPBACK ; 
 int /*<<< orphan*/  FUNC4 (struct ifnet*) ; 
 scalar_t__ FUNC5 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LCK_MTX_ASSERT_OWNED ; 
 int RTF_CONDEMNED ; 
 int RTF_HOST ; 
 int RTM_ADD ; 
 int RTM_DELETE ; 
 int RTV_MTU ; 
 int /*<<< orphan*/  FUNC7 (struct rtentry*) ; 
 int /*<<< orphan*/  FUNC8 (struct rtentry*) ; 
 int /*<<< orphan*/  FUNC9 (struct rtentry*) ; 
 int /*<<< orphan*/  FUNC10 (struct rtentry*) ; 
 int /*<<< orphan*/  FUNC11 (struct rtentry*) ; 
 int /*<<< orphan*/  FUNC12 (struct rtentry*) ; 
 struct ifaddr* FUNC13 (int /*<<< orphan*/ *) ; 
 struct ifnet* FUNC14 (struct sockaddr*) ; 
 struct ifaddr* FUNC15 (TYPE_2__*) ; 
 struct ifaddr* FUNC16 (struct sockaddr*,unsigned int) ; 
 struct ifaddr* FUNC17 (struct sockaddr*,unsigned int) ; 
 struct ifaddr* FUNC18 (int,TYPE_2__*,struct sockaddr*,unsigned int) ; 
 struct ifaddr* FUNC19 (struct sockaddr*,struct ifnet*) ; 
 int /*<<< orphan*/  FUNC20 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC21 (struct ifnet*) ; 
 int /*<<< orphan*/  rnh_lock ; 
 int /*<<< orphan*/  FUNC22 () ; 
 int /*<<< orphan*/  FUNC23 () ; 
 TYPE_2__* FUNC24 (struct rtentry*) ; 
 scalar_t__ FUNC25 (struct rtentry*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC26 (struct rtentry*,struct ifaddr*) ; 
 int /*<<< orphan*/  FUNC27 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (struct rtentry*) ; 
 int /*<<< orphan*/  FUNC29 (struct ifnet*,int) ; 
 int /*<<< orphan*/  FUNC30 (struct ifnet*,int) ; 

__attribute__((used)) static void
FUNC31(struct rtentry *rt, struct sockaddr *Ifpaddr, struct sockaddr *Ifaaddr,
    struct sockaddr *Gate, unsigned int ifscope)
{
	struct ifaddr *ifa = NULL;
	struct ifnet *ifp = NULL;
	void (*ifa_rtrequest)(int, struct rtentry *, struct sockaddr *);

	FUNC6(rnh_lock, LCK_MTX_ASSERT_OWNED);

	FUNC10(rt);

	/* Don't update a defunct route */
	if (rt->rt_flags & RTF_CONDEMNED)
		return;

	/* Add an extra ref for ourselves */
	FUNC7(rt);

	/* Become a regular mutex, just in case */
	FUNC8(rt);

	/*
	 * New gateway could require new ifaddr, ifp; flags may also
	 * be different; ifp may be specified by ll sockaddr when
	 * protocol address is ambiguous.
	 */
	if (Ifpaddr && (ifa = FUNC17(Ifpaddr, ifscope)) &&
	    (ifp = ifa->ifa_ifp) && (Ifaaddr || Gate)) {
		FUNC2(ifa);
		ifa = FUNC19(Ifaaddr ? Ifaaddr : Gate, ifp);
	} else {
		if (ifa != NULL) {
			FUNC2(ifa);
			ifa = NULL;
		}
		if (Ifpaddr && (ifp = FUNC14(Ifpaddr))) {
			if (Gate) {
				ifa = FUNC19(Gate, ifp);
			} else {
				FUNC21(ifp);
				ifa = FUNC13(&ifp->if_addrhead);
				if (ifa != NULL)
					FUNC0(ifa);
				FUNC20(ifp);
			}
		} else if (Ifaaddr &&
		    (ifa = FUNC16(Ifaaddr, ifscope))) {
			ifp = ifa->ifa_ifp;
		} else if (Gate != NULL) {
			/*
			 * Safe to drop rt_lock and use rt_key, since holding
			 * rnh_lock here prevents another thread from calling
			 * rt_setgate() on this route.  We cannot hold the
			 * lock across ifa_ifwithroute since the lookup done
			 * by that routine may point to the same route.
			 */
			FUNC12(rt);
			if ((ifa = FUNC18(rt->rt_flags,
			    FUNC24(rt), Gate, ifscope)) != NULL)
				ifp = ifa->ifa_ifp;
			FUNC9(rt);
			/* Don't update a defunct route */
			if (rt->rt_flags & RTF_CONDEMNED) {
				if (ifa != NULL)
					FUNC2(ifa);
				/* Release extra ref */
				FUNC11(rt);
				return;
			}
		}
	}

	/* trigger route cache reevaluation */
	if (FUNC24(rt)->sa_family == AF_INET)
		FUNC23();
#if INET6
	else if (rt_key(rt)->sa_family == AF_INET6)
		routegenid_inet6_update();
#endif /* INET6 */

	if (ifa != NULL) {
		struct ifaddr *oifa = rt->rt_ifa;
		if (oifa != ifa) {
			if (oifa != NULL) {
				FUNC1(oifa);
				ifa_rtrequest = oifa->ifa_rtrequest;
				FUNC3(oifa);
				if (ifa_rtrequest != NULL)
					ifa_rtrequest(RTM_DELETE, rt, Gate);
			}
			FUNC26(rt, ifa);

			if (rt->rt_ifp != ifp) {
				/*
				 * Purge any link-layer info caching.
				 */
				if (rt->rt_llinfo_purge != NULL)
					rt->rt_llinfo_purge(rt);

				/*
				 * Adjust route ref count for the interfaces.
				 */
				if (rt->rt_if_ref_fn != NULL) {
					rt->rt_if_ref_fn(ifp, 1);
					rt->rt_if_ref_fn(rt->rt_ifp, -1);
				}
			}
			rt->rt_ifp = ifp;
			/*
			 * If this is the (non-scoped) default route, record
			 * the interface index used for the primary ifscope.
			 */
			if (FUNC25(rt, FUNC24(rt))) {
				FUNC27(FUNC24(rt)->sa_family,
				    rt->rt_ifp->if_index);
			}
			/*
			 * If rmx_mtu is not locked, update it
			 * to the MTU used by the new interface.
			 */
			if (!(rt->rt_rmx.rmx_locks & RTV_MTU)) {
				rt->rt_rmx.rmx_mtu = rt->rt_ifp->if_mtu;
				if (FUNC24(rt)->sa_family == AF_INET &&
				    FUNC5(ifp)) {
					rt->rt_rmx.rmx_mtu = FUNC4(rt->rt_ifp);
					/* Further adjust the size for CLAT46 expansion */
					rt->rt_rmx.rmx_mtu -= CLAT46_HDR_EXPANSION_OVERHD;
				}
			}

			if (rt->rt_ifa != NULL) {
				FUNC1(rt->rt_ifa);
				ifa_rtrequest = rt->rt_ifa->ifa_rtrequest;
				FUNC3(rt->rt_ifa);
				if (ifa_rtrequest != NULL)
					ifa_rtrequest(RTM_ADD, rt, Gate);
			}
			FUNC2(ifa);
			/* Release extra ref */
			FUNC11(rt);
			return;
		}
		FUNC2(ifa);
		ifa = NULL;
	}

	/* XXX: to reset gateway to correct value, at RTM_CHANGE */
	if (rt->rt_ifa != NULL) {
		FUNC1(rt->rt_ifa);
		ifa_rtrequest = rt->rt_ifa->ifa_rtrequest;
		FUNC3(rt->rt_ifa);
		if (ifa_rtrequest != NULL)
			ifa_rtrequest(RTM_ADD, rt, Gate);
	}

	/*
	 * Workaround for local address routes pointing to the loopback
	 * interface added by configd, until <rdar://problem/12970142>.
	 */
	if ((rt->rt_ifp->if_flags & IFF_LOOPBACK) &&
	    (rt->rt_flags & RTF_HOST) && rt->rt_ifa->ifa_ifp == rt->rt_ifp) {
		ifa = FUNC15(FUNC24(rt));
		if (ifa != NULL) {
			if (ifa != rt->rt_ifa)
				FUNC26(rt, ifa);
			FUNC2(ifa);
		}
	}

	/* Release extra ref */
	FUNC11(rt);
}