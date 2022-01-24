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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__,...) ; 
 unsigned int KPERF_SAMPLING_OFF ; 
 unsigned int KPERF_SAMPLING_SHUTDOWN ; 
 int /*<<< orphan*/  PERF_PET_END ; 
 int /*<<< orphan*/  PERF_PET_SCHED ; 
 int /*<<< orphan*/  SAMPLE_OFF ; 
 int /*<<< orphan*/  SAMPLE_SHUTDOWN ; 
 int /*<<< orphan*/  TIMER_CALL_SYS_CRITICAL ; 
 unsigned int FUNC1 () ; 
 size_t kperf_timerc ; 
 struct kperf_timer* kperf_timerv ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ min_period_pet_abstime ; 
 size_t pet_timer_id ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 

void
FUNC4(uint64_t elapsed_ticks)
{
	struct kperf_timer *timer = NULL;
	uint64_t period = 0;
	uint64_t deadline;

	/*
	 * If the pet_timer_id is invalid, it has been disabled, so this should
	 * do nothing.
	 */
	if (pet_timer_id >= kperf_timerc) {
		return;
	}

	unsigned int status = FUNC1();
	/* do not reprogram the timer if it has been shutdown or sampling is off */
	if (status == KPERF_SAMPLING_OFF) {
		FUNC0(PERF_PET_END, SAMPLE_OFF);
		return;
	} else if (status == KPERF_SAMPLING_SHUTDOWN) {
		FUNC0(PERF_PET_END, SAMPLE_SHUTDOWN);
		return;
	}

	timer = &(kperf_timerv[pet_timer_id]);

	/* if we re-programmed the timer to zero, just drop it */
	if (!timer->period) {
		return;
	}

	/* subtract the time the pet sample took being careful not to underflow */
	if (timer->period > elapsed_ticks) {
		period = timer->period - elapsed_ticks;
	}

	/* make sure we don't set the next PET sample to happen too soon */
	if (period < min_period_pet_abstime) {
		period = min_period_pet_abstime;
	}

	/* we probably took so long in the PET thread, it makes sense to take
	 * the time again.
	 */
	deadline = FUNC2() + period;

	FUNC0(PERF_PET_SCHED, timer->period, period, elapsed_ticks, deadline);

	/* re-schedule the timer, making sure we don't apply slop */
	FUNC3(&timer->tcall, deadline, TIMER_CALL_SYS_CRITICAL);

	return;
}