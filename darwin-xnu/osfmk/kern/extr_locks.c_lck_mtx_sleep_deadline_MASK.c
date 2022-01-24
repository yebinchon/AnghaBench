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
typedef  scalar_t__ wait_interrupt_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  TYPE_1__* thread_t ;
typedef  int lck_sleep_action_t ;
typedef  int /*<<< orphan*/  lck_mtx_t ;
typedef  int /*<<< orphan*/ * event_t ;
struct TYPE_4__ {int sched_flags; int /*<<< orphan*/  rwlock_count; } ;

/* Variables and functions */
 int DBG_FUNC_END ; 
 int DBG_FUNC_START ; 
 int /*<<< orphan*/  DBG_MACH_LOCKS ; 
 int /*<<< orphan*/  FUNC0 (int,int,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LCK_MTX_SLEEP_DEADLINE_CODE ; 
 int LCK_SLEEP_MASK ; 
 int LCK_SLEEP_PROMOTED_PRI ; 
 int LCK_SLEEP_SPIN ; 
 int LCK_SLEEP_UNLOCK ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  THREAD_CONTINUE_NULL ; 
 scalar_t__ THREAD_WAITING ; 
 int TH_SFLAG_RW_PROMOTED ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

wait_result_t
FUNC12(
        lck_mtx_t		*lck,
	lck_sleep_action_t	lck_sleep_action,
	event_t			event,
	wait_interrupt_t	interruptible,
	uint64_t		deadline)
{
	wait_result_t   res;
	thread_t		thread = FUNC4();

	FUNC0(FUNC1(DBG_MACH_LOCKS, LCK_MTX_SLEEP_DEADLINE_CODE) | DBG_FUNC_START,
		     FUNC2(lck), (int)lck_sleep_action, FUNC2(event), (int)interruptible, 0);

	if ((lck_sleep_action & ~LCK_SLEEP_MASK) != 0)
		FUNC9("Invalid lock sleep action %x\n", lck_sleep_action);

	if (lck_sleep_action & LCK_SLEEP_PROMOTED_PRI) {
		/*
		 * See lck_mtx_sleep().
		 */
		thread->rwlock_count++;
	}

	res = FUNC3(event, interruptible, deadline);
	if (res == THREAD_WAITING) {
		FUNC7(lck);
		res = FUNC10(THREAD_CONTINUE_NULL);
		if (!(lck_sleep_action & LCK_SLEEP_UNLOCK)) {
			if ((lck_sleep_action & LCK_SLEEP_SPIN))
				FUNC6(lck);
			else
				FUNC5(lck);
		}
	}
	else
	if (lck_sleep_action & LCK_SLEEP_UNLOCK)
		FUNC7(lck);

	if (lck_sleep_action & LCK_SLEEP_PROMOTED_PRI) {
		if ((thread->rwlock_count-- == 1 /* field now 0 */) && (thread->sched_flags & TH_SFLAG_RW_PROMOTED)) {
			/* sched_flags checked without lock, but will be rechecked while clearing */
			FUNC8(thread, FUNC11(event));
		}
	}

	FUNC0(FUNC1(DBG_MACH_LOCKS, LCK_MTX_SLEEP_DEADLINE_CODE) | DBG_FUNC_END, (int)res, 0, 0, 0, 0);

	return res;
}