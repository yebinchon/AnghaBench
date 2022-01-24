#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_5__* thread_t ;
typedef  int mach_msg_type_number_t ;
typedef  int mach_exception_data_type_t ;
typedef  int /*<<< orphan*/  exception_type_t ;
typedef  int /*<<< orphan*/  arm_saved_state_t ;
struct TYPE_10__ {int /*<<< orphan*/ * upcb; TYPE_3__* DebugData; } ;
struct TYPE_11__ {TYPE_4__ machine; } ;
struct TYPE_7__ {int mdscr_el1; } ;
struct TYPE_8__ {TYPE_1__ ds64; } ;
struct TYPE_9__ {TYPE_2__ uds; } ;

/* Variables and functions */
 int DAIF_FIQF ; 
 int DAIF_IRQF ; 
 int /*<<< orphan*/  EXC_BREAKPOINT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int PSR64_SS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int*,int) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC7(arm_saved_state_t *state)
{
	thread_t thread = FUNC2();
	exception_type_t exc;
	mach_exception_data_type_t codes[2];
	mach_msg_type_number_t numcodes = 2;

	if (!FUNC0(FUNC4(state))) {
		FUNC5("SW_STEP_DEBUG exception from kernel.", state);
	}

	// Disable single step and unmask interrupts (in the saved state, anticipating next exception return)
	if (thread->machine.DebugData != NULL) {
		thread->machine.DebugData->uds.ds64.mdscr_el1 &= ~0x1;
	} else {
		FUNC5("SW_STEP_DEBUG exception thread DebugData is NULL.", state);
	}

	FUNC6((thread->machine.upcb),
	    FUNC4((thread->machine.upcb)) & ~(PSR64_SS | DAIF_IRQF | DAIF_FIQF));

	// Special encoding for gdb single step event on ARM
	exc = EXC_BREAKPOINT;
	codes[0] = 1;
	codes[1] = 0;

	FUNC3(exc, codes, numcodes);
	FUNC1(0); /* NOTREACHED */
}