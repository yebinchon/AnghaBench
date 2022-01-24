#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
typedef  TYPE_1__* thread_t ;
struct TYPE_7__ {scalar_t__ sched_mode; int base_pri; int state; scalar_t__ last_made_runnable_time; scalar_t__ last_basepri_change_time; } ;

/* Variables and functions */
 int BASEPRI_RTQUEUES ; 
 int MINPRI ; 
 int /*<<< orphan*/  PERFCONTROL_ATTR_UPDATE ; 
 int /*<<< orphan*/  PERFCONTROL_CALLOUT_WAKE_UNSAFE ; 
 int /*<<< orphan*/  SETPRI_DEFAULT ; 
 scalar_t__ THREAD_NOT_RUNNABLE ; 
 scalar_t__ TH_MODE_REALTIME ; 
 int TH_RUN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 

void
FUNC6(thread_t thread, int priority)
{
	FUNC0(priority >= MINPRI);
	uint64_t ctime = 0;

	if (thread->sched_mode == TH_MODE_REALTIME)
		FUNC0(priority <= BASEPRI_RTQUEUES);
	else
		FUNC0(priority < BASEPRI_RTQUEUES);

	int old_base_pri = thread->base_pri;
	thread->base_pri = priority;

	if ((thread->state & TH_RUN) == TH_RUN) {
		FUNC0(thread->last_made_runnable_time != THREAD_NOT_RUNNABLE);
		ctime = FUNC2();
		thread->last_basepri_change_time = ctime;
	} else {
		FUNC0(thread->last_basepri_change_time == THREAD_NOT_RUNNABLE);
		FUNC0(thread->last_made_runnable_time == THREAD_NOT_RUNNABLE);
	}

	/* 
	 * Currently the perfcontrol_attr depends on the base pri of the 
	 * thread. Therefore, we use this function as the hook for the 
	 * perfcontrol callout. 
	 */
	if (thread == FUNC1() && old_base_pri != priority) {
		if (!ctime) {
		    ctime = FUNC2();
		}
		FUNC3(PERFCONTROL_ATTR_UPDATE,
			ctime, PERFCONTROL_CALLOUT_WAKE_UNSAFE, thread);
	}
	FUNC4(thread);

	FUNC5(thread, SETPRI_DEFAULT);
}