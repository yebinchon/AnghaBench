#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
struct kperf_timer {int /*<<< orphan*/  pending_cpus; } ;
typedef  TYPE_1__* processor_t ;
struct TYPE_6__ {int logical_cpu_max; } ;
struct TYPE_5__ {scalar_t__ state; scalar_t__ active_thread; } ;

/* Variables and functions */
 TYPE_1__* PROCESSOR_NULL ; 
 scalar_t__ PROCESSOR_RUNNING ; 
 int /*<<< orphan*/  SIGPkptimer ; 
 scalar_t__ THREAD_NULL ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC6 (int) ; 
 int /*<<< orphan*/  kperf_pending_ipis ; 
 TYPE_2__ machine_info ; 
 int /*<<< orphan*/  memory_order_relaxed ; 

bool
FUNC7(struct kperf_timer *timer)
{
	int current_cpu = FUNC4();
	bool system_only_self = true;
	int n_cpus = machine_info.logical_cpu_max;

	/* signal all running processors */
	for (int i = 0; i < n_cpus; i++) {
		uint64_t i_bit = FUNC0(1) << i;
		processor_t processor = FUNC6(i);

		/* do not IPI processors that are not scheduling threads */
		if (processor == PROCESSOR_NULL ||
				processor->state != PROCESSOR_RUNNING ||
				processor->active_thread == THREAD_NULL)
		{
			continue;
		}

		if (i == current_cpu) {
			system_only_self = false;
			continue;
		}

		/* nor processors that have not responded to the last broadcast */
		uint64_t already_pending = FUNC2(
				&timer->pending_cpus, i_bit, memory_order_relaxed);
		if (already_pending & i_bit)
		{
#if DEVELOPMENT || DEBUG
			atomic_fetch_add_explicit(&kperf_pending_ipis, 1,
					memory_order_relaxed);
#endif /* DEVELOPMENT || DEBUG */
			continue;
		}

		FUNC5(FUNC3(i), SIGPkptimer, NULL, NULL);
	}

	return system_only_self;
}