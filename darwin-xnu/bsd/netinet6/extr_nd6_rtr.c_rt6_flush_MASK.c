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
struct radix_node_head {int /*<<< orphan*/  (* rnh_walktree ) (struct radix_node_head*,int /*<<< orphan*/ ,void*) ;} ;
struct in6_addr {int /*<<< orphan*/ * s6_addr16; } ;
struct ifnet {int /*<<< orphan*/  if_index; } ;

/* Variables and functions */
 size_t AF_INET6 ; 
 int /*<<< orphan*/  FUNC0 (struct in6_addr*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rnh_lock ; 
 int /*<<< orphan*/  rt6_deleteroute ; 
 struct radix_node_head** rt_tables ; 
 int /*<<< orphan*/  FUNC4 (struct radix_node_head*,int /*<<< orphan*/ ,void*) ; 

void
FUNC5(
	struct in6_addr *gateway,
	struct ifnet *ifp)
{
	struct radix_node_head *rnh = rt_tables[AF_INET6];

	/* We'll care only link-local addresses */
	if (!FUNC0(gateway)) {
		return;
	}
	FUNC2(rnh_lock);
	/* XXX: hack for KAME's link-local address kludge */
	gateway->s6_addr16[1] = FUNC1(ifp->if_index);

	rnh->rnh_walktree(rnh, rt6_deleteroute, (void *)gateway);
	FUNC3(rnh_lock);
}