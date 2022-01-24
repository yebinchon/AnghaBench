#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_3__ {scalar_t__ period; int /*<<< orphan*/  actionid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 size_t kperf_timerc ; 
 TYPE_1__* kperf_timerv ; 
 int /*<<< orphan*/  FUNC2 () ; 
 size_t pet_timer_id ; 

void
FUNC3(void)
{
	/* get the PET thread going */
	if (pet_timer_id < kperf_timerc) {
		FUNC0(kperf_timerv[pet_timer_id].actionid);
	}

	uint64_t now = FUNC2();

	for (unsigned int i = 0; i < kperf_timerc; i++) {
		if (kperf_timerv[i].period == 0) {
			continue;
		}

		FUNC1(&(kperf_timerv[i]), now);
	}
}