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
struct rtentry_dbg {int dummy; } ;
struct rtentry {int /*<<< orphan*/  rt_lock; } ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 int RTD_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (struct rtentry*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int rte_debug ; 
 int /*<<< orphan*/  FUNC3 (struct rtentry_dbg*) ; 

void
FUNC4(struct rtentry *rt, boolean_t spin)
{
	FUNC0(rt);
	if (spin)
		FUNC2(&rt->rt_lock);
	else
		FUNC1(&rt->rt_lock);
	if (rte_debug & RTD_DEBUG)
		FUNC3((struct rtentry_dbg *)rt);
}