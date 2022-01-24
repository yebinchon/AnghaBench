#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_8__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vm_offset_t ;
typedef  scalar_t__ boolean_t ;
struct TYPE_10__ {int /*<<< orphan*/  cpsr; } ;
typedef  TYPE_2__ arm_saved_state_t ;
struct TYPE_9__ {scalar_t__ kstackptr; } ;
struct TYPE_11__ {TYPE_1__ machine; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMB_ISH ; 
 scalar_t__ FALSE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_8__* FUNC3 () ; 
 int /*<<< orphan*/  debugger_sync ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ mp_kdp_trap ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ ) ; 

void
FUNC10(
	void		*ctx)
{
	boolean_t		save_context = FALSE;
	vm_offset_t		kstackptr = 0;
	arm_saved_state_t	*regs = (arm_saved_state_t *) ctx;

	if (regs != NULL) {
#if defined(__arm64__)
		save_context = PSR64_IS_KERNEL(get_saved_state_cpsr(regs));
#else
		save_context = FUNC1(regs->cpsr);
#endif
	}

	kstackptr = FUNC3()->machine.kstackptr;
	arm_saved_state_t *state = (arm_saved_state_t *)kstackptr;

	if (save_context) {
		/* Save the interrupted context before acknowledging the signal */
		*state = *regs;

	} else if (regs) {
		/* zero old state so machine_trace_thread knows not to backtrace it */
		FUNC6(state, 0);
		FUNC8(state, 0);
		FUNC7(state, 0);
		FUNC9(state, 0);
	}

	(void)FUNC5(&debugger_sync, 1);
	FUNC2(DMB_ISH);
	while (mp_kdp_trap);

	/* Any cleanup for our pushed context should go here */
}