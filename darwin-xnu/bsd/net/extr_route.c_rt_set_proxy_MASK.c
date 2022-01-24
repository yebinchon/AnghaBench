#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct rtentry {int rt_flags; } ;
struct radix_node_head {int /*<<< orphan*/  (* rnh_walktree_from ) (struct radix_node_head*,TYPE_1__*,scalar_t__,int /*<<< orphan*/ ,struct rtentry*) ;} ;
typedef  scalar_t__ boolean_t ;
struct TYPE_3__ {size_t sa_family; } ;

/* Variables and functions */
 int RTF_CLONING ; 
 int RTF_PRCLONING ; 
 int RTF_PROXY ; 
 int /*<<< orphan*/  FUNC0 (struct rtentry*) ; 
 int /*<<< orphan*/  FUNC1 (struct rtentry*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rnh_lock ; 
 int /*<<< orphan*/  rt_fixdelete ; 
 TYPE_1__* FUNC4 (struct rtentry*) ; 
 scalar_t__ FUNC5 (struct rtentry*) ; 
 struct radix_node_head** rt_tables ; 
 int /*<<< orphan*/  FUNC6 (struct radix_node_head*,TYPE_1__*,scalar_t__,int /*<<< orphan*/ ,struct rtentry*) ; 

void
FUNC7(struct rtentry *rt, boolean_t set)
{
	FUNC2(rnh_lock);
	FUNC0(rt);
	/*
	 * Search for any cloned routes which might have
	 * been formed from this node, and delete them.
	 */
	if (rt->rt_flags & (RTF_CLONING | RTF_PRCLONING)) {
		struct radix_node_head *rnh = rt_tables[FUNC4(rt)->sa_family];

		if (set)
			rt->rt_flags |= RTF_PROXY;
		else
			rt->rt_flags &= ~RTF_PROXY;

		FUNC1(rt);
		if (rnh != NULL && FUNC5(rt)) {
			rnh->rnh_walktree_from(rnh, FUNC4(rt), FUNC5(rt),
			    rt_fixdelete, rt);
		}
	} else {
		FUNC1(rt);
	}
	FUNC3(rnh_lock);
}