#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;
typedef  struct TYPE_19__   TYPE_13__ ;

/* Type definitions */
typedef  scalar_t__ vm_offset_t ;
typedef  TYPE_2__* thread_t ;
typedef  int /*<<< orphan*/  thread_continue_t ;
struct TYPE_20__ {int /*<<< orphan*/  specFlags; } ;
struct TYPE_21__ {scalar_t__ kernel_stack; TYPE_1__ machine; } ;
struct TYPE_19__ {scalar_t__ cpu_active_stack; } ;

/* Variables and functions */
 int /*<<< orphan*/  DBG_MACH_SCHED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MACH_STACK_DEPTH ; 
 int /*<<< orphan*/  OnProc ; 
 TYPE_2__* FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 TYPE_13__* FUNC6 () ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,TYPE_2__*) ; 
 scalar_t__ kernel_stack_depth_max ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,TYPE_2__*,int /*<<< orphan*/ ) ; 

thread_t
FUNC12(
	thread_t			old,
	thread_continue_t	continuation,
	thread_t			new)
{
	FUNC4(FUNC6()->cpu_active_stack == old->kernel_stack);

#if KPC
	kpc_off_cpu(old);
#endif /* KPC */

	/*
	 *	Save FP registers if in use.
	 */
	FUNC8(old, new);

	old->machine.specFlags &= ~OnProc;
	new->machine.specFlags |= OnProc;

	/*
	 * Monitor the stack depth and report new max,
	 * not worrying about races.
	 */
	vm_offset_t	depth = FUNC7();
	if (depth > kernel_stack_depth_max) {
		kernel_stack_depth_max = depth;
		FUNC0(
			FUNC1(DBG_MACH_SCHED, MACH_STACK_DEPTH),
			(long) depth, 0, 0, 0, 0);
	}

	/*
	 *	Switch address maps if need be, even if not switching tasks.
	 *	(A server activation may be "borrowing" a client map.)
	 */
	FUNC11(old, new, FUNC5());

	/*
	 *	Load the rest of the user state for the new thread
	 */
	FUNC3(old, new);

#if HYPERVISOR
	ml_hv_cswitch(old, new);
#endif

	return(FUNC2(old, continuation, new));
}