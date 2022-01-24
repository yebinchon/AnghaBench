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
struct TYPE_4__ {int /*<<< orphan*/  sin6_addr; } ;
struct TYPE_3__ {int /*<<< orphan*/  sin6_addr; } ;
struct in6_ifaddr {int /*<<< orphan*/  ia_ifa; TYPE_2__ ia_prefixmask; TYPE_1__ ia_addr; struct in6_ifaddr* ia_next; } ;
struct in6_addr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct in6_addr*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct in6_addr*) ; 
 scalar_t__ FUNC4 (struct in6_addr*) ; 
 int /*<<< orphan*/  in6_ifaddr_rwlock ; 
 struct in6_ifaddr* in6_ifaddrs ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int
FUNC7(struct in6_addr *in6)
{
	struct in6_ifaddr *ia;

	if (FUNC4(in6) || FUNC3(in6))
		return (1);

	FUNC6(&in6_ifaddr_rwlock);
	for (ia = in6_ifaddrs; ia; ia = ia->ia_next) {
		FUNC0(&ia->ia_ifa);
		if (FUNC2(in6, &ia->ia_addr.sin6_addr,
		    &ia->ia_prefixmask.sin6_addr)) {
			FUNC1(&ia->ia_ifa);
			FUNC5(&in6_ifaddr_rwlock);
			return (1);
		}
		FUNC1(&ia->ia_ifa);
	}
	FUNC5(&in6_ifaddr_rwlock);
	return (0);
}