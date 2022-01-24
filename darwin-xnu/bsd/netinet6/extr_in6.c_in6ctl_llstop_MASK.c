#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/ * s6_addr16; } ;
struct TYPE_10__ {TYPE_3__ sin6_addr; } ;
struct nd_prefix {int ndpr_plen; TYPE_2__ ndpr_prefix; struct ifnet* ndpr_ifp; } ;
struct TYPE_12__ {struct ifnet* ifa_ifp; } ;
struct TYPE_9__ {int /*<<< orphan*/  sin6_addr; } ;
struct in6_ifaddr {struct in6_ifaddr* ia_next; TYPE_4__ ia_ifa; TYPE_1__ ia_addr; } ;
struct ifnet {int dummy; } ;
typedef  int /*<<< orphan*/  pr0 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IPV6_ADDR_INT16_ULL ; 
 int /*<<< orphan*/  ND6_PREFIX_EXPIRY_UNSPEC ; 
 int /*<<< orphan*/  FUNC5 (struct nd_prefix*) ; 
 int /*<<< orphan*/  FUNC6 (struct nd_prefix*) ; 
 int /*<<< orphan*/  FUNC7 (struct nd_prefix*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct nd_prefix*,int) ; 
 int /*<<< orphan*/  in6_ifaddr_rwlock ; 
 struct in6_ifaddr* in6_ifaddrs ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,struct ifnet*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nd6_mutex ; 
 struct nd_prefix* FUNC16 (struct nd_prefix*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct nd_prefix*) ; 

__attribute__((used)) static __attribute__((noinline)) int
FUNC18(struct ifnet *ifp)
{
	struct in6_ifaddr *ia;
	struct nd_prefix pr0, *pr;

	FUNC8(ifp != NULL);

	/* Remove link local addresses from interface */
	FUNC15(&in6_ifaddr_rwlock);
	ia = in6_ifaddrs;
	while (ia != NULL) {
		if (ia->ia_ifa.ifa_ifp != ifp) {
			ia = ia->ia_next;
			continue;
		}
		FUNC1(&ia->ia_ifa);
		if (FUNC4(&ia->ia_addr.sin6_addr)) {
			FUNC0(&ia->ia_ifa);	/* for us */
			FUNC3(&ia->ia_ifa);
			FUNC14(&in6_ifaddr_rwlock);
			FUNC10(&ia->ia_ifa);
			FUNC2(&ia->ia_ifa);	/* for us */
			FUNC15(&in6_ifaddr_rwlock);
			/*
			 * Purging the address caused in6_ifaddr_rwlock
			 * to be dropped and reacquired;
			 * therefore search again from the beginning
			 * of in6_ifaddrs list.
			 */
			ia = in6_ifaddrs;
			continue;
		}
		FUNC3(&ia->ia_ifa);
		ia = ia->ia_next;
	}
	FUNC14(&in6_ifaddr_rwlock);

	/* Delete the link local prefix */
	FUNC9(&pr0, sizeof(pr0));
	pr0.ndpr_plen = 64;
	pr0.ndpr_ifp = ifp;
	pr0.ndpr_prefix.sin6_addr.s6_addr16[0] = IPV6_ADDR_INT16_ULL;
	FUNC11(&pr0.ndpr_prefix.sin6_addr, ifp, NULL);
	pr = FUNC16(&pr0, ND6_PREFIX_EXPIRY_UNSPEC);
	if (pr) {
		FUNC12(nd6_mutex);
		FUNC5(pr);
		FUNC17(pr);
		FUNC7(pr);
		FUNC6(pr); /* Drop the reference from lookup */
		FUNC13(nd6_mutex);
	}

	return (0);
}