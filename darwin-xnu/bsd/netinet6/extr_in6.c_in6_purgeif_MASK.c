#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {struct ifnet* ifa_ifp; } ;
struct in6_ifaddr {TYPE_1__ ia_ifa; struct in6_ifaddr* ia_next; } ;
struct ifnet {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LCK_MTX_ASSERT_NOTOWNED ; 
 int /*<<< orphan*/  in6_ifaddr_rwlock ; 
 struct in6_ifaddr* in6_ifaddrs ; 
 int /*<<< orphan*/  FUNC3 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nd6_mutex ; 

void
FUNC7(struct ifnet *ifp)
{
	struct in6_ifaddr *ia;

	if (ifp == NULL)
		return;

	FUNC2(nd6_mutex, LCK_MTX_ASSERT_NOTOWNED);

	FUNC6(&in6_ifaddr_rwlock);
	ia = in6_ifaddrs;
	while (ia != NULL) {
		if (ia->ia_ifa.ifa_ifp != ifp) {
			ia = ia->ia_next;
			continue;
		}
		FUNC0(&ia->ia_ifa);	/* for us */
		FUNC5(&in6_ifaddr_rwlock);
		FUNC4(&ia->ia_ifa);
		FUNC1(&ia->ia_ifa);	/* for us */
		FUNC6(&in6_ifaddr_rwlock);
		/*
		 * Purging the address would have caused
		 * in6_ifaddr_rwlock to be dropped and reacquired;
		 * therefore search again from the beginning
		 * of in6_ifaddrs list.
		 */
		ia = in6_ifaddrs;
	}
	FUNC5(&in6_ifaddr_rwlock);

	FUNC3(ifp);
}