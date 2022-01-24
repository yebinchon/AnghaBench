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
struct timeval {int dummy; } ;
struct in6_addrlifetime_i {int /*<<< orphan*/  ia6ti_pltime; int /*<<< orphan*/  ia6ti_vltime; int /*<<< orphan*/  ia6ti_preferred; int /*<<< orphan*/  ia6ti_expire; int /*<<< orphan*/  ia6ti_base_uptime; int /*<<< orphan*/  ia6ti_base_calendartime; } ;
struct in6_ifaddr {struct in6_addrlifetime_i ia6_lifetime; } ;
struct in6_addrlifetime {int /*<<< orphan*/  ia6t_pltime; int /*<<< orphan*/  ia6t_vltime; int /*<<< orphan*/  ia6t_preferred; int /*<<< orphan*/  ia6t_expire; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct timeval,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct timeval*) ; 
 int /*<<< orphan*/  FUNC2 () ; 

void
FUNC3(struct in6_ifaddr *ia6, struct in6_addrlifetime *t_src)
{
	struct in6_addrlifetime_i *t_dst = &ia6->ia6_lifetime;
	struct timeval caltime;

	/* account for system time change */
	FUNC1(&caltime);
	t_dst->ia6ti_base_calendartime +=
	    FUNC0(caltime,
	    t_dst->ia6ti_base_calendartime, FUNC2(),
	    t_dst->ia6ti_base_uptime);

	/* trust the caller for the values */
	t_dst->ia6ti_expire = t_src->ia6t_expire;
	t_dst->ia6ti_preferred = t_src->ia6t_preferred;
	t_dst->ia6ti_vltime = t_src->ia6t_vltime;
	t_dst->ia6ti_pltime = t_src->ia6t_pltime;
}