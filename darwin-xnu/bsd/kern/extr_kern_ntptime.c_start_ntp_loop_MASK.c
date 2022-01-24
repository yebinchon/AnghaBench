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
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TIMER_CALL_SYS_CRITICAL ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  ntp_loop_active ; 
 scalar_t__ ntp_loop_deadline ; 
 scalar_t__ ntp_loop_period ; 
 int /*<<< orphan*/  ntp_loop_update ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(void)
{
	boolean_t enable;

	FUNC0(enable);

	ntp_loop_deadline = FUNC2() + ntp_loop_period;

	if (!FUNC3(&ntp_loop_update, ntp_loop_deadline, TIMER_CALL_SYS_CRITICAL)) {
			ntp_loop_active++;
	}

	FUNC1(enable);
}