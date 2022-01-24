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
typedef  scalar_t__ wait_result_t ;
typedef  int /*<<< orphan*/  wait_interrupt_t ;
typedef  int /*<<< orphan*/  lck_spin_t ;
typedef  int lck_sleep_action_t ;
typedef  int /*<<< orphan*/  event_t ;

/* Variables and functions */
 int LCK_SLEEP_MASK ; 
 int LCK_SLEEP_UNLOCK ; 
 int /*<<< orphan*/  THREAD_CONTINUE_NULL ; 
 scalar_t__ THREAD_WAITING ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

wait_result_t
FUNC5(
        lck_spin_t		*lck,
	lck_sleep_action_t	lck_sleep_action,
	event_t			event,
	wait_interrupt_t	interruptible)
{
	wait_result_t	res;
 
	if ((lck_sleep_action & ~LCK_SLEEP_MASK) != 0)
		FUNC3("Invalid lock sleep action %x\n", lck_sleep_action);

	res = FUNC0(event, interruptible);
	if (res == THREAD_WAITING) {
		FUNC2(lck);
		res = FUNC4(THREAD_CONTINUE_NULL);
		if (!(lck_sleep_action & LCK_SLEEP_UNLOCK))
			FUNC1(lck);
	}
	else
	if (lck_sleep_action & LCK_SLEEP_UNLOCK)
		FUNC2(lck);

	return res;
}