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
typedef  int u_int32_t ;
struct TYPE_4__ {scalar_t__* s6_addr16; } ;
struct sockaddr_in6 {int sin6_scope_id; TYPE_1__ sin6_addr; } ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 int ENXIO ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  LOG_NOTICE ; 
 int if_index ; 
 int /*<<< orphan*/ ** ifindex2ifnet ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (scalar_t__) ; 

int
FUNC7(struct sockaddr_in6 *sin6, boolean_t attachcheck)
{
	u_int32_t zoneid;

	if (sin6->sin6_scope_id != 0) {
		FUNC5(LOG_NOTICE,
		    "sa6_recoverscope: assumption failure (non 0 ID): %s%%%d\n",
		    FUNC4(&sin6->sin6_addr), sin6->sin6_scope_id);
		/* XXX: proceed anyway... */
	}
	if (FUNC1(&sin6->sin6_addr) ||
	    FUNC0(&sin6->sin6_addr)) {
		/*
		 * KAME assumption: link id == interface id
		 */
		zoneid = FUNC6(sin6->sin6_addr.s6_addr16[1]);
		if (zoneid) {
			/* sanity check */
			if (if_index < zoneid)
				return (ENXIO);
			/*
			 * We use the attachcheck parameter to skip the
			 * interface attachment check.
			 * Some callers might hold the ifnet_head lock in
			 * exclusive mode. This means that:
			 * 1) the interface can't go away -- hence we don't
			 *    need to perform this check
			 * 2) we can't perform this check because the lock is
			 *    in exclusive mode and trying to lock it in shared
			 *    mode would cause a deadlock.
			 */
			if (attachcheck) {
				FUNC3();
				if (ifindex2ifnet[zoneid] == NULL) {
					FUNC2();
					return (ENXIO);
				}
				FUNC2();
			}
			sin6->sin6_addr.s6_addr16[1] = 0;
			sin6->sin6_scope_id = zoneid;
		}
	}

	return (0);
}