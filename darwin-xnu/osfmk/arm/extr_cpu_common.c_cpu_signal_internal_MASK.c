#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  kern_return_t ;
struct TYPE_5__ {int cpu_signal; unsigned int failed_signal; int /*<<< orphan*/  cpu_id; int /*<<< orphan*/  failed_signal_count; void* cpu_xcall_p1; void* cpu_xcall_p0; void* failed_xcall; } ;
typedef  TYPE_1__ cpu_data_t ;
typedef  scalar_t__ boolean_t ;
typedef  scalar_t__ Boolean ;

/* Variables and functions */
 int /*<<< orphan*/  DSB_ISH ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  KERN_FAILURE ; 
 int /*<<< orphan*/  KERN_SUCCESS ; 
 scalar_t__ FUNC0 (int,int,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int SIGPdisabled ; 
 unsigned int SIGPnop ; 
 unsigned int SIGPxcall ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 TYPE_1__* FUNC7 () ; 
 scalar_t__ FUNC8 (scalar_t__) ; 

__attribute__((used)) static kern_return_t
FUNC9(cpu_data_t *target_proc,
		    unsigned int signal,
		    void *p0,
		    void *p1,
		    boolean_t defer)
{
	unsigned int	Check_SIGPdisabled;
	int 		current_signals;
	Boolean		swap_success;
	boolean_t	interruptible = FUNC8(FALSE);
	cpu_data_t 	*current_proc = FUNC7();

	/* We'll mandate that only IPIs meant to kick a core out of idle may ever be deferred. */
	if (defer) {
		FUNC5(signal == SIGPnop);
	}

	if (current_proc != target_proc)
		Check_SIGPdisabled = SIGPdisabled;
	else
		Check_SIGPdisabled = 0;

	if (signal == SIGPxcall) {
		do {
			current_signals = target_proc->cpu_signal;
			if ((current_signals & SIGPdisabled) == SIGPdisabled) {
#if DEBUG || DEVELOPMENT
				target_proc->failed_signal = SIGPxcall;
				target_proc->failed_xcall = p0;
				OSIncrementAtomicLong(&target_proc->failed_signal_count);
#endif
				FUNC8(interruptible);
				return KERN_FAILURE;
			}
			swap_success = FUNC0(current_signals & (~SIGPxcall), current_signals | SIGPxcall,
					&target_proc->cpu_signal);

			/* Drain pending xcalls on this cpu; the CPU we're trying to xcall may in turn
			 * be trying to xcall us.  Since we have interrupts disabled that can deadlock,
			 * so break the deadlock by draining pending xcalls. */
			if (!swap_success && (current_proc->cpu_signal & SIGPxcall))
				FUNC6(current_proc);

		} while (!swap_success);

		target_proc->cpu_xcall_p0 = p0;
		target_proc->cpu_xcall_p1 = p1;
	} else {
		do {
			current_signals = target_proc->cpu_signal;
			if ((Check_SIGPdisabled !=0 ) && (current_signals & Check_SIGPdisabled) == SIGPdisabled) {
#if DEBUG || DEVELOPMENT
				target_proc->failed_signal = signal;
				OSIncrementAtomicLong(&target_proc->failed_signal_count);
#endif
				FUNC8(interruptible);
				return KERN_FAILURE;
			}

			swap_success = FUNC0(current_signals, current_signals | signal,
					&target_proc->cpu_signal);
		} while (!swap_success);
	}

	/*
	 * Issue DSB here to guarantee: 1) prior stores to pending signal mask and xcall params
	 * will be visible to other cores when the IPI is dispatched, and 2) subsequent
	 * instructions to signal the other cores will not execute until after the barrier.
	 * DMB would be sufficient to guarantee 1) but not 2).
	 */
	FUNC4(DSB_ISH);

	if (!(target_proc->cpu_signal & SIGPdisabled)) {
		if (defer) {
			FUNC3(FUNC7()->cpu_id, target_proc->cpu_id);
		} else {
			FUNC2(FUNC7()->cpu_id, target_proc->cpu_id);
		}
	}

	FUNC8(interruptible);
	return (KERN_SUCCESS);
}