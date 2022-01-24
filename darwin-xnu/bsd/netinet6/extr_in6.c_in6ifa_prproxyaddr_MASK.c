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
struct in6_ifaddr {int /*<<< orphan*/  ia_ifa; struct in6_ifaddr* ia_next; } ;
struct in6_addr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct in6_addr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  in6_ifaddr_rwlock ; 
 struct in6_ifaddr* in6_ifaddrs ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct in6_ifaddr*) ; 

struct in6_ifaddr *
FUNC9(struct in6_addr *addr)
{
	struct in6_ifaddr *ia;

	FUNC7(&in6_ifaddr_rwlock);
	for (ia = in6_ifaddrs; ia; ia = ia->ia_next) {
		FUNC2(&ia->ia_ifa);
		if (FUNC5(addr, FUNC1(&ia->ia_ifa))) {
			FUNC0(&ia->ia_ifa);	/* for caller */
			FUNC4(&ia->ia_ifa);
			break;
		}
		FUNC4(&ia->ia_ifa);
	}
	FUNC6(&in6_ifaddr_rwlock);

	if (ia != NULL && !FUNC8(ia)) {
		FUNC3(&ia->ia_ifa);
		ia = NULL;
	}

	return (ia);
}