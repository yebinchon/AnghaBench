#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct sockaddr_in6 {int /*<<< orphan*/  sin6_addr; } ;
struct rtentry {int dummy; } ;
struct ifnet {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LCK_MTX_ASSERT_NOTOWNED ; 
 int /*<<< orphan*/  FUNC1 (struct rtentry*) ; 
 int /*<<< orphan*/  FUNC2 (struct rtentry*) ; 
 int /*<<< orphan*/  FUNC3 (struct rtentry*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct sockaddr_in6*,struct ifnet*) ; 
 struct rtentry* FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct ifnet*,int) ; 
 int /*<<< orphan*/  nd6_mutex ; 

int
FUNC8(struct sockaddr_in6 *addr, struct ifnet *ifp,
    int rt_locked)
{
	struct rtentry *rt;

	FUNC0(nd6_mutex, LCK_MTX_ASSERT_NOTOWNED);
	FUNC4(nd6_mutex);
	if (FUNC6(addr, ifp)) {
		FUNC5(nd6_mutex);
		return (1);
	}
	FUNC5(nd6_mutex);

	/*
	 * Even if the address matches none of our addresses, it might be
	 * in the neighbor cache.
	 */
	if ((rt = FUNC7(&addr->sin6_addr, 0, ifp, rt_locked)) != NULL) {
		FUNC1(rt);
		FUNC2(rt);
		FUNC3(rt);
		return (1);
	}

	return (0);
}