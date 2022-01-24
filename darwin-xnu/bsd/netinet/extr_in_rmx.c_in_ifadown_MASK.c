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
struct radix_node_head {int /*<<< orphan*/  (* rnh_walktree ) (struct radix_node_head*,int /*<<< orphan*/ ,struct in_ifadown_arg*) ;} ;
struct in_ifadown_arg {int del; struct ifaddr* ifa; struct radix_node_head* rnh; } ;
struct ifaddr {int /*<<< orphan*/  ifa_flags; TYPE_1__* ifa_addr; } ;
struct TYPE_2__ {size_t sa_family; } ;

/* Variables and functions */
 size_t AF_INET ; 
 int /*<<< orphan*/  FUNC0 (struct ifaddr*) ; 
 int /*<<< orphan*/  IFA_ROUTE ; 
 int /*<<< orphan*/  FUNC1 (struct ifaddr*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LCK_MTX_ASSERT_OWNED ; 
 int /*<<< orphan*/  in_ifadownkill ; 
 int /*<<< orphan*/  rnh_lock ; 
 int /*<<< orphan*/  FUNC3 () ; 
 struct radix_node_head** rt_tables ; 
 int /*<<< orphan*/  FUNC4 (struct radix_node_head*,int /*<<< orphan*/ ,struct in_ifadown_arg*) ; 

int
FUNC5(struct ifaddr *ifa, int delete)
{
	struct in_ifadown_arg arg;
	struct radix_node_head *rnh;

	FUNC2(rnh_lock, LCK_MTX_ASSERT_OWNED);

	/*
	 * Holding rnh_lock here prevents the possibility of
	 * ifa from changing (e.g. in_ifinit), so it is safe
	 * to access its ifa_addr without locking.
	 */
	if (ifa->ifa_addr->sa_family != AF_INET)
		return (1);

	/* trigger route cache reevaluation */
	FUNC3();

	arg.rnh = rnh = rt_tables[AF_INET];
	arg.ifa = ifa;
	arg.del = delete;
	rnh->rnh_walktree(rnh, in_ifadownkill, &arg);
	FUNC0(ifa);
	ifa->ifa_flags &= ~IFA_ROUTE;
	FUNC1(ifa);
	return (0);
}