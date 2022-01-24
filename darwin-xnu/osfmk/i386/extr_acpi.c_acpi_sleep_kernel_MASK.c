#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
typedef  scalar_t__ kern_return_t ;
struct TYPE_6__ {scalar_t__ cpu_hibernate; } ;
typedef  TYPE_1__ cpu_data_t ;
typedef  scalar_t__ boolean_t ;
typedef  int /*<<< orphan*/  acpi_sleep_callback ;
typedef  void acpi_hibernate_callback_data_t ;

/* Variables and functions */
 int DBG_FUNC_END ; 
 int DBG_FUNC_START ; 
 int /*<<< orphan*/  DBG_HIBERNATE ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int,...) ; 
 scalar_t__ KERN_SUCCESS ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  acpi_hibernate ; 
 scalar_t__ acpi_sleep_abstime ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,void*) ; 
 scalar_t__ acpi_wake_abstime ; 
 scalar_t__ acpi_wake_postrebase_abstime ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 unsigned int FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 TYPE_1__* FUNC8 () ; 
 scalar_t__ disable_serial_output ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 scalar_t__ kdebug_enable ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__,int /*<<< orphan*/ *,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (char*,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 scalar_t__ FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 () ; 
 scalar_t__ FUNC20 () ; 
 int /*<<< orphan*/  FUNC21 () ; 
 int /*<<< orphan*/  FUNC22 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC23 () ; 
 int /*<<< orphan*/  FUNC24 () ; 
 int /*<<< orphan*/  FUNC25 (char*,scalar_t__,unsigned int) ; 
 int /*<<< orphan*/  FUNC26 () ; 
 scalar_t__ FUNC27 (unsigned int) ; 
 int /*<<< orphan*/  FUNC28 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC29 () ; 
 int /*<<< orphan*/  FUNC30 () ; 
 int /*<<< orphan*/  FUNC31 () ; 
 unsigned int real_ncpus ; 
 int /*<<< orphan*/  FUNC32 () ; 
 int /*<<< orphan*/  FUNC33 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC34 () ; 
 scalar_t__ save_kdebug_enable ; 
 int /*<<< orphan*/  slave_pstart ; 
 scalar_t__ trace_wrap ; 
 int /*<<< orphan*/  FUNC35 () ; 
 int /*<<< orphan*/  FUNC36 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC37 () ; 
 scalar_t__ wake_nkdbufs ; 
 int /*<<< orphan*/  FUNC38 (scalar_t__) ; 
 scalar_t__ FUNC39 () ; 

void
FUNC40(acpi_sleep_callback func, void *refcon)
{
#if HIBERNATION
	acpi_hibernate_callback_data_t data;
#endif
	boolean_t did_hibernate;
	cpu_data_t *cdp = FUNC8();
	unsigned int	cpu;
	kern_return_t	rc;
	unsigned int	my_cpu;
	uint64_t	start;
	uint64_t	elapsed = 0;
	uint64_t	elapsed_trace_start = 0;

	my_cpu = FUNC6();
	FUNC16("acpi_sleep_kernel hib=%d, cpu=%d\n", cdp->cpu_hibernate,
			my_cpu);

	/* Get all CPUs to be in the "off" state */
	for (cpu = 0; cpu < real_ncpus; cpu += 1) {
		if (cpu == my_cpu)
			continue;
		rc = FUNC27(cpu);
		if (rc != KERN_SUCCESS)
			FUNC25("Error %d trying to transition CPU %d to OFF",
			      rc, cpu);
	}

	/* shutdown local APIC before passing control to firmware */
	FUNC19();

#if HIBERNATION
	data.func = func;
	data.refcon = refcon;
#endif

#if MONOTONIC
	mt_cpu_down(cdp);
#endif /* MONOTONIC */

	/* Save power management timer state */
	FUNC31();

#if HYPERVISOR
	/* Notify hypervisor that we are about to sleep */
	hv_suspend();
#endif

	/*
	 * Enable FPU/SIMD unit for potential hibernate acceleration
	 */
	FUNC5(); 

	FUNC2(FUNC1(DBG_HIBERNATE, 0) | DBG_FUNC_START);

	save_kdebug_enable = kdebug_enable;
	kdebug_enable = 0;

	acpi_sleep_abstime = FUNC20();

#if CONFIG_SLEEP
	/*
	 * Save master CPU state and sleep platform.
	 * Will not return until platform is woken up,
	 * or if sleep failed.
	 */
	uint64_t old_cr3 = x86_64_pre_sleep();
#if HIBERNATION
	acpi_sleep_cpu(acpi_hibernate, &data);
#else
#if CONFIG_VMX
	vmx_suspend();
#endif
	acpi_sleep_cpu(func, refcon);
#endif

	acpi_wake_abstime = mach_absolute_time();
	/* Rebase TSC->absolute time conversion, using timestamp
	 * recorded before sleep.
	 */
	rtc_nanotime_init(acpi_sleep_abstime);
	acpi_wake_postrebase_abstime = start = mach_absolute_time();
	assert(start >= acpi_sleep_abstime);

	x86_64_post_sleep(old_cr3);

#endif /* CONFIG_SLEEP */

	/* Reset UART if kprintf is enabled.
	 * However kprintf should not be used before rtc_sleep_wakeup()
	 * for compatibility with firewire kprintf.
	 */

	if (FALSE == disable_serial_output)
		FUNC24();

#if HIBERNATION
	if (current_cpu_datap()->cpu_hibernate) {
		did_hibernate = TRUE;

	} else
#endif 
	{
		did_hibernate = FALSE;
	}

	/* Re-enable fast syscall */
	FUNC7(FUNC8());

#if CONFIG_MCA
	/* Re-enable machine check handling */
	mca_cpu_init();
#endif

#if CONFIG_MTRR
	/* restore MTRR settings */
	mtrr_update_cpu();
#endif

	/* update CPU microcode */
	FUNC35();

#if CONFIG_MTRR
	/* set up PAT following boot processor power up */
	pat_init();
#endif

#if CONFIG_VMX
	/* 
	 * Restore VT mode
	 */
	vmx_resume(did_hibernate);
#endif

	/*
	 * Go through all of the CPUs and mark them as requiring
	 * a full restart.
	 */
	FUNC29();


	/* re-enable and re-init local apic (prior to starting timers) */
	if (FUNC18())
		FUNC17();

#if KASAN
	/*
	 * The sleep implementation uses indirect noreturn calls, so we miss stack
	 * unpoisoning. Do it explicitly.
	 */
	kasan_unpoison_curstack(true);
#endif

#if HIBERNATION
	hibernate_rebuild_vm_structs();
#endif

	elapsed += FUNC20() - start;

	FUNC32();
	kdebug_enable = save_kdebug_enable;

	if (kdebug_enable == 0) {
		if (wake_nkdbufs) {
			start = FUNC20();
			FUNC15(wake_nkdbufs, NULL, trace_wrap != 0, TRUE);
			elapsed_trace_start += FUNC20() - start;
		}
	}
	start = FUNC20();

	/* Reconfigure FP/SIMD unit */
	FUNC12();
	FUNC5();

	FUNC0();

#if HIBERNATION
	if (did_hibernate) {
		KDBG(IOKDBG_CODE(DBG_HIBERNATE, 2) | DBG_FUNC_START);
		hibernate_machine_init();
		KDBG(IOKDBG_CODE(DBG_HIBERNATE, 2) | DBG_FUNC_END);

		current_cpu_datap()->cpu_hibernate = 0;
	}
#endif /* HIBERNATION */

	FUNC2(FUNC1(DBG_HIBERNATE, 0) | DBG_FUNC_END, start, elapsed,
			elapsed_trace_start, acpi_wake_abstime);

	/* Restore power management register state */
	FUNC28(FUNC8());

	/* Restore power management timer state */
	FUNC30();

	/* Restart timer interrupts */
	FUNC34();

#if HIBERNATION

	kprintf("ret from acpi_sleep_cpu hib=%d\n", did_hibernate);
#endif

#if CONFIG_SLEEP
	/* Becase we don't save the bootstrap page, and we share it
	 * between sleep and mp slave init, we need to recreate it 
	 * after coming back from sleep or hibernate */
	install_real_mode_bootstrap(slave_pstart);
#endif
}