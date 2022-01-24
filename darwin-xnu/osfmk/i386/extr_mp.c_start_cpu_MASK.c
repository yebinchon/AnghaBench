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
struct TYPE_3__ {scalar_t__ starter_cpu; int target_cpu; scalar_t__ target_lapic; } ;
typedef  TYPE_1__ processor_start_info_t ;
typedef  scalar_t__ int64_t ;
struct TYPE_4__ {scalar_t__ cpu_running; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,void*,int,...) ; 
 int DBG_FUNC_END ; 
 int DBG_FUNC_START ; 
 int /*<<< orphan*/  FUNC2 (int,int,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int TRACE_MP_CPU_START ; 
 scalar_t__ TSC_sync_margin ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,int) ; 
 TYPE_2__* FUNC4 (int) ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,int,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC11 () ; 
 scalar_t__ tsc_entry_barrier ; 
 scalar_t__ tsc_exit_barrier ; 
 scalar_t__ tsc_target ; 

__attribute__((used)) static void
FUNC12(void *arg)
{
	int			i = 1000;
	processor_start_info_t	*psip = (processor_start_info_t *) arg;

	/* Ignore this if the current processor is not the starter */
	if (FUNC5() != psip->starter_cpu)
		return;

	FUNC1("start_cpu(%p) about to start cpu %d, lapic %d\n",
		arg, psip->target_cpu, psip->target_lapic);

	FUNC2(
		TRACE_MP_CPU_START | DBG_FUNC_START,
		psip->target_cpu,
		psip->target_lapic, 0, 0, 0);

	FUNC6(psip->target_lapic, psip->target_cpu);

#ifdef	POSTCODE_DELAY
	/* Wait much longer if postcodes are displayed for a delay period. */
	i *= 10000;
#endif
	FUNC1("start_cpu(%p) about to wait for cpu %d\n",
		arg, psip->target_cpu);

	FUNC8(psip->target_cpu, i*100, 100);

	FUNC2(
		TRACE_MP_CPU_START | DBG_FUNC_END,
		psip->target_cpu,
		FUNC4(psip->target_cpu)->cpu_running, 0, 0, 0);

	if (TSC_sync_margin &&
	    FUNC4(psip->target_cpu)->cpu_running) {
		/*
		 * Compare the TSC from the started processor with ours.
		 * Report and log/panic if it diverges by more than
		 * TSC_sync_margin (TSC_SYNC_MARGIN) ticks. This margin
		 * can be overriden by boot-arg (with 0 meaning no checking).
		 */
		uint64_t	tsc_starter;
		int64_t		tsc_delta;
		FUNC3(&tsc_entry_barrier, 1);
		while (tsc_entry_barrier != 0)
			;	/* spin for both processors at barrier */
		tsc_starter = FUNC11();
		FUNC3(&tsc_exit_barrier, 1);
		while (tsc_exit_barrier != 0)
			;	/* spin for target to store its TSC */
		tsc_delta = tsc_target - tsc_starter;
		FUNC7("TSC sync for cpu %d: 0x%016llx delta 0x%llx (%lld)\n",
			psip->target_cpu, tsc_target, tsc_delta, tsc_delta);
		if (FUNC0(tsc_delta) > (int64_t) TSC_sync_margin) { 
#if DEBUG
			panic(
#else
			FUNC10(
#endif
				"Unsynchronized  TSC for cpu %d: "
					"0x%016llx, delta 0x%llx\n",
				psip->target_cpu, tsc_target, tsc_delta);
		}
	}
}