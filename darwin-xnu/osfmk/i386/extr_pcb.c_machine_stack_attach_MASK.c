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
typedef  int /*<<< orphan*/  vm_offset_t ;
typedef  TYPE_1__* thread_t ;
struct x86_kernel_state {unsigned long k_rip; unsigned long k_rbx; unsigned long k_rsp; unsigned long k_eip; unsigned long k_ebx; unsigned long k_esp; } ;
struct TYPE_5__ {int /*<<< orphan*/  kernel_stack; int /*<<< orphan*/  sched_pri; int /*<<< orphan*/  priority; } ;

/* Variables and functions */
 int /*<<< orphan*/  DBG_MACH_SCHED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,uintptr_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MACH_STACK_ATTACH ; 
 struct x86_kernel_state* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ Thread_continue ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ thread_continue ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 

void
FUNC6(
	thread_t		thread,
	vm_offset_t		stack)
{
	struct x86_kernel_state *statep;

	FUNC0(FUNC1(DBG_MACH_SCHED, MACH_STACK_ATTACH),
		     (uintptr_t)FUNC5(thread), thread->priority,
		     thread->sched_pri, 0, 0);

	FUNC3(stack);
	thread->kernel_stack = stack;
	FUNC4(thread);

	statep = FUNC2(stack);
#if defined(__x86_64__)
	statep->k_rip = (unsigned long) Thread_continue;
	statep->k_rbx = (unsigned long) thread_continue;
	statep->k_rsp = (unsigned long) FUNC2(stack);
#else
	statep->k_eip = (unsigned long) Thread_continue;
	statep->k_ebx = (unsigned long) thread_continue;
	statep->k_esp = (unsigned long) STACK_IKS(stack);
#endif

	return;
}