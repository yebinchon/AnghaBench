#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ pending_cpus; scalar_t__ actionid; scalar_t__ period; } ;

/* Variables and functions */
 int /*<<< orphan*/  KPERF_PET_DEFAULT_IDLE_RATE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 unsigned int kperf_timerc ; 
 TYPE_1__* kperf_timerv ; 

void
FUNC3(void)
{
	FUNC2(999);
	FUNC1(KPERF_PET_DEFAULT_IDLE_RATE);
	FUNC0(0);
	for (unsigned int i = 0; i < kperf_timerc; i++) {
		kperf_timerv[i].period = 0;
		kperf_timerv[i].actionid = 0;
		kperf_timerv[i].pending_cpus = 0;
	}
}