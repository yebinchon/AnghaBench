#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* uthread_t ;
typedef  scalar_t__ uint32_t ;
struct _throttle_io_info_t {scalar_t__ throttle_io_period_num; int* throttle_io_periods; int /*<<< orphan*/ * throttle_last_IO_pid; int /*<<< orphan*/  throttle_io_count; int /*<<< orphan*/  throttle_lock; int /*<<< orphan*/ * throttle_uthlist; } ;
typedef  int /*<<< orphan*/  caddr_t ;
typedef  int /*<<< orphan*/  boolean_t ;
struct TYPE_5__ {scalar_t__ uu_lowpri_window; int uu_throttle_bc; int uu_on_throttlelist; int uu_was_rethrottled; char* uu_wmesg; int uu_is_throttled; struct _throttle_io_info_t* uu_throttle_info; int /*<<< orphan*/  uu_rethrottle_lock; int /*<<< orphan*/  uu_thread; } ;

/* Variables and functions */
 int /*<<< orphan*/  DBG_FSRW ; 
 int DBG_FUNC_END ; 
 int DBG_FUNC_NONE ; 
 int DBG_FUNC_START ; 
 int /*<<< orphan*/  DBG_THROTTLE ; 
 int /*<<< orphan*/  FALSE ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int PROCESS_THROTTLED ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  THREAD_CONTINUE_NULL ; 
 int /*<<< orphan*/  THREAD_UNINT ; 
 int THROTTLE_ENGAGED ; 
 int THROTTLE_LEVEL_END ; 
 void* THROTTLE_LEVEL_NONE ; 
 int THROTTLE_LEVEL_START ; 
 int THROTTLE_LEVEL_THROTTLED ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int FUNC16 (struct _throttle_io_info_t*,TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct _throttle_io_info_t*) ; 
 int FUNC18 (struct _throttle_io_info_t*,int*,int*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * throttle_windows_msecs ; 
 int /*<<< orphan*/ * throttled_count ; 
 int /*<<< orphan*/  uu_throttlelist ; 

uint32_t
FUNC20(int sleep_amount)
{
	uthread_t ut;
	struct _throttle_io_info_t *info;
	int	throttle_type = 0;
	int	mylevel = 0;
	int	throttling_level = THROTTLE_LEVEL_NONE;
	int	sleep_cnt = 0;
	uint32_t  throttle_io_period_num = 0;
	boolean_t insert_tail = TRUE;
	boolean_t s;

	ut = FUNC6(FUNC5());

	if (ut->uu_lowpri_window == 0)
		return (0);

	info = ut->uu_throttle_info;

	if (info == NULL) {
		ut->uu_throttle_bc = false;
		ut->uu_lowpri_window = 0;
		return (0);
	}
	FUNC7(&info->throttle_lock);
	FUNC3(ut->uu_on_throttlelist < THROTTLE_LEVEL_THROTTLED);

	if (sleep_amount == 0)
		goto done;

	if (sleep_amount == 1 && !ut->uu_throttle_bc)
		sleep_amount = 0;

	throttle_io_period_num = info->throttle_io_period_num;

	ut->uu_was_rethrottled = false;

	while ( (throttle_type = FUNC18(info, &mylevel, &throttling_level)) ) {

		if (throttle_type == THROTTLE_ENGAGED) {
			if (sleep_amount == 0)
				break;			
			if (info->throttle_io_period_num < throttle_io_period_num)
				break;
			if ((info->throttle_io_period_num - throttle_io_period_num) >= (uint32_t)sleep_amount)
				break;
		}
		/*
		 * keep the same position in the list if "rethrottle_thread" changes our throttle level  and
		 * then puts us back to the original level before we get a chance to run
		 */
		if (ut->uu_on_throttlelist >= THROTTLE_LEVEL_THROTTLED && ut->uu_on_throttlelist != mylevel) {
			/*
			 * must have been awakened via "rethrottle_thread" (the timer pulls us off the list)
			 * and we've changed our throttling level, so pull ourselves off of the appropriate list
			 * and make sure we get put on the tail of the new list since we're starting anew w/r to
			 * the throttling engine
			 */
			FUNC2(&info->throttle_uthlist[ut->uu_on_throttlelist], ut, uu_throttlelist);
			ut->uu_on_throttlelist = THROTTLE_LEVEL_NONE;
			insert_tail = TRUE;
		}
		if (ut->uu_on_throttlelist < THROTTLE_LEVEL_THROTTLED) {
			if (FUNC16(info, ut, mylevel, insert_tail) == THROTTLE_LEVEL_END)
				goto done;
		}
		FUNC3(throttling_level >= THROTTLE_LEVEL_START && throttling_level <= THROTTLE_LEVEL_END);

		s = FUNC12(FALSE);
		FUNC10(&ut->uu_rethrottle_lock);

		/*
		 * this is the critical section w/r to our interaction
		 * with "rethrottle_thread"
		 */
		if (ut->uu_was_rethrottled) {

			FUNC11(&ut->uu_rethrottle_lock);
			FUNC12(s);
			FUNC9(&info->throttle_lock);

			FUNC1((FUNC0(DBG_FSRW, 103)), FUNC15(ut->uu_thread), ut->uu_on_throttlelist, 0, 0, 0);

			ut->uu_was_rethrottled = false;
			continue;
		}
		FUNC1((FUNC0(DBG_THROTTLE, PROCESS_THROTTLED)) | DBG_FUNC_NONE,
				info->throttle_last_IO_pid[throttling_level], throttling_level, FUNC13(), mylevel, 0);
		
		if (sleep_cnt == 0) {
			FUNC1((FUNC0(DBG_FSRW, 97)) | DBG_FUNC_START,
					      throttle_windows_msecs[mylevel], info->throttle_io_periods[mylevel], info->throttle_io_count, 0, 0);
			throttled_count[mylevel]++;
		}
		ut->uu_wmesg = "throttle_lowpri_io";

		FUNC4((caddr_t)&ut->uu_on_throttlelist, THREAD_UNINT);

		ut->uu_is_throttled = true;
		FUNC11(&ut->uu_rethrottle_lock);
		FUNC12(s);

		FUNC8(&info->throttle_lock);

		FUNC14(THREAD_CONTINUE_NULL);

		ut->uu_wmesg = NULL;

		ut->uu_is_throttled = false;
		ut->uu_was_rethrottled = false;

		FUNC7(&info->throttle_lock);

		sleep_cnt++;
		
		if (sleep_amount == 0)
			insert_tail = FALSE;
		else if (info->throttle_io_period_num < throttle_io_period_num ||
			 (info->throttle_io_period_num - throttle_io_period_num) >= (uint32_t)sleep_amount) {
			insert_tail = FALSE;
			sleep_amount = 0;
		}
	}
done:
	if (ut->uu_on_throttlelist >= THROTTLE_LEVEL_THROTTLED) {
		FUNC2(&info->throttle_uthlist[ut->uu_on_throttlelist], ut, uu_throttlelist);
		ut->uu_on_throttlelist = THROTTLE_LEVEL_NONE;
	}
	FUNC8(&info->throttle_lock);

	if (sleep_cnt) {
		FUNC1((FUNC0(DBG_FSRW, 97)) | DBG_FUNC_END,
				      throttle_windows_msecs[mylevel], info->throttle_io_periods[mylevel], info->throttle_io_count, 0, 0);
		/*
		 * We update the stats for the last pid which opened a throttle window for the throttled thread.
		 * This might not be completely accurate since the multiple throttles seen by the lower tier pid
		 * might have been caused by various higher prio pids. However, updating these stats accurately 
		 * means doing a proc_find while holding the throttle lock which leads to deadlock.
		 */
		FUNC19(info->throttle_last_IO_pid[throttling_level], sleep_cnt);
	}

	ut->uu_throttle_info = NULL;
	ut->uu_throttle_bc = false;
	ut->uu_lowpri_window = 0;

	FUNC17(info);

	return (sleep_cnt);
}