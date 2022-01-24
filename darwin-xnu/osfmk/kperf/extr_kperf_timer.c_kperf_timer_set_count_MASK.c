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
struct kperf_timer {int /*<<< orphan*/  tcall; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  KP_MIN_PERIOD_BG_NS ; 
 int /*<<< orphan*/  KP_MIN_PERIOD_NS ; 
 int /*<<< orphan*/  KP_MIN_PERIOD_PET_BG_NS ; 
 int /*<<< orphan*/  KP_MIN_PERIOD_PET_NS ; 
 unsigned int TIMER_MAX ; 
 int /*<<< orphan*/  VM_KERN_MEMORY_DIAG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct kperf_timer*,struct kperf_timer*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct kperf_timer*,unsigned int) ; 
 struct kperf_timer* FUNC3 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct kperf_timer*,unsigned int) ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  kperf_timer_handler ; 
 int /*<<< orphan*/  FUNC6 () ; 
 unsigned int kperf_timerc ; 
 struct kperf_timer* kperf_timerv ; 
 scalar_t__ min_period_abstime ; 
 scalar_t__ min_period_bg_abstime ; 
 scalar_t__ min_period_pet_abstime ; 
 scalar_t__ min_period_pet_bg_abstime ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct kperf_timer*) ; 

extern int
FUNC9(unsigned int count)
{
	struct kperf_timer *new_timerv = NULL, *old_timerv = NULL;
	unsigned int old_count;

	if (min_period_abstime == 0) {
		FUNC7(KP_MIN_PERIOD_NS, &min_period_abstime);
		FUNC7(KP_MIN_PERIOD_BG_NS, &min_period_bg_abstime);
		FUNC7(KP_MIN_PERIOD_PET_NS, &min_period_pet_abstime);
		FUNC7(KP_MIN_PERIOD_PET_BG_NS,
			&min_period_pet_bg_abstime);
		FUNC0(min_period_abstime > 0);
	}

	if (count == kperf_timerc) {
		return 0;
	}
	if (count > TIMER_MAX) {
		return EINVAL;
	}

	/* TODO: allow shrinking? */
	if (count < kperf_timerc) {
		return EINVAL;
	}

	/*
	 * Make sure kperf is initialized when creating the array for the first
	 * time.
	 */
	if (kperf_timerc == 0) {
		int r;

		/* main kperf */
		if ((r = FUNC5())) {
			return r;
		}
	}

	/*
	 * Shut down any running timers since we will be messing with the timer
	 * call structures.
	 */
	FUNC6();

	/* create a new array */
	new_timerv = FUNC3(count * sizeof(struct kperf_timer),
		VM_KERN_MEMORY_DIAG);
	if (new_timerv == NULL) {
		return ENOMEM;
	}
	old_timerv = kperf_timerv;
	old_count = kperf_timerc;

	if (old_timerv != NULL) {
		FUNC1(kperf_timerv, new_timerv,
			kperf_timerc * sizeof(struct kperf_timer));
	}

	/* zero the new entries */
	FUNC2(&(new_timerv[kperf_timerc]),
		(count - old_count) * sizeof(struct kperf_timer));

	/* (re-)setup the timer call info for all entries */
	for (unsigned int i = 0; i < count; i++) {
		FUNC8(&new_timerv[i].tcall, kperf_timer_handler, &new_timerv[i]);
	}

	kperf_timerv = new_timerv;
	kperf_timerc = count;

	if (old_timerv != NULL) {
		FUNC4(old_timerv, old_count * sizeof(struct kperf_timer));
	}

	return 0;
}