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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  TIMER_CALL_SYS_CRITICAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ ntp_loop_active ; 
 int /*<<< orphan*/  ntp_loop_deadline ; 
 int /*<<< orphan*/  ntp_loop_period ; 
 int /*<<< orphan*/  ntp_loop_update ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ updated ; 

__attribute__((used)) static void
FUNC4(void)
{

	FUNC0();
	if (--ntp_loop_active == 0) {
		/*
		 * Activate the timer only if the next second adjustment might change.
		 * ntp_update_second checks it and sets updated accordingly.
		 */
		if (updated) {
			FUNC1(ntp_loop_period, FUNC2(), &ntp_loop_deadline);

			if (!FUNC3(&ntp_loop_update, ntp_loop_deadline, TIMER_CALL_SYS_CRITICAL))
					ntp_loop_active++;
		}
	}

}