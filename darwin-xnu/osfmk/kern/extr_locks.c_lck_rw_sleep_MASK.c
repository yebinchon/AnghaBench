#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ wait_result_t ;
typedef  int /*<<< orphan*/  wait_interrupt_t ;
typedef  TYPE_1__* thread_t ;
typedef  int lck_sleep_action_t ;
typedef  int /*<<< orphan*/  lck_rw_type_t ;
typedef  int /*<<< orphan*/  lck_rw_t ;
typedef  int /*<<< orphan*/  event_t ;
struct TYPE_4__ {int sched_flags; int /*<<< orphan*/  rwlock_count; } ;

/* Variables and functions */
 int LCK_SLEEP_EXCLUSIVE ; 
 int LCK_SLEEP_MASK ; 
 int LCK_SLEEP_PROMOTED_PRI ; 
 int LCK_SLEEP_SHARED ; 
 int LCK_SLEEP_UNLOCK ; 
 int /*<<< orphan*/  THREAD_CONTINUE_NULL ; 
 scalar_t__ THREAD_WAITING ; 
 int TH_SFLAG_RW_PROMOTED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

wait_result_t
FUNC11(
        lck_rw_t		*lck,
	lck_sleep_action_t	lck_sleep_action,
	event_t			event,
	wait_interrupt_t	interruptible)
{
	wait_result_t	res;
	lck_rw_type_t	lck_rw_type;
	thread_t		thread = FUNC2();

	if ((lck_sleep_action & ~LCK_SLEEP_MASK) != 0)
		FUNC8("Invalid lock sleep action %x\n", lck_sleep_action);

	if (lck_sleep_action & LCK_SLEEP_PROMOTED_PRI) {
		/*
		 * Although we are dropping the RW lock, the intent in most cases
		 * is that this thread remains as an observer, since it may hold
		 * some secondary resource, but must yield to avoid deadlock. In
		 * this situation, make sure that the thread is boosted to the
		 * RW lock ceiling while blocked, so that it can re-acquire the
		 * RW lock at that priority.
		 */
		thread->rwlock_count++;
	}

	res = FUNC1(event, interruptible);
	if (res == THREAD_WAITING) {
		lck_rw_type = FUNC4(lck);
		res = FUNC9(THREAD_CONTINUE_NULL);
		if (!(lck_sleep_action & LCK_SLEEP_UNLOCK)) {
			if (!(lck_sleep_action & (LCK_SLEEP_SHARED|LCK_SLEEP_EXCLUSIVE)))
				FUNC5(lck, lck_rw_type);
			else if (lck_sleep_action & LCK_SLEEP_EXCLUSIVE)
				FUNC6(lck);
			else
				FUNC7(lck);
		}
	}
	else
	if (lck_sleep_action & LCK_SLEEP_UNLOCK)
		(void)FUNC4(lck);

	if (lck_sleep_action & LCK_SLEEP_PROMOTED_PRI) {
		if ((thread->rwlock_count-- == 1 /* field now 0 */) && (thread->sched_flags & TH_SFLAG_RW_PROMOTED)) {
			/* sched_flags checked without lock, but will be rechecked while clearing */

			/* Only if the caller wanted the lck_rw_t returned unlocked should we drop to 0 */
			FUNC0(lck_sleep_action & LCK_SLEEP_UNLOCK);

			FUNC3(thread, FUNC10(event));
		}
	}

	return res;
}