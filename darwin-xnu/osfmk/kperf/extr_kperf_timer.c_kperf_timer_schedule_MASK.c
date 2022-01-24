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
struct kperf_timer {scalar_t__ period; int /*<<< orphan*/  tcall; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  PERF_TM_SCHED ; 
 int /*<<< orphan*/  TIMER_CALL_SYS_CRITICAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct kperf_timer *timer, uint64_t now)
{
	FUNC0(PERF_TM_SCHED, timer->period);

	/* if we re-programmed the timer to zero, just drop it */
	if (timer->period == 0) {
		return;
	}

	/* calculate deadline */
	uint64_t deadline = now + timer->period;

	/* re-schedule the timer, making sure we don't apply slop */
	FUNC1(&timer->tcall, deadline, TIMER_CALL_SYS_CRITICAL);
}