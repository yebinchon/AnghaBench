#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sockaddr_storage {int dummy; } ;
struct sockaddr {scalar_t__ sa_family; } ;
struct rtentry {struct ifaddr* rt_ifa; } ;
struct ifaddr {TYPE_2__* ifa_addr; TYPE_1__* ifa_ifp; } ;
struct TYPE_4__ {scalar_t__ sa_family; } ;
struct TYPE_3__ {unsigned int if_index; } ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 scalar_t__ AF_INET6 ; 
 int /*<<< orphan*/  FUNC0 (struct ifaddr*) ; 
 int /*<<< orphan*/  FUNC1 (struct ifaddr*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LCK_MTX_ASSERT_OWNED ; 
 int RTF_GATEWAY ; 
 int RTF_HOST ; 
 int RTF_IFSCOPE ; 
 int /*<<< orphan*/  FUNC3 (struct rtentry*) ; 
 int /*<<< orphan*/  FUNC4 (struct rtentry*) ; 
 int /*<<< orphan*/  FUNC5 (struct rtentry*) ; 
 int /*<<< orphan*/  FUNC6 (struct rtentry*) ; 
 int /*<<< orphan*/  FUNC7 (uintptr_t) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,struct sockaddr*) ; 
 struct ifaddr* FUNC9 (struct sockaddr const*,unsigned int) ; 
 struct ifaddr* FUNC10 (struct sockaddr const*) ; 
 struct ifaddr* FUNC11 (struct sockaddr const*,unsigned int) ; 
 struct ifaddr* FUNC12 (struct sockaddr const*,TYPE_1__*) ; 
 int /*<<< orphan*/  rnh_lock ; 
 struct rtentry* FUNC13 (struct sockaddr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 struct sockaddr* FUNC14 (int /*<<< orphan*/ ,struct sockaddr_storage*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct ifaddr *
FUNC15(int flags, const struct sockaddr *dst,
    const struct sockaddr *gw, unsigned int ifscope)
{
	struct ifaddr *ifa = NULL;
	struct rtentry *rt = NULL;
	struct sockaddr_storage dst_ss, gw_ss;

	FUNC2(rnh_lock, LCK_MTX_ASSERT_OWNED);

	/*
	 * Just in case the sockaddr passed in by the caller
	 * contains a scope ID, make sure to clear it since
	 * interface addresses aren't scoped.
	 */
#if INET6
	if (dst != NULL &&
	    ((dst->sa_family == AF_INET) ||
	    (dst->sa_family == AF_INET6)))
#else
	if (dst != NULL && dst->sa_family == AF_INET)
#endif /* !INET6 */
		dst = FUNC14(FUNC7((uintptr_t)dst), &dst_ss, NULL);

#if INET6
	if (gw != NULL &&
	    ((gw->sa_family == AF_INET) ||
	    (gw->sa_family == AF_INET6)))
#else
	if (gw != NULL && gw->sa_family == AF_INET)
#endif /* !INET6 */
		gw = FUNC14(FUNC7((uintptr_t)gw), &gw_ss, NULL);

	if (!(flags & RTF_GATEWAY)) {
		/*
		 * If we are adding a route to an interface,
		 * and the interface is a pt to pt link
		 * we should search for the destination
		 * as our clue to the interface.  Otherwise
		 * we can use the local address.
		 */
		if (flags & RTF_HOST) {
			ifa = FUNC10(dst);
		}
		if (ifa == NULL)
			ifa = FUNC9(gw, ifscope);
	} else {
		/*
		 * If we are adding a route to a remote net
		 * or host, the gateway may still be on the
		 * other end of a pt to pt link.
		 */
		ifa = FUNC10(gw);
	}
	if (ifa == NULL)
		ifa = FUNC11(gw, ifscope);
	if (ifa == NULL) {
		/* Workaround to avoid gcc warning regarding const variable */
		rt = FUNC13((struct sockaddr *)(size_t)dst,
		    0, 0, ifscope);
		if (rt != NULL) {
			FUNC4(rt);
			ifa = rt->rt_ifa;
			if (ifa != NULL) {
				/* Become a regular mutex */
				FUNC3(rt);
				FUNC0(ifa);
			}
			FUNC5(rt);
			FUNC6(rt);
			rt = NULL;
		}
	}
	/*
	 * Holding rnh_lock here prevents the possibility of ifa from
	 * changing (e.g. in_ifinit), so it is safe to access its
	 * ifa_addr (here and down below) without locking.
	 */
	if (ifa != NULL && ifa->ifa_addr->sa_family != dst->sa_family) {
		struct ifaddr *newifa;
		/* Callee adds reference to newifa upon success */
		newifa = FUNC12(dst, ifa->ifa_ifp);
		if (newifa != NULL) {
			FUNC1(ifa);
			ifa = newifa;
		}
	}
	/*
	 * If we are adding a gateway, it is quite possible that the
	 * routing table has a static entry in place for the gateway,
	 * that may not agree with info garnered from the interfaces.
	 * The routing table should carry more precedence than the
	 * interfaces in this matter.  Must be careful not to stomp
	 * on new entries from rtinit, hence (ifa->ifa_addr != gw).
	 */
	if ((ifa == NULL ||
	    !FUNC8(ifa->ifa_addr, (struct sockaddr *)(size_t)gw)) &&
	    (rt = FUNC13((struct sockaddr *)(size_t)gw,
	    0, 0, ifscope)) != NULL) {
		if (ifa != NULL)
			FUNC1(ifa);
		FUNC4(rt);
		ifa = rt->rt_ifa;
		if (ifa != NULL) {
			/* Become a regular mutex */
			FUNC3(rt);
			FUNC0(ifa);
		}
		FUNC5(rt);
		FUNC6(rt);
	}
	/*
	 * If an interface scope was specified, the interface index of
	 * the found ifaddr must be equivalent to that of the scope;
	 * otherwise there is no match.
	 */
	if ((flags & RTF_IFSCOPE) &&
	    ifa != NULL && ifa->ifa_ifp->if_index != ifscope) {
		FUNC1(ifa);
		ifa = NULL;
	}

	/*
	 * ifa's address family must match destination's address family
	 * after all is said and done.
	 */
	if (ifa != NULL &&
	    ifa->ifa_addr->sa_family != dst->sa_family) {
		FUNC1(ifa);
		ifa = NULL;
	}

	return (ifa);
}