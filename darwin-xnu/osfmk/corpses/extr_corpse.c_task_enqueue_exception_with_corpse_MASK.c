#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ thread_t ;
typedef  scalar_t__ task_t ;
typedef  int mach_msg_type_number_t ;
typedef  int /*<<< orphan*/ * mach_exception_data_t ;
typedef  scalar_t__ kern_return_t ;
typedef  int /*<<< orphan*/  exception_type_t ;

/* Variables and functions */
 int /*<<< orphan*/  EXC_GUARD ; 
 int /*<<< orphan*/  EXC_RESOURCE ; 
 scalar_t__ KERN_FAILURE ; 
 scalar_t__ KERN_INVALID_ARGUMENT ; 
 scalar_t__ KERN_SUCCESS ; 
 scalar_t__ TASK_NULL ; 
 scalar_t__ THREAD_NULL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (scalar_t__,scalar_t__*,scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 

kern_return_t
FUNC3(
	task_t task,
	exception_type_t etype,
	mach_exception_data_t code,
	mach_msg_type_number_t codeCnt,
	void *reason)
{
	task_t new_task = TASK_NULL;
	thread_t thread = THREAD_NULL;
	kern_return_t kr;

	if (codeCnt < 2) {
		return KERN_INVALID_ARGUMENT;
	}

	/* Generate a corpse for the given task, will return with a ref on corpse task */
	kr = FUNC1(task, &new_task, &thread,
			etype, code[0], code[1], reason);
	if (kr == KERN_SUCCESS) {
		if (thread == THREAD_NULL) {
			return KERN_FAILURE;
		}
		FUNC0(new_task != TASK_NULL);
		FUNC0(etype == EXC_RESOURCE || etype == EXC_GUARD);
		FUNC2(new_task, thread, etype);
	}
	return kr;
}