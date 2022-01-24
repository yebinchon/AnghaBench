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
typedef  int uint32_t ;
typedef  TYPE_2__* thread_t ;
struct x86_fx_thread_state {int fx_control; int const fx_status; } ;
typedef  int /*<<< orphan*/  boolean_t ;
struct TYPE_5__ {struct x86_fx_thread_state* ifps; } ;
struct TYPE_6__ {TYPE_1__ machine; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXC_ARITHMETIC ; 
 int /*<<< orphan*/  EXC_I386_EXTERR ; 
 int /*<<< orphan*/  FALSE ; 
 int FPC_DM ; 
 int FPC_IM ; 
 int FPC_OM ; 
 int FPC_PE ; 
 int FPC_UE ; 
 int FPC_ZM ; 
 int const FPS_DE ; 
 int const FPS_IE ; 
 int const FPS_OE ; 
 int const FPS_PE ; 
 int const FPS_UE ; 
 int const FPS_ZE ; 
 scalar_t__ FUNC0 () ; 
 TYPE_2__* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int const,int,int const) ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int const) ; 
 scalar_t__ kernel_task ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

void
FUNC8(void)
{
	thread_t	thr_act = FUNC1();
	struct x86_fx_thread_state *ifps = thr_act->machine.ifps;
	boolean_t	intr;

	intr = FUNC6(FALSE);

	if (FUNC4())
		FUNC7("FPU error exception at interrupt context\n");
	if (FUNC0() == kernel_task)
		FUNC7("FPU error exception in kernel thread context\n");

	/*
	 * Save the FPU state and turn off the FPU.
	 */
	FUNC2(thr_act);

	(void)FUNC6(intr);

	const uint32_t mask = ifps->fx_control &
	    (FPC_IM | FPC_DM | FPC_ZM | FPC_OM | FPC_UE | FPC_PE);
	const uint32_t xcpt = ~mask & (ifps->fx_status &
	    (FPS_IE | FPS_DE | FPS_ZE | FPS_OE | FPS_UE | FPS_PE));
	FUNC3(EXC_I386_EXTERR, ifps->fx_status, ifps->fx_control, xcpt);
	/*
	 * Raise FPU exception.
	 * Locking not needed on pcb->ifps,
	 * since thread is running.
	 */
	FUNC5(EXC_ARITHMETIC,
		       EXC_I386_EXTERR,
		       ifps->fx_status);

	/*NOTREACHED*/
}