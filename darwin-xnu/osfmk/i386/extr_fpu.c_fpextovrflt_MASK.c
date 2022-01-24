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
typedef  int /*<<< orphan*/  xstate_t ;
typedef  int /*<<< orphan*/  thread_t ;
struct x86_fx_thread_state {int dummy; } ;
typedef  TYPE_1__* pcb_t ;
typedef  int /*<<< orphan*/  boolean_t ;
struct TYPE_3__ {int /*<<< orphan*/  lock; struct x86_fx_thread_state* ifps; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXC_BAD_ACCESS ; 
 int /*<<< orphan*/  FALSE ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int VM_PROT_EXECUTE ; 
 int VM_PROT_READ ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct x86_fx_thread_state*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ kernel_task ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

void
FUNC14(void)
{
	thread_t	thr_act = FUNC4();
	pcb_t		pcb;
	struct x86_fx_thread_state *ifps;
	boolean_t	intr;
	xstate_t	xstate = FUNC5();

	intr = FUNC10(FALSE);

	if (FUNC8())
		FUNC11("FPU segment overrun exception  at interrupt context\n");
	if (FUNC3() == kernel_task)
		FUNC11("FPU segment overrun exception in kernel thread context\n");

	/*
	 * This is a non-recoverable error.
	 * Invalidate the thread`s FPU state.
	 */
	pcb = FUNC0(thr_act);
	FUNC12(&pcb->lock);
	ifps = pcb->ifps;
	pcb->ifps = 0;
	FUNC13(&pcb->lock);

	/*
	 * Re-initialize the FPU.
	 */
	FUNC2();
	FUNC6();

	/*
	 * And disable access.
	 */
	FUNC1();

	(void)FUNC10(intr);

	if (ifps)
	    FUNC7(ifps, xstate);

	/*
	 * Raise exception.
	 */
	FUNC9(EXC_BAD_ACCESS, VM_PROT_READ|VM_PROT_EXECUTE, 0);
	/*NOTREACHED*/
}