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
struct TYPE_5__ {int /*<<< orphan*/  ipi_cnt_wake; int /*<<< orphan*/  ipi_cnt; } ;
struct TYPE_6__ {int /*<<< orphan*/  cpu_signal; int /*<<< orphan*/  cpu_int_state; int /*<<< orphan*/  cpu_processor; scalar_t__ cpu_number; TYPE_1__ cpu_stat; } ;
typedef  TYPE_2__ cpu_data_t ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  LWClean ; 
 int /*<<< orphan*/  LWFlush ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int SIGPLWClean ; 
 unsigned int SIGPLWFlush ; 
 unsigned int SIGPast ; 
 unsigned int SIGPdebug ; 
 unsigned int SIGPdec ; 
 unsigned int SIGPdisabled ; 
 unsigned int SIGPkptimer ; 
 unsigned int SIGPxcall ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 TYPE_2__* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned int) ; 
 unsigned int FUNC8 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 

void
FUNC11(boolean_t disable_signal)
{
	cpu_data_t     *cpu_data_ptr = FUNC6();
	unsigned int	cpu_signal;


	cpu_data_ptr->cpu_stat.ipi_cnt++;
	cpu_data_ptr->cpu_stat.ipi_cnt_wake++;

	FUNC1(FUNC5());

	cpu_signal = FUNC8(&cpu_data_ptr->cpu_signal, 0);

	if ((!(cpu_signal & SIGPdisabled)) && (disable_signal == TRUE))
		(void)FUNC8(&cpu_data_ptr->cpu_signal, SIGPdisabled);
	else if ((cpu_signal & SIGPdisabled) && (disable_signal == FALSE))
		(void)FUNC7(&cpu_data_ptr->cpu_signal, ~SIGPdisabled);

	while (cpu_signal & ~SIGPdisabled) {
		if (cpu_signal & SIGPdec) {
			(void)FUNC7(&cpu_data_ptr->cpu_signal, ~SIGPdec);
			FUNC10(FALSE);
		}
#if KPERF
		if (cpu_signal & SIGPkptimer) {
			(void)hw_atomic_and(&cpu_data_ptr->cpu_signal, ~SIGPkptimer);
			kperf_signal_handler((unsigned int)cpu_data_ptr->cpu_number);
		}
#endif
		if (cpu_signal & SIGPxcall) {
			FUNC4(cpu_data_ptr);
		}
		if (cpu_signal & SIGPast) {
			(void)FUNC7(&cpu_data_ptr->cpu_signal, ~SIGPast);
			FUNC2(cpu_data_ptr->cpu_processor);
		}
		if (cpu_signal & SIGPdebug) {
			(void)FUNC7(&cpu_data_ptr->cpu_signal, ~SIGPdebug);
			FUNC0(cpu_data_ptr->cpu_int_state);
		}
#if	__ARM_SMP__ && defined(ARMA7)
		if (cpu_signal & SIGPLWFlush) {
			(void)hw_atomic_and(&cpu_data_ptr->cpu_signal, ~SIGPLWFlush);
			cache_xcall_handler(LWFlush);
		}
		if (cpu_signal & SIGPLWClean) {
			(void)hw_atomic_and(&cpu_data_ptr->cpu_signal, ~SIGPLWClean);
			cache_xcall_handler(LWClean);
		}
#endif

		cpu_signal = FUNC8(&cpu_data_ptr->cpu_signal, 0);
	}
}