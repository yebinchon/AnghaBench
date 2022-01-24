#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  (* processor_idle_t ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ;
struct TYPE_3__ {int cpu_signal; int rtcPop; scalar_t__ idle_timer_notify; int idle_timer_deadline; int /*<<< orphan*/  cpu_id; scalar_t__ cpu_idle_notify; int /*<<< orphan*/ * cpu_user_debug; int /*<<< orphan*/  cpu_active_thread; } ;
typedef  TYPE_1__ cpu_data_t ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int SIGPdisabled ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 TYPE_1__* FUNC8 () ; 
 int /*<<< orphan*/  idle_enable ; 
 int /*<<< orphan*/  kernel_pmap ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 scalar_t__ wfi_fast ; 

void __attribute__((noreturn))
FUNC15(void)
{
	cpu_data_t     *cpu_data_ptr = FUNC8();
	uint64_t	new_idle_timeout_ticks = 0x0ULL, lastPop;

	if ((!idle_enable) || (cpu_data_ptr->cpu_signal & SIGPdisabled))
		FUNC1();
	if (!FUNC2())
		FUNC1();
	lastPop = cpu_data_ptr->rtcPop;

	FUNC12(kernel_pmap);
	cpu_data_ptr->cpu_active_thread = FUNC7();
	if (cpu_data_ptr->cpu_user_debug)
		FUNC3(NULL);
	cpu_data_ptr->cpu_user_debug = NULL;

	if (cpu_data_ptr->cpu_idle_notify)
		((processor_idle_t) cpu_data_ptr->cpu_idle_notify) (cpu_data_ptr->cpu_id, TRUE, &new_idle_timeout_ticks);

	if (cpu_data_ptr->idle_timer_notify != 0) {
		if (new_idle_timeout_ticks == 0x0ULL) {
			/* turn off the idle timer */
			cpu_data_ptr->idle_timer_deadline = 0x0ULL;
		} else {
			/* set the new idle timeout */
			FUNC4(new_idle_timeout_ticks, &cpu_data_ptr->idle_timer_deadline);
		}
		FUNC14();
		if (cpu_data_ptr->rtcPop != lastPop)
			FUNC2();
	}

#if KPC
	kpc_idle();
#endif

	FUNC10();
	FUNC6((boolean_t) wfi_fast);
	FUNC11();

	FUNC0(TRUE);
	FUNC5(FALSE);
}