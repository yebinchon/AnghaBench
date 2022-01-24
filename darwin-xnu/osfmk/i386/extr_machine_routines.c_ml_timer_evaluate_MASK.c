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

/* Variables and functions */
 int /*<<< orphan*/  ASYNC ; 
 int /*<<< orphan*/  CPUMASK_ALL ; 
 int DBG_FUNC_END ; 
 int DBG_FUNC_START ; 
 int DECR_TIMER_RESCAN ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  ml_timer_eager_evaluation_max ; 
 int /*<<< orphan*/  ml_timer_eager_evaluations ; 
 int /*<<< orphan*/  ml_timer_evaluation_in_progress ; 
 int /*<<< orphan*/  ml_timer_evaluation_slock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  timer_queue_expire_rescan ; 

void FUNC7(void) {
	FUNC0(DECR_TIMER_RESCAN|DBG_FUNC_START, 0, 0, 0, 0, 0);

	uint64_t te_end, te_start = FUNC2();
	FUNC4(&ml_timer_evaluation_slock);
	ml_timer_evaluation_in_progress = TRUE;
	FUNC6();
	FUNC3(CPUMASK_ALL, ASYNC, timer_queue_expire_rescan, NULL);
	ml_timer_evaluation_in_progress = FALSE;
	ml_timer_eager_evaluations++;
	te_end = FUNC2();
	ml_timer_eager_evaluation_max = FUNC1(ml_timer_eager_evaluation_max, (te_end - te_start));
	FUNC5(&ml_timer_evaluation_slock);

	FUNC0(DECR_TIMER_RESCAN|DBG_FUNC_END, 0, 0, 0, 0, 0);
}