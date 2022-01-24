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
struct TYPE_3__ {int /*<<< orphan*/  s_addr; } ;
struct TYPE_4__ {scalar_t__ sin_family; TYPE_1__ sin_addr; } ;
struct in_ifaddr {int /*<<< orphan*/  ia_ifa; TYPE_2__ ia_addr; } ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 scalar_t__ FUNC0 (struct in_ifaddr*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LCK_RW_ASSERT_EXCLUSIVE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct in_ifaddr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ia_hash ; 
 int /*<<< orphan*/  in_ifaddr_rwlock ; 
 int /*<<< orphan*/  FUNC6 (char*,struct in_ifaddr*) ; 

__attribute__((used)) static void
FUNC7(struct in_ifaddr *ia)
{
	FUNC4(in_ifaddr_rwlock, LCK_RW_ASSERT_EXCLUSIVE);
	FUNC2(&ia->ia_ifa);

	if (ia->ia_addr.sin_family != AF_INET) {
		FUNC6("attempt to insert wrong ia %p into hash table\n", ia);
		/* NOTREACHED */
	} else if (FUNC0(ia)) {
		FUNC6("attempt to double-insert ia %p into hash table\n", ia);
		/* NOTREACHED */
	}
	FUNC5(FUNC3(ia->ia_addr.sin_addr.s_addr),
	    ia, ia_hash);
	FUNC1(&ia->ia_ifa);
}