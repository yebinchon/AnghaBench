#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/ * s6_addr16; } ;
struct sockaddr_in6 {int sin6_len; TYPE_4__ sin6_addr; scalar_t__ sin6_family; } ;
struct sockaddr {int dummy; } ;
struct rtentry {int /*<<< orphan*/  rt_flags; struct sockaddr* rt_gateway; struct ifnet* rt_ifp; } ;
struct in6_multi_mship {int dummy; } ;
struct ifaddr {TYPE_3__* ifa_addr; struct ifnet* ifa_ifp; } ;
struct TYPE_5__ {struct in6_multi_mship* lh_first; } ;
struct in6_ifaddr {int ia_flags; struct ifaddr ia_ifa; struct in6_ifaddr* ia_next; int /*<<< orphan*/  ia_prefixmask; int /*<<< orphan*/  ia_addr; TYPE_1__ ia6_memberships; } ;
struct ifnet {int /*<<< orphan*/  if_index; int /*<<< orphan*/  if_addrlist; } ;
typedef  int /*<<< orphan*/  sin6 ;
struct TYPE_7__ {scalar_t__ sa_family; } ;
struct TYPE_6__ {int /*<<< orphan*/  sin6_addr; } ;

/* Variables and functions */
 scalar_t__ AF_INET6 ; 
 int /*<<< orphan*/  FUNC0 (struct ifaddr*) ; 
 int /*<<< orphan*/  FUNC1 (struct ifaddr*) ; 
 int /*<<< orphan*/  FUNC2 (struct ifaddr*) ; 
 int /*<<< orphan*/  FUNC3 (struct ifaddr*) ; 
 int IFA_ROUTE ; 
 int /*<<< orphan*/  FUNC4 (struct ifaddr*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LCK_MTX_ASSERT_NOTOWNED ; 
 int /*<<< orphan*/  FUNC7 (struct in6_multi_mship*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct ifnet*) ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  RTF_CONDEMNED ; 
 int /*<<< orphan*/  RTM_DELETE ; 
 int /*<<< orphan*/  FUNC9 (struct rtentry*) ; 
 int /*<<< orphan*/  FUNC10 (struct rtentry*) ; 
 struct ifaddr* FUNC11 (int /*<<< orphan*/ *) ; 
 struct ifaddr* FUNC12 (struct ifaddr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct sockaddr_in6*,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  i6mm_chain ; 
 int /*<<< orphan*/  FUNC15 (struct ifnet*,struct ifaddr*) ; 
 int /*<<< orphan*/  FUNC16 (struct ifnet*) ; 
 int /*<<< orphan*/  ifa_list ; 
 int /*<<< orphan*/  FUNC17 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC18 (struct ifnet*) ; 
 int /*<<< orphan*/  in6_ifaddr_rwlock ; 
 struct in6_ifaddr* in6_ifaddrs ; 
 int /*<<< orphan*/  FUNC19 (struct in6_multi_mship*) ; 
 int /*<<< orphan*/  FUNC20 (struct ifaddr*) ; 
 TYPE_4__ in6addr_linklocal_allnodes ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (scalar_t__) ; 
 int /*<<< orphan*/  nd6_mutex ; 
 int /*<<< orphan*/  FUNC24 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 () ; 
 struct sockaddr* FUNC27 (struct rtentry*) ; 
 struct sockaddr* FUNC28 (struct rtentry*) ; 
 struct rtentry* FUNC29 (struct sockaddr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (struct rtentry*) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ ,struct sockaddr*,struct sockaddr*,struct sockaddr*,int /*<<< orphan*/ ,struct rtentry**) ; 
 TYPE_2__* FUNC32 (TYPE_3__**) ; 

void
FUNC33(struct ifnet *ifp)
{
	struct in6_ifaddr *ia, *oia;
	struct ifaddr *ifa;
	struct rtentry *rt;
	struct sockaddr_in6 sin6;
	struct in6_multi_mship *imm;
	int unlinked;

	FUNC6(nd6_mutex, LCK_MTX_ASSERT_NOTOWNED);

	/* remove neighbor management table */
	FUNC24(ifp);

	if (FUNC8(ifp))
		FUNC23(FUNC8(ifp));

	/* nuke any of IPv6 addresses we have */
	FUNC22(&in6_ifaddr_rwlock);
	ia = in6_ifaddrs;
	while (ia != NULL) {
		if (ia->ia_ifa.ifa_ifp != ifp) {
			ia = ia->ia_next;
			continue;
		}
		FUNC0(&ia->ia_ifa);	/* for us */
		FUNC21(&in6_ifaddr_rwlock);
		FUNC20(&ia->ia_ifa);
		FUNC3(&ia->ia_ifa);	/* for us */
		FUNC22(&in6_ifaddr_rwlock);
		/*
		 * Purging the address caused in6_ifaddr_rwlock
		 * to be dropped and reacquired;
		 * therefore search again from the beginning
		 * of in6_ifaddrs list.
		 */
		ia = in6_ifaddrs;
	}
	FUNC21(&in6_ifaddr_rwlock);

	FUNC18(ifp);

	/* undo everything done by in6_ifattach(), just in case */
	ifa = FUNC11(&ifp->if_addrlist);
	while (ifa != NULL) {
		FUNC2(ifa);
		if (ifa->ifa_addr->sa_family != AF_INET6 ||
		    !FUNC5(&FUNC32(&ifa->ifa_addr)->
		    sin6_addr)) {
			FUNC4(ifa);
			ifa = FUNC12(ifa, ifa_list);
			continue;
		}

		ia = (struct in6_ifaddr *)ifa;

		/* hold a reference for this routine */
		FUNC1(ifa);
		/* remove from the linked list */
		FUNC15(ifp, ifa);
		FUNC4(ifa);

		/*
		 * Leaving the multicast group(s) may involve freeing the
		 * link address multicast structure(s) for the interface,
		 * which is protected by ifnet lock.  To avoid violating
		 * lock ordering, we must drop ifnet lock before doing so.
		 * The ifa won't go away since we held a refcnt above.
		 */
		FUNC17(ifp);

		/*
		 * We have to do this work manually here instead of calling
		 * in6_purgeaddr() since in6_purgeaddr() uses the RTM_HOST flag.
		 */

		/*
		 * leave from multicast groups we have joined for the interface
		 */
		FUNC2(ifa);
		while ((imm = ia->ia6_memberships.lh_first) != NULL) {
			FUNC7(imm, i6mm_chain);
			FUNC4(ifa);
			FUNC19(imm);
			FUNC2(ifa);
		}

		/* remove from the routing table */
		if (ia->ia_flags & IFA_ROUTE) {
			FUNC4(ifa);
			rt = FUNC29((struct sockaddr *)&ia->ia_addr, 0, 0);
			if (rt != NULL) {
				(void) FUNC31(RTM_DELETE,
					(struct sockaddr *)&ia->ia_addr,
					(struct sockaddr *)&ia->ia_addr,
					(struct sockaddr *)&ia->ia_prefixmask,
					rt->rt_flags, (struct rtentry **)0);
				FUNC30(rt);
			}
		} else {
			FUNC4(ifa);
		}

		/* also remove from the IPv6 address chain(itojun&jinmei) */
		unlinked = 1;
		oia = ia;
		FUNC22(&in6_ifaddr_rwlock);
		if (oia == (ia = in6_ifaddrs)) {
			in6_ifaddrs = ia->ia_next;
		} else {
			while (ia->ia_next && (ia->ia_next != oia))
				ia = ia->ia_next;
			if (ia->ia_next) {
				ia->ia_next = oia->ia_next;
			} else {
				FUNC25((LOG_ERR,
				    "%s: didn't unlink in6ifaddr from "
				    "list\n", FUNC16(ifp)));
				unlinked = 0;
			}
		}
		FUNC21(&in6_ifaddr_rwlock);

		ifa = &oia->ia_ifa;
		/*
		 * release another refcnt for the link from in6_ifaddrs.
		 * Do this only if it's not already unlinked in the event
		 * that we lost the race, since in6_ifaddr_rwlock was
		 * momentarily dropped above.
		 */
		if (unlinked)
			FUNC3(ifa);
		/* release reference held for this routine */
		FUNC3(ifa);

		/*
		 * This is suboptimal, but since we dropped ifnet lock above
		 * the list might have changed.  Repeat the search from the
		 * beginning until we find the first eligible IPv6 address.
		 */
		FUNC18(ifp);
		ifa = FUNC11(&ifp->if_addrlist);
	}
	FUNC17(ifp);

	/* invalidate route caches */
	FUNC26();

	/*
	 * remove neighbor management table.  we call it twice just to make
	 * sure we nuke everything.  maybe we need just one call.
	 * XXX: since the first call did not release addresses, some prefixes
	 * might remain.  We should call nd6_purge() again to release the
	 * prefixes after removing all addresses above.
	 * (Or can we just delay calling nd6_purge until at this point?)
	 */
	FUNC24(ifp);

	/* remove route to link-local allnodes multicast (ff02::1) */
	FUNC13(&sin6, sizeof (sin6));
	sin6.sin6_len = sizeof (struct sockaddr_in6);
	sin6.sin6_family = AF_INET6;
	sin6.sin6_addr = in6addr_linklocal_allnodes;
	sin6.sin6_addr.s6_addr16[1] = FUNC14(ifp->if_index);
	rt = FUNC29((struct sockaddr *)&sin6, 0, 0);
	if (rt != NULL) {
		FUNC9(rt);
		if (rt->rt_ifp == ifp) {
			/*
			 * Prevent another thread from modifying rt_key,
			 * rt_gateway via rt_setgate() after the rt_lock
			 * is dropped by marking the route as defunct.
			 */
			rt->rt_flags |= RTF_CONDEMNED;
			FUNC10(rt);
			(void) FUNC31(RTM_DELETE, FUNC27(rt), rt->rt_gateway,
			    FUNC28(rt), rt->rt_flags, 0);
		} else {
			FUNC10(rt);
		}
		FUNC30(rt);
	}
}