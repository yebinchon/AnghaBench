#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  thread_t ;
typedef  TYPE_1__* task_t ;
typedef  int /*<<< orphan*/  mach_msg_type_number_t ;
typedef  int /*<<< orphan*/  kern_return_t ;
struct TYPE_4__ {scalar_t__ task_debug; } ;

/* Variables and functions */
 int ARM_DEBUG_STATE32 ; 
 int /*<<< orphan*/  ARM_DEBUG_STATE32_COUNT ; 
 int ARM_DEBUG_STATE64 ; 
 int /*<<< orphan*/  ARM_DEBUG_STATE64_COUNT ; 
 int /*<<< orphan*/  KERN_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 

kern_return_t
FUNC2(
				thread_t thread,
				task_t parent_task)
{
	if (parent_task->task_debug) {
		int flavor;
		mach_msg_type_number_t count;

		flavor = FUNC1(parent_task) ? ARM_DEBUG_STATE64 : ARM_DEBUG_STATE32;
		count = FUNC1(parent_task) ? ARM_DEBUG_STATE64_COUNT : ARM_DEBUG_STATE32_COUNT;

		return FUNC0(thread, flavor, parent_task->task_debug, count);
	}

	return KERN_SUCCESS;
}