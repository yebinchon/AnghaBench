#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {scalar_t__ timer_cnt_wake; scalar_t__ ipi_cnt_wake; scalar_t__ irq_ex_cnt_wake; } ;
struct TYPE_10__ {int /*<<< orphan*/  deadline; int /*<<< orphan*/  queue; } ;
struct TYPE_13__ {scalar_t__ cpu_type; int cpu_sleep_token_last; int cpu_sleep_token; int /*<<< orphan*/  cpu_running; TYPE_3__ cpu_stat; int /*<<< orphan*/  cpu_threadtype; int /*<<< orphan*/  cpu_subtype; TYPE_1__ rtclock_timer; } ;
typedef  TYPE_4__ cpu_data_t ;
struct TYPE_11__ {int arm_arch; } ;
struct TYPE_14__ {TYPE_2__ arm_info; } ;
typedef  TYPE_5__ arm_cpu_info_t ;

/* Variables and functions */
 TYPE_4__ BootCpuData ; 
#define  CPU_ARCH_ARMv8 128 
 int /*<<< orphan*/  CPU_SUBTYPE_ARM64_V8 ; 
 int /*<<< orphan*/  CPU_THREADTYPE_NONE ; 
 scalar_t__ CPU_TYPE_ARM64 ; 
 int /*<<< orphan*/  EndOfAllTime ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_5__* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 () ; 
 TYPE_4__* FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

void
FUNC13(void)
{
	cpu_data_t     *cdp = FUNC7();
	arm_cpu_info_t *cpu_info_p;

	FUNC0(FUNC6() != 0);

	if (cdp->cpu_type != CPU_TYPE_ARM64) {

		cdp->cpu_type = CPU_TYPE_ARM64;

		FUNC12(&cdp->rtclock_timer.queue);
		cdp->rtclock_timer.deadline = EndOfAllTime;

		if (cdp == &BootCpuData) {
			FUNC3();
			FUNC2();
			FUNC5();
		} else {
			/*
			 * We initialize non-boot CPUs here; the boot CPU is
			 * dealt with as part of pmap_bootstrap.
			 */
			FUNC11();
		}
		/* ARM_SMP: Assuming identical cpu */
		FUNC4();

		cpu_info_p = FUNC1();

		/* switch based on CPU's reported architecture */
		switch (cpu_info_p->arm_info.arm_arch) {
		case CPU_ARCH_ARMv8:
			cdp->cpu_subtype = CPU_SUBTYPE_ARM64_V8;
			break;
		default:
			//cdp->cpu_subtype = CPU_SUBTYPE_ARM64_ALL;
			/* this panic doesn't work this early in startup */
			FUNC10("Unknown CPU subtype...");
			break;
		}

		cdp->cpu_threadtype = CPU_THREADTYPE_NONE;
	}
	cdp->cpu_stat.irq_ex_cnt_wake = 0;
	cdp->cpu_stat.ipi_cnt_wake = 0;
	cdp->cpu_stat.timer_cnt_wake = 0;
	cdp->cpu_running = TRUE;
	cdp->cpu_sleep_token_last = cdp->cpu_sleep_token;
	cdp->cpu_sleep_token = 0x0UL;
#if KPC
	kpc_idle_exit();
#endif /* KPC */
#if MONOTONIC
	mt_cpu_up(cdp);
#endif /* MONOTONIC */
}