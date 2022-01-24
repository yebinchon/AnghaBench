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
struct nd_prefix {scalar_t__ ndpr_expire; scalar_t__ ndpr_vltime; scalar_t__ ndpr_base_calendartime; scalar_t__ ndpr_base_uptime; } ;

/* Variables and functions */
 scalar_t__ ND6_INFINITE_LIFETIME ; 
 scalar_t__ FUNC0 (struct timeval,scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct timeval*) ; 
 int /*<<< orphan*/  FUNC2 () ; 

uint64_t
FUNC3(struct nd_prefix *pr)
{
	struct timeval caltime;
	uint64_t expiry;

	if (pr->ndpr_expire != 0 && pr->ndpr_vltime != ND6_INFINITE_LIFETIME) {
		/* account for system time change */
		FUNC1(&caltime);

		pr->ndpr_base_calendartime +=
		    FUNC0(caltime,
		    pr->ndpr_base_calendartime, FUNC2(),
		    pr->ndpr_base_uptime);

		expiry = pr->ndpr_base_calendartime +
		    pr->ndpr_expire - pr->ndpr_base_uptime;
	} else {
		expiry = 0;
	}
	return (expiry);
}