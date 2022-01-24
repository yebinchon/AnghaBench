#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  (* processor_idle_t ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ;
struct TYPE_4__ {int cpu_signal; int rtcPop; scalar_t__ idle_timer_notify; int idle_timer_deadline; int /*<<< orphan*/  cpu_id; scalar_t__ cpu_idle_notify; int /*<<< orphan*/ * cpu_user_debug; int /*<<< orphan*/  cpu_active_thread; } ;
typedef  TYPE_1__ cpu_data_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DSB_SY ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int SIGPdisabled ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int,int*) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 () ; 
 TYPE_1__* FUNC16 () ; 
 int /*<<< orphan*/  idle_enable ; 
 int /*<<< orphan*/  kernel_pmap ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 () ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC23 () ; 
 int wfi ; 
 int wfi_delay ; 
 int wfi_flags ; 

void __attribute__((noreturn))
FUNC24(void)
{
	cpu_data_t     *cpu_data_ptr = FUNC16();
	uint64_t	new_idle_timeout_ticks = 0x0ULL, lastPop;

	if ((!idle_enable) || (cpu_data_ptr->cpu_signal & SIGPdisabled))
		FUNC2();
	if (!FUNC4())
		FUNC2();
	lastPop = cpu_data_ptr->rtcPop;

	FUNC21(kernel_pmap);
	cpu_data_ptr->cpu_active_thread = FUNC12();
	if (cpu_data_ptr->cpu_user_debug)
		FUNC8(NULL);
	cpu_data_ptr->cpu_user_debug = NULL;

	if (cpu_data_ptr->cpu_idle_notify)
		((processor_idle_t) cpu_data_ptr->cpu_idle_notify) (cpu_data_ptr->cpu_id, TRUE, &new_idle_timeout_ticks);

	if (cpu_data_ptr->idle_timer_notify != 0) {
		if (new_idle_timeout_ticks == 0x0ULL) {
			/* turn off the idle timer */
			cpu_data_ptr->idle_timer_deadline = 0x0ULL;
		} else {
			/* set the new idle timeout */
			FUNC9(new_idle_timeout_ticks, &cpu_data_ptr->idle_timer_deadline);
		}
		FUNC23();
		if (cpu_data_ptr->rtcPop != lastPop)
			FUNC4();
	}

#if KPC
	kpc_idle();
#endif
#if MONOTONIC
	mt_cpu_idle(cpu_data_ptr);
#endif /* MONOTONIC */

	if (wfi) {
		FUNC19();

#if DEVELOPMENT || DEBUG
		// When simulating wfi overhead,
		// force wfi to clock gating only
		if (wfi == 2) {
			arm64_force_wfi_clock_gate();
		}
#endif /* DEVELOPMENT || DEBUG */

#if defined(APPLECYCLONE) || defined(APPLETYPHOON)
		// <rdar://problem/15827409> CPU1 Stuck in WFIWT Because of MMU Prefetch
		cyclone_typhoon_prepare_for_wfi();
#endif
		FUNC5(DSB_SY);
		FUNC6();

#if defined(APPLECYCLONE) || defined(APPLETYPHOON)
		// <rdar://problem/15827409> CPU1 Stuck in WFIWT Because of MMU Prefetch
		cyclone_typhoon_return_from_wfi();
#endif

#if DEVELOPMENT || DEBUG
		// Handle wfi overhead simulation
		if (wfi == 2) {
			uint64_t deadline;

			// Calculate wfi delay deadline
			clock_absolutetime_interval_to_deadline(wfi_delay, &deadline);

			// Flush L1 caches
			if ((wfi_flags & 1) != 0) {
				InvalidatePoU_Icache();
				FlushPoC_Dcache();
			}

			// Flush TLBs
			if ((wfi_flags & 2) != 0) {
				flush_core_tlb();
			}

			// Wait for the ballance of the wfi delay
			clock_delay_until(deadline);
		}
#endif /* DEVELOPMENT || DEBUG */

		FUNC20();
	}

	FUNC0(TRUE);

	FUNC11(FALSE);
}