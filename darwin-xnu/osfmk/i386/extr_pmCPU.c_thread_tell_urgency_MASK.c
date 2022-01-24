#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  thread_t ;
typedef  scalar_t__ boolean_t ;
struct TYPE_4__ {int /*<<< orphan*/  cpu_nthread; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* pmThreadTellUrgency ) (int,scalar_t__,scalar_t__) ;} ;

/* Variables and functions */
 int DBG_FUNC_END ; 
 int DBG_FUNC_START ; 
 int /*<<< orphan*/  DBG_MACH_SCHED ; 
 scalar_t__ FALSE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MACH_URGENCY ; 
 int /*<<< orphan*/  FUNC1 (int,int,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ TRUE ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 () ; 
 TYPE_2__* FUNC5 () ; 
 scalar_t__ FUNC6 () ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 scalar_t__ FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/  (*) (int,scalar_t__,scalar_t__),scalar_t__) ; 
 TYPE_1__* pmDispatch ; 
 int /*<<< orphan*/  pmInitDone ; 
 int /*<<< orphan*/  FUNC11 (int,scalar_t__,scalar_t__) ; 
 scalar_t__ urgency_notification_assert_abstime_threshold ; 
 scalar_t__ urgency_notification_max_recorded ; 
 int /*<<< orphan*/ ** urgency_stats ; 

void
FUNC12(int urgency,
    uint64_t rt_period,
    uint64_t rt_deadline,
    uint64_t sched_latency,
    thread_t nthread)
{
	uint64_t	urgency_notification_time_start = 0, delta;
	boolean_t	urgency_assert = (urgency_notification_assert_abstime_threshold != 0);
	FUNC3(FUNC6() > 0 || FUNC9() == FALSE);
#if	DEBUG
	urgency_stats[cpu_number() % 64][urgency]++;
#endif
	if (!pmInitDone
	    || pmDispatch == NULL
	    || pmDispatch->pmThreadTellUrgency == NULL)
		return;

	FUNC1(FUNC0(DBG_MACH_SCHED,MACH_URGENCY) | DBG_FUNC_START, urgency, rt_period, rt_deadline, sched_latency, 0);

	if (FUNC2((urgency_assert == TRUE)))
		urgency_notification_time_start = FUNC7();

	FUNC5()->cpu_nthread = nthread;
	pmDispatch->pmThreadTellUrgency(urgency, rt_period, rt_deadline);

	if (FUNC2((urgency_assert == TRUE))) {
		delta = FUNC7() - urgency_notification_time_start;

		if (FUNC2(delta > urgency_notification_max_recorded)) {
			/* This is not synchronized, but it doesn't matter
			 * if we (rarely) miss an event, as it is statistically
			 * unlikely that it will never recur.
			 */
			urgency_notification_max_recorded = delta;

			if (FUNC2((delta > urgency_notification_assert_abstime_threshold) && !FUNC8()))
				FUNC10("Urgency notification callout %p exceeded threshold, 0x%llx abstime units", pmDispatch->pmThreadTellUrgency, delta);
		}
	}

	FUNC1(FUNC0(DBG_MACH_SCHED,MACH_URGENCY) | DBG_FUNC_END, urgency, rt_period, rt_deadline, 0, 0);
}