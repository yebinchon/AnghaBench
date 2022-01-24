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
typedef  size_t u_int32_t ;
struct TYPE_4__ {int /*<<< orphan*/ * s6_addr16; } ;
struct sockaddr_in6 {size_t sin6_scope_id; TYPE_1__ sin6_addr; } ;
struct ifnet {int dummy; } ;

/* Variables and functions */
 int ENXIO ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (size_t) ; 
 size_t if_index ; 
 struct ifnet** ifindex2ifnet ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 size_t FUNC5 (TYPE_1__*) ; 

int
FUNC6(struct sockaddr_in6 *sin6, int defaultok)
{
	struct ifnet *ifp;
	u_int32_t zoneid;

	if ((zoneid = sin6->sin6_scope_id) == 0 && defaultok)
		zoneid = FUNC5(&sin6->sin6_addr);

	if (zoneid != 0 &&
	    (FUNC1(&sin6->sin6_addr) ||
	    FUNC0(&sin6->sin6_addr))) {
		/*
		 * At this moment, we only check interface-local and
		 * link-local scope IDs, and use interface indices as the
		 * zone IDs assuming a one-to-one mapping between interfaces
		 * and links.
		 */
		if (if_index < zoneid)
			return (ENXIO);
		FUNC4();
		ifp = ifindex2ifnet[zoneid];
		if (ifp == NULL) {	/* XXX: this can happen for some OS */
			FUNC3();
			return (ENXIO);
		}
		FUNC3();
		/* XXX assignment to 16bit from 32bit variable */
		sin6->sin6_addr.s6_addr16[1] = FUNC2(zoneid & 0xffff);

		sin6->sin6_scope_id = 0;
	}

	return (0);
}