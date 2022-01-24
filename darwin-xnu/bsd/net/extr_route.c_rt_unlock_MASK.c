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

/* Variables and functions */
 int RTD_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int rte_debug ; 
 int /*<<< orphan*/  FUNC1 (struct rtentry_dbg*) ; 

void
FUNC2(struct rtentry *rt)
{
	if (rte_debug & RTD_DEBUG)
		FUNC1((struct rtentry_dbg *)rt);
	FUNC0(&rt->rt_lock);

}