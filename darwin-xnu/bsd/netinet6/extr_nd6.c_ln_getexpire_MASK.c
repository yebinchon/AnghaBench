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
typedef  scalar_t__ uint64_t ;
struct timeval {int dummy; } ;
struct rtentry {scalar_t__ base_calendartime; scalar_t__ base_uptime; } ;
struct llinfo_nd6 {scalar_t__ ln_expire; struct rtentry* ln_rt; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct timeval,scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct timeval*) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static uint64_t
FUNC4(struct llinfo_nd6 *ln)
{
	struct timeval caltime;
	uint64_t expiry;

	if (ln->ln_expire != 0) {
		struct rtentry *rt = ln->ln_rt;

		FUNC1(rt != NULL);
		/* account for system time change */
		FUNC2(&caltime);

		rt->base_calendartime +=
		    FUNC0(caltime,
		    rt->base_calendartime, FUNC3(), rt->base_uptime);

		expiry = rt->base_calendartime +
		    ln->ln_expire - rt->base_uptime;
	} else {
		expiry = 0;
	}
	return (expiry);
}