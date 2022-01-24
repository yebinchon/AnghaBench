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
typedef  scalar_t__ u_int32_t ;
struct sockaddr_in6 {scalar_t__ sin6_scope_id; int /*<<< orphan*/  sin6_addr; } ;
struct TYPE_3__ {int /*<<< orphan*/  sin6_addr; } ;
struct nd_prefix {int ndpr_stateflags; int /*<<< orphan*/  ndpr_mask; TYPE_1__ ndpr_prefix; struct ifnet* ndpr_ifp; struct nd_prefix* ndpr_next; } ;
struct ifnet {int dummy; } ;
struct ifaddr {struct ifnet* ifa_ifp; } ;
struct TYPE_4__ {struct nd_prefix* lh_first; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (struct ifaddr*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LCK_MTX_ASSERT_OWNED ; 
 int NDPRF_ONLINK ; 
 int /*<<< orphan*/  FUNC4 (struct nd_prefix*) ; 
 int /*<<< orphan*/  FUNC5 (struct nd_prefix*) ; 
 int /*<<< orphan*/  FUNC6 (struct sockaddr_in6*) ; 
 struct ifaddr* FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,struct ifnet*,scalar_t__*) ; 
 int /*<<< orphan*/  nd6_mutex ; 
 TYPE_2__ nd_prefix ; 
 scalar_t__ FUNC9 (struct sockaddr_in6*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC10(struct sockaddr_in6 *addr, struct ifnet *ifp)
{
	struct nd_prefix *pr;
	struct ifaddr *dstaddr;

	FUNC3(nd6_mutex, LCK_MTX_ASSERT_OWNED);

	/*
	 * A link-local address is always a neighbor.
	 * XXX: a link does not necessarily specify a single interface.
	 */
	if (FUNC2(&addr->sin6_addr)) {
		struct sockaddr_in6 sin6_copy;
		u_int32_t zone;

		/*
		 * We need sin6_copy since sa6_recoverscope() may modify the
		 * content (XXX).
		 */
		sin6_copy = *addr;
		if (FUNC9(&sin6_copy, FALSE))
			return (0); /* XXX: should be impossible */
		if (FUNC8(&sin6_copy.sin6_addr, ifp, &zone))
			return (0);
		if (sin6_copy.sin6_scope_id == zone)
			return (1);
		else
			return (0);
	}

	/*
	 * If the address matches one of our addresses,
	 * it should be a neighbor.
	 * If the address matches one of our on-link prefixes, it should be a
	 * neighbor.
	 */
	for (pr = nd_prefix.lh_first; pr; pr = pr->ndpr_next) {
		FUNC4(pr);
		if (pr->ndpr_ifp != ifp) {
			FUNC5(pr);
			continue;
		}
		if (!(pr->ndpr_stateflags & NDPRF_ONLINK)) {
			FUNC5(pr);
			continue;
		}
		if (FUNC1(&pr->ndpr_prefix.sin6_addr,
		    &addr->sin6_addr, &pr->ndpr_mask)) {
			FUNC5(pr);
			return (1);
		}
		FUNC5(pr);
	}

	/*
	 * If the address is assigned on the node of the other side of
	 * a p2p interface, the address should be a neighbor.
	 */
	dstaddr = FUNC7(FUNC6(addr));
	if (dstaddr != NULL) {
		if (dstaddr->ifa_ifp == ifp) {
			FUNC0(dstaddr);
			return (1);
		}
		FUNC0(dstaddr);
		dstaddr = NULL;
	}

	return (0);
}