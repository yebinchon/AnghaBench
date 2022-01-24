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
struct rtentry {int /*<<< orphan*/  rt_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rtentry*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rte_mtx_grp ; 

__attribute__((used)) static void
FUNC2(struct rtentry *rt)
{
	FUNC0(rt);
	FUNC1(&rt->rt_lock, rte_mtx_grp);
}