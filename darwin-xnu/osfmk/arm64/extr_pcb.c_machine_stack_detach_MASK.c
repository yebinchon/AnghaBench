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
typedef  scalar_t__ vm_offset_t ;
typedef  TYPE_2__* thread_t ;
struct TYPE_5__ {scalar_t__ kstackptr; } ;
struct TYPE_6__ {TYPE_1__ machine; scalar_t__ kernel_stack; int /*<<< orphan*/  sched_pri; int /*<<< orphan*/  priority; } ;

/* Variables and functions */
 int /*<<< orphan*/  DBG_MACH_SCHED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,uintptr_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MACH_STACK_DETACH ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 

vm_offset_t
FUNC3(
		     thread_t thread)
{
	vm_offset_t     stack;

	FUNC0(FUNC1(DBG_MACH_SCHED, MACH_STACK_DETACH),
		     (uintptr_t)FUNC2(thread), thread->priority, thread->sched_pri, 0, 0);

	stack = thread->kernel_stack;
	thread->kernel_stack = 0;
	thread->machine.kstackptr = 0;

	return (stack);
}