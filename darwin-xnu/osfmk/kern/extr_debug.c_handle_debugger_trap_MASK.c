#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ kern_return_t ;
typedef  scalar_t__ debugger_op ;

/* Variables and functions */
 int /*<<< orphan*/  CPUDEBUGGERCOUNT ; 
 int /*<<< orphan*/ * CPUDEBUGGERMSG ; 
 scalar_t__ CPUDEBUGGEROP ; 
 scalar_t__ CPUDEBUGGERRET ; 
 int /*<<< orphan*/  CPUDEBUGGERSYNC ; 
 int /*<<< orphan*/ * CPUPANICARGS ; 
 int /*<<< orphan*/  CPUPANICCALLER ; 
 int /*<<< orphan*/ * CPUPANICDATAPTR ; 
 scalar_t__ CPUPANICOPTS ; 
 int /*<<< orphan*/ * CPUPANICSTR ; 
 scalar_t__ DBOP_BREAKPOINT ; 
 scalar_t__ DBOP_DEBUGGER ; 
 scalar_t__ DBOP_NONE ; 
 scalar_t__ DBOP_PANIC ; 
 scalar_t__ DBOP_RESET_PGO_COUNTERS ; 
 scalar_t__ DBOP_STACKSHOT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  KDP_EVENT_ENTER ; 
 int /*<<< orphan*/  KDP_EVENT_EXIT ; 
 scalar_t__ KERN_SUCCESS ; 
 int SERIALMODE_OUTPUT ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (unsigned int,unsigned int,unsigned int,void*) ; 
 scalar_t__ debugger_current_op ; 
 int /*<<< orphan*/ * debugger_message ; 
 int /*<<< orphan*/ * debugger_panic_args ; 
 int /*<<< orphan*/  debugger_panic_caller ; 
 int /*<<< orphan*/ * debugger_panic_data ; 
 scalar_t__ debugger_panic_options ; 
 int /*<<< orphan*/ * debugger_panic_str ; 
 int /*<<< orphan*/  debugger_safe_to_return ; 
 scalar_t__ FUNC7 () ; 
 scalar_t__ FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (unsigned int,unsigned int,unsigned int,void*) ; 
 int /*<<< orphan*/  kernel_debugger_entry_count ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 unsigned int not_in_kdp ; 
 int serialmode ; 

void
FUNC12(unsigned int exception, unsigned int code, unsigned int subcode, void *state)
{
	unsigned int initial_not_in_kdp = not_in_kdp;
	kern_return_t ret;
	debugger_op db_prev_op = debugger_current_op;

	FUNC0(0);

	FUNC2();
	ret = FUNC1(CPUDEBUGGERSYNC);

	FUNC0(1);

#if INTERRUPT_MASKED_DEBUG
	if (serialmode & SERIALMODE_OUTPUT) {
		ml_spin_debug_reset(current_thread());
	}
#endif
	if (ret != KERN_SUCCESS) {
		CPUDEBUGGERRET = ret;
		FUNC4();
		return;
	}

	/* Update the global panic/debugger nested entry level */
	kernel_debugger_entry_count = CPUDEBUGGERCOUNT;

	/*
	 * TODO: Should we do anything special for nested panics here? i.e. if we've trapped more than twice
	 * should we call into the debugger if it's configured and then reboot if the panic log has been written?
	 */

	if (CPUDEBUGGEROP == DBOP_NONE) {
		/* If there was no debugger context setup, we trapped due to a software breakpoint */
		debugger_current_op = DBOP_BREAKPOINT;
	} else {
		/* Not safe to return from a nested panic/debugger call */
		if (debugger_current_op == DBOP_PANIC ||
			debugger_current_op == DBOP_DEBUGGER) {
			debugger_safe_to_return = FALSE;
		}

		debugger_current_op = CPUDEBUGGEROP;

		/* Only overwrite the panic message if there is none already - save the data from the first call */
		if (debugger_panic_str == NULL) {
			debugger_panic_str = CPUPANICSTR;
			debugger_panic_args = CPUPANICARGS;
			debugger_panic_data = CPUPANICDATAPTR;
			debugger_message = CPUDEBUGGERMSG;
			debugger_panic_caller = CPUPANICCALLER;
		}

		debugger_panic_options = CPUPANICOPTS;
	}

	/*
	 * Clear the op from the processor debugger context so we can handle
	 * breakpoints in the debugger
	 */
	CPUDEBUGGEROP = DBOP_NONE;

	FUNC0(2);

	FUNC9(KDP_EVENT_ENTER);
	not_in_kdp = 0;

	FUNC0(3);

	if (debugger_current_op == DBOP_BREAKPOINT) {
		FUNC10(exception, code, subcode, state);
	} else if (debugger_current_op == DBOP_STACKSHOT) {
		CPUDEBUGGERRET = FUNC8();
#if PGO
 	} else if (debugger_current_op == DBOP_RESET_PGO_COUNTERS) {
		CPUDEBUGGERRET = do_pgo_reset_counters();
#endif
	} else {
		FUNC6(exception, code, subcode, state);
	}

	FUNC0(4);

	not_in_kdp = initial_not_in_kdp;
	FUNC9(KDP_EVENT_EXIT);

	FUNC0(5);

	if (debugger_current_op != DBOP_BREAKPOINT) {
		debugger_panic_str = NULL;
		debugger_panic_args = NULL;
		debugger_panic_data = NULL;
		debugger_panic_options = 0;
		debugger_message = NULL;
	}

	/* Restore the previous debugger state */
	debugger_current_op = db_prev_op;

	FUNC0(6);

	FUNC3();

	FUNC0(7);

	FUNC4();

	FUNC0(8);

	return;
}