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
struct rtentry {struct ifaddr* rt_ifa; } ;
struct ifaddr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ifaddr*) ; 
 int /*<<< orphan*/  FUNC1 (struct ifaddr*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LCK_MTX_ASSERT_OWNED ; 
 int /*<<< orphan*/  FUNC3 (struct rtentry*) ; 
 int /*<<< orphan*/  FUNC4 (struct rtentry*) ; 
 int /*<<< orphan*/  rnh_lock ; 

void
FUNC5(struct rtentry *rt, struct ifaddr *ifa)
{
	FUNC2(rnh_lock, LCK_MTX_ASSERT_OWNED);

	FUNC4(rt);

	if (rt->rt_ifa == ifa)
		return;

	/* Become a regular mutex, just in case */
	FUNC3(rt);

	/* Release the old ifa */
	if (rt->rt_ifa)
		FUNC1(rt->rt_ifa);

	/* Set rt_ifa */
	rt->rt_ifa = ifa;

	/* Take a reference to the ifa */
	if (rt->rt_ifa)
		FUNC0(rt->rt_ifa);
}