#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_int32_t ;
struct in6_addr {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * s6id_list; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct in6_addr*) ; 
 int FUNC1 (struct in6_addr*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  scope6_lock ; 
 TYPE_1__ sid_default ; 

u_int32_t
FUNC4(struct in6_addr *addr)
{
	u_int32_t id = 0;
	int index = FUNC1(addr);

	/*
	 * special case: The loopback address should be considered as
	 * link-local, but there's no ambiguity in the syntax.
	 */
	if (FUNC0(addr))
		return (0);

	FUNC2(&scope6_lock);
	id = sid_default.s6id_list[index];
	FUNC3(&scope6_lock);

	return (id);
}