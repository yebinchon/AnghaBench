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
typedef  int /*<<< orphan*/  x86_saved_state_t ;
struct TYPE_4__ {int cpu_signals; int cpu_prior_signals; } ;
struct TYPE_3__ {int /*<<< orphan*/  lcpu; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  MP_AST ; 
 int /*<<< orphan*/  MP_CALL ; 
 int /*<<< orphan*/  MP_CALL_PM ; 
 int /*<<< orphan*/  MP_KDP ; 
 int /*<<< orphan*/  MP_TLB_FLUSH ; 
 int /*<<< orphan*/  PM_SAFE_FL_NORMAL ; 
 int /*<<< orphan*/  PM_SAFE_FL_SAFE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_2__** cpu_data_ptr ; 
 int /*<<< orphan*/  cpu_handle ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 TYPE_1__* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int volatile*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int volatile*) ; 
 int /*<<< orphan*/  kdp_snapshot ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 scalar_t__ pmsafe_debug ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

int
FUNC15(x86_saved_state_t *regs)
{
#if	!MACH_KDP
#pragma unused (regs)
#endif /* !MACH_KDP */
	int		my_cpu;
	volatile int	*my_word;

	FUNC1(FUNC6());

	my_cpu = FUNC3();
	my_word = &cpu_data_ptr[my_cpu]->cpu_signals;
	/* Store the initial set of signals for diagnostics. New
	 * signals could arrive while these are being processed
	 * so it's no more than a hint.
	 */

	cpu_data_ptr[my_cpu]->cpu_prior_signals = *my_word;

	do {
#if	MACH_KDP
		if (i_bit(MP_KDP, my_word)) {
			DBGLOG(cpu_handle,my_cpu,MP_KDP);
			i_bit_clear(MP_KDP, my_word);
/* Ensure that the i386_kernel_state at the base of the
 * current thread's stack (if any) is synchronized with the
 * context at the moment of the interrupt, to facilitate
 * access through the debugger.
 */
			sync_iss_to_iks(regs);
			if (pmsafe_debug && !kdp_snapshot)
				pmSafeMode(&current_cpu_datap()->lcpu, PM_SAFE_FL_SAFE);
			mp_kdp_wait(TRUE, FALSE);
			if (pmsafe_debug && !kdp_snapshot)
				pmSafeMode(&current_cpu_datap()->lcpu, PM_SAFE_FL_NORMAL);
		} else
#endif	/* MACH_KDP */
		if (FUNC7(MP_TLB_FLUSH, my_word)) {
			FUNC0(cpu_handle,my_cpu,MP_TLB_FLUSH);
			FUNC8(MP_TLB_FLUSH, my_word);
			FUNC13();
		} else if (FUNC7(MP_CALL, my_word)) {
			FUNC0(cpu_handle,my_cpu,MP_CALL);
			FUNC8(MP_CALL, my_word);
			FUNC10();
		} else if (FUNC7(MP_CALL_PM, my_word)) {
			FUNC0(cpu_handle,my_cpu,MP_CALL_PM);
			FUNC8(MP_CALL_PM, my_word);
			FUNC9();
		}
		if (regs == NULL) {
			/* Called to poll only for cross-calls and TLB flush */
			break;
		} else if (FUNC7(MP_AST, my_word)) {
			FUNC0(cpu_handle,my_cpu,MP_AST);
			FUNC8(MP_AST, my_word);
			FUNC2(FUNC4(my_cpu));
		}
	} while (*my_word);

	return 0;
}