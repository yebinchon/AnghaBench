#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vm_offset_t ;
typedef  TYPE_2__* thread_t ;
struct TYPE_17__ {int /*<<< orphan*/  specFlags; } ;
struct TYPE_18__ {scalar_t__ kernel_stack; scalar_t__ reserved_stack; TYPE_1__ machine; } ;

/* Variables and functions */
 int /*<<< orphan*/  OnProc ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 

void
FUNC9(thread_t old,
	      thread_t new)
{
	vm_offset_t     stack;

	FUNC1(new);
	FUNC1(old);

	FUNC4(old);

	stack = old->kernel_stack;
	if (stack == old->reserved_stack) {
		FUNC1(new->reserved_stack);
		old->reserved_stack = new->reserved_stack;
		new->reserved_stack = stack;
	}
	old->kernel_stack = 0;
	/*
	 * A full call to machine_stack_attach() is unnecessry
	 * because old stack is already initialized.
	 */
	new->kernel_stack = stack;

	FUNC3(old, new);
	
	old->machine.specFlags &= ~OnProc;
	new->machine.specFlags |= OnProc;

	FUNC7(old, new, FUNC2());
	FUNC0(old, new);

#if HYPERVISOR
	ml_hv_cswitch(old, new);
#endif

	FUNC5(new);
	FUNC8(new);

	return;
}