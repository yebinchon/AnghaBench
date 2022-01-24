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
struct rt_metrics {scalar_t__ rmx_expire; } ;
struct rtentry {scalar_t__ rt_expire; scalar_t__ base_calendartime; scalar_t__ base_uptime; struct rt_metrics rt_rmx; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct timeval,scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct timeval*) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static void
FUNC4(struct rtentry *in, struct rt_metrics *out)
{
	struct timeval caltime;

	FUNC1(in->rt_expire == 0 || in->rt_rmx.rmx_expire != 0);
	FUNC1(in->rt_expire != 0 || in->rt_rmx.rmx_expire == 0);

	*out = in->rt_rmx;

	if (in->rt_expire != 0) {
		/* account for system time change */
		FUNC2(&caltime);

		in->base_calendartime +=
		    FUNC0(caltime,
		    in->base_calendartime, FUNC3(), in->base_uptime);

		out->rmx_expire = in->base_calendartime +
		    in->rt_expire - in->base_uptime;
	} else {
		out->rmx_expire = 0;
	}
}