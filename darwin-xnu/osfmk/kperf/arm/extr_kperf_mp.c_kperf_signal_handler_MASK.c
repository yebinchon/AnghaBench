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
typedef  int uint64_t ;
struct kperf_timer {int /*<<< orphan*/  pending_cpus; } ;

/* Variables and functions */
 unsigned int FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct kperf_timer*) ; 
 scalar_t__ kperf_timerc ; 
 struct kperf_timer* kperf_timerv ; 
 int /*<<< orphan*/  memory_order_relaxed ; 

void
FUNC3(unsigned int cpu_number)
{
	uint64_t cpu_mask = FUNC0(1) << cpu_number;

	/* find all the timers that caused a signal */
	for(int i = 0; i < (int)kperf_timerc; i++) {
		uint64_t pending_cpus;
		struct kperf_timer *timer = &kperf_timerv[i];

		pending_cpus = FUNC1(&timer->pending_cpus,
				~cpu_mask, memory_order_relaxed);
		if (pending_cpus & cpu_mask) {
			FUNC2(timer);
		}
	}
}