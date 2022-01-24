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
struct TYPE_6__ {int cpu_CLW_active; int cpu_number; TYPE_1__* cpu_processor; int /*<<< orphan*/  rtcPop; int /*<<< orphan*/  cpu_active_thread; int /*<<< orphan*/  cpu_flags; } ;
typedef  TYPE_2__ cpu_data_t ;
struct TYPE_5__ {int /*<<< orphan*/  cpu_id; } ;

/* Variables and functions */
 TYPE_2__ BootCpuData ; 
 int DAIFSC_ASYNCF ; 
 int /*<<< orphan*/  EndOfAllTime ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int SCTLR_PREDIC ; 
 int /*<<< orphan*/  SleepState ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  arm64_stall_sleep ; 
 int arm_diag ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int cpus_defeatures ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 (int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 () ; 

void
FUNC20(
	cpu_data_t	*cpu_data_ptr)
{
#if __ARM_PAN_AVAILABLE__
	__builtin_arm_wsr("pan", 1);
#endif

	cpu_data_ptr->cpu_flags &= ~SleepState;
#if     __ARM_SMP__ && defined(ARMA7)
	cpu_data_ptr->cpu_CLW_active = 1;
#endif

	FUNC13(cpu_data_ptr->cpu_active_thread);

#if __arm64__
	pmap_clear_user_ttb();
	flush_mmu_tlb();
	/* Enable asynchronous exceptions */
	__builtin_arm_wsr("DAIFClr", DAIFSC_ASYNCF);
#endif

	FUNC7(FALSE);

	FUNC6();

#if	(__ARM_ARCH__ == 7)
	if (arm_diag & 0x8000)
		set_mmu_control((get_mmu_control()) ^ SCTLR_PREDIC);
#endif
#ifdef	APPLETYPHOON
	if ((cpus_defeatures & (0xF << 4*cpu_data_ptr->cpu_number)) != 0)
		cpu_defeatures_set((cpus_defeatures >> 4*cpu_data_ptr->cpu_number) & 0xF);
#endif
	/* Initialize the timebase before serial_init, as some serial
	 * drivers use mach_absolute_time() to implement rate control
	 */
	FUNC8(FALSE);

	if (cpu_data_ptr == &BootCpuData) {
#if __arm64__ && __ARM_GLOBAL_SLEEP_BIT__
		/*
		 * Prevent CPUs from going into deep sleep until all
		 * CPUs are ready to do so.
		 */
		arm64_stall_sleep = TRUE;
#endif
		FUNC16();
		FUNC1(TRUE, NULL);
		FUNC4();
	}

	FUNC9(TRUE);
	cpu_data_ptr->rtcPop = EndOfAllTime;
	FUNC19();

#if DEVELOPMENT || DEBUG
	PE_arm_debug_enable_trace();
#endif

	FUNC12("arm_cpu_init(): cpu %d online\n", cpu_data_ptr->cpu_processor->cpu_id);

	if (cpu_data_ptr == &BootCpuData) {
#if CONFIG_TELEMETRY
		bootprofile_wake_from_sleep();
#endif /* CONFIG_TELEMETRY */
	}
#if MONOTONIC && defined(__arm64__)
	mt_wake_per_core();
#endif /* MONOTONIC && defined(__arm64__) */


	FUNC18(NULL);
}