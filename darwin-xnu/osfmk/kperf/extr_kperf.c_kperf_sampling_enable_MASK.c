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

/* Variables and functions */
 int ECANCELED ; 
 scalar_t__ KPERF_SAMPLING_OFF ; 
 scalar_t__ KPERF_SAMPLING_ON ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  kperf_initted ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__) ; 
 scalar_t__ sampling_status ; 

int
FUNC4(void)
{
	if (sampling_status == KPERF_SAMPLING_ON) {
		return 0;
	}

	if (sampling_status != KPERF_SAMPLING_OFF) {
		FUNC3("kperf: sampling was %d when asked to enable", sampling_status);
	}

	/* make sure interrupt tables and actions are initted */
	if (!kperf_initted || (FUNC0() == 0)) {
		return ECANCELED;
	}

	/* mark as running */
	sampling_status = KPERF_SAMPLING_ON;
	FUNC1();

	/* tell timers to enable */
	FUNC2();

	return 0;
}