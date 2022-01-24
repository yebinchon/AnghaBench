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
typedef  int /*<<< orphan*/  cpumask_t ;
struct TYPE_6__ {int logical_cpu_max; } ;
struct TYPE_5__ {scalar_t__ state; scalar_t__ active_thread; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int,...) ; 
 int /*<<< orphan*/  NOSYNC ; 
 int /*<<< orphan*/  PERF_TM_PENDING ; 
 int /*<<< orphan*/  PERF_TM_SKIPPED ; 
 TYPE_1__* PROCESSOR_NULL ; 
 scalar_t__ PROCESSOR_RUNNING ; 
 scalar_t__ THREAD_NULL ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 TYPE_1__* FUNC6 (int) ; 
 int /*<<< orphan*/  kperf_ipi_handler ; 
 int /*<<< orphan*/  kperf_pending_ipis ; 
 TYPE_2__ machine_info ; 
 int /*<<< orphan*/  memory_order_relaxed ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct kperf_timer*) ; 

bool
FUNC8(struct kperf_timer *trigger)
{
	int current_cpu = FUNC4();
	int ncpus = machine_info.logical_cpu_max;
	bool system_only_self = true;
	cpumask_t cpu_mask = 0;

	for (int i = 0; i < ncpus; i++) {
		uint64_t i_bit = FUNC1(1) << i;
		processor_t processor = FUNC6(i);

		/* do not IPI processors that are not scheduling threads */
		if (processor == PROCESSOR_NULL ||
				processor->state != PROCESSOR_RUNNING ||
				processor->active_thread == THREAD_NULL)
		{
#if DEVELOPMENT || DEBUG
			BUF_VERB(PERF_TM_SKIPPED, i,
					processor != PROCESSOR_NULL ? processor->state : 0,
					processor != PROCESSOR_NULL ? processor->active_thread : 0);
#endif /* DEVELOPMENT || DEBUG */
			continue;
		}

		/* don't run the handler on the current processor */
		if (i == current_cpu) {
			system_only_self = false;
			continue;
		}

		/* nor processors that have not responded to the last IPI */
		uint64_t already_pending = FUNC3(
				&trigger->pending_cpus, i_bit,
				memory_order_relaxed);
		if (already_pending & i_bit) {
#if DEVELOPMENT || DEBUG
			BUF_VERB(PERF_TM_PENDING, i_bit, already_pending);
			atomic_fetch_add_explicit(&kperf_pending_ipis, 1,
					memory_order_relaxed);
#endif /* DEVELOPMENT || DEBUG */
			continue;
		}

		cpu_mask |= FUNC5(i);
	}

	if (cpu_mask != 0) {
		FUNC7(cpu_mask, NOSYNC, kperf_ipi_handler, trigger);
	}

	return system_only_self;
}