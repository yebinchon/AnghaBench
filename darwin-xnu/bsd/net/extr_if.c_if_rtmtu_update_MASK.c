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
struct radix_node_head {int /*<<< orphan*/  (* rnh_walktree ) (struct radix_node_head*,int /*<<< orphan*/ ,struct ifnet*) ;} ;
struct ifnet {int dummy; } ;

/* Variables and functions */
 int AF_MAX ; 
 int /*<<< orphan*/  if_rtmtu ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rnh_lock ; 
 int /*<<< orphan*/  FUNC2 () ; 
 struct radix_node_head** rt_tables ; 
 int /*<<< orphan*/  FUNC3 (struct radix_node_head*,int /*<<< orphan*/ ,struct ifnet*) ; 

__attribute__((used)) static void
FUNC4(struct ifnet *ifp)
{
	struct radix_node_head *rnh;
	int p;

	for (p = 0; p < AF_MAX + 1; p++) {
		if ((rnh = rt_tables[p]) == NULL)
			continue;

		FUNC0(rnh_lock);
		(void) rnh->rnh_walktree(rnh, if_rtmtu, ifp);
		FUNC1(rnh_lock);
	}
	FUNC2();
}