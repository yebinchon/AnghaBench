#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ wait_result_t ;
typedef  int /*<<< orphan*/  spl_t ;
typedef  int /*<<< orphan*/  sleep_type_t ;
typedef  int /*<<< orphan*/  mach_timespec_t ;
typedef  int /*<<< orphan*/  kern_return_t ;
typedef  int /*<<< orphan*/  event_t ;
typedef  TYPE_3__* clock_t ;
typedef  TYPE_4__* alarm_t ;
struct TYPE_13__ {scalar_t__ al_status; struct TYPE_13__* al_next; int /*<<< orphan*/  al_time; TYPE_2__* al_prev; } ;
struct TYPE_12__ {TYPE_1__* cl_ops; } ;
struct TYPE_11__ {TYPE_4__* al_next; } ;
struct TYPE_10__ {int /*<<< orphan*/  (* c_gettime ) (int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 scalar_t__ ALARM_DONE ; 
 scalar_t__ ALARM_FREE ; 
 scalar_t__ ALARM_SLEEP ; 
 TYPE_3__* CLOCK_NULL ; 
 int /*<<< orphan*/  KERN_ABORTED ; 
 int /*<<< orphan*/  KERN_FAILURE ; 
 int /*<<< orphan*/  KERN_INVALID_ARGUMENT ; 
 int /*<<< orphan*/  KERN_INVALID_VALUE ; 
 int /*<<< orphan*/  KERN_RESOURCE_SHORTAGE ; 
 int /*<<< orphan*/  KERN_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 size_t SYSTEM_CLOCK ; 
 int /*<<< orphan*/  THREAD_ABORTSAFE ; 
 scalar_t__ THREAD_AWAKENED ; 
 int /*<<< orphan*/  THREAD_CONTINUE_NULL ; 
 scalar_t__ THREAD_INTERRUPTED ; 
 scalar_t__ THREAD_WAITING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  alarm_zone ; 
 TYPE_4__* alrmfree ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_3__* clock_list ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static kern_return_t
FUNC9(
	clock_t				clock,
	sleep_type_t		sleep_type,
	mach_timespec_t		*sleep_time)
{
	alarm_t				alarm;
	mach_timespec_t		clock_time;
	kern_return_t		rvalue;
	int					chkstat;
	spl_t				s;

	if (clock == CLOCK_NULL)
		return (KERN_INVALID_ARGUMENT);

	if (clock != &clock_list[SYSTEM_CLOCK])
		return (KERN_FAILURE);

	/*
	 * Check sleep parameters. If parameters are invalid
	 * return an error, otherwise post alarm request.
	 */
	(*clock->cl_ops->c_gettime)(&clock_time);

	chkstat = FUNC4(sleep_type, sleep_time, &clock_time);
	if (chkstat < 0)
		return (KERN_INVALID_VALUE);
	rvalue = KERN_SUCCESS;
	if (chkstat > 0) {
		wait_result_t wait_result;

		/*
		 * Get alarm and add to clock alarm list.
		 */

		FUNC0(s);
		if ((alarm = alrmfree) == 0) {
			FUNC1(s);
			alarm = (alarm_t) FUNC8(alarm_zone);
			if (alarm == 0)
				return (KERN_RESOURCE_SHORTAGE);
			FUNC0(s);
		}
		else
			alrmfree = alarm->al_next;

		/*
		 * Wait for alarm to occur.
		 */
		wait_result = FUNC3((event_t)alarm, THREAD_ABORTSAFE);
		if (wait_result == THREAD_WAITING) {
			alarm->al_time = *sleep_time;
			alarm->al_status = ALARM_SLEEP;
			FUNC5(alarm);
			FUNC1(s);

			wait_result = FUNC7(THREAD_CONTINUE_NULL);

			/*
			 * Note if alarm expired normally or whether it
			 * was aborted. If aborted, delete alarm from
			 * clock alarm list. Return alarm to free list.
			 */
			FUNC0(s);
			if (alarm->al_status != ALARM_DONE) {
				FUNC2(wait_result != THREAD_AWAKENED);
				if (((alarm->al_prev)->al_next = alarm->al_next) != NULL)
					(alarm->al_next)->al_prev = alarm->al_prev;
				rvalue = KERN_ABORTED;
			}
			*sleep_time = alarm->al_time;
			alarm->al_status = ALARM_FREE;
		} else {
			FUNC2(wait_result == THREAD_INTERRUPTED);
			FUNC2(alarm->al_status == ALARM_FREE);
			rvalue = KERN_ABORTED;
		}
		alarm->al_next = alrmfree;
		alrmfree = alarm;
		FUNC1(s);
	}
	else
		*sleep_time = clock_time;

	return (rvalue);
}