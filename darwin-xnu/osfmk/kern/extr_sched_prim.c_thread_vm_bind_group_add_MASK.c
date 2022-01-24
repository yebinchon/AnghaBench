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
typedef  TYPE_1__* thread_t ;
struct TYPE_5__ {int /*<<< orphan*/  options; } ;

/* Variables and functions */
 scalar_t__ MAX_VM_BIND_GROUP_COUNT ; 
 int /*<<< orphan*/  THREAD_CONTINUE_NULL ; 
 int /*<<< orphan*/  TH_OPT_SCHED_VM_GROUP ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* FUNC1 () ; 
 int /*<<< orphan*/  master_processor ; 
 int /*<<< orphan*/  sched_vm_group_list_lock ; 
 scalar_t__ sched_vm_group_thread_count ; 
 TYPE_1__** sched_vm_group_thread_list ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 

void
FUNC7(void)
{
	thread_t self = FUNC1();

	FUNC6(self);
	self->options |= TH_OPT_SCHED_VM_GROUP;

	FUNC2(&sched_vm_group_list_lock);
	FUNC0(sched_vm_group_thread_count < MAX_VM_BIND_GROUP_COUNT);
	sched_vm_group_thread_list[sched_vm_group_thread_count++] = self;
	FUNC3(&sched_vm_group_list_lock);

	FUNC4(master_processor);

	/* Switch to bound processor if not already there */
	FUNC5(THREAD_CONTINUE_NULL);
}