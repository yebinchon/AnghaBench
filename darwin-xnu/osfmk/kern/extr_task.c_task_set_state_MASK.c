#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  thread_state_t ;
typedef  TYPE_1__* task_t ;
typedef  int /*<<< orphan*/  mach_msg_type_number_t ;
typedef  int /*<<< orphan*/  kern_return_t ;
struct TYPE_7__ {int /*<<< orphan*/  active; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_FAILURE ; 
 int /*<<< orphan*/  KERN_INVALID_ARGUMENT ; 
 TYPE_1__* TASK_NULL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

kern_return_t 
FUNC3(
	task_t task, 
	int flavor, 
	thread_state_t state, 
	mach_msg_type_number_t state_count)
{
	kern_return_t ret;

	if (task == TASK_NULL) {
		return (KERN_INVALID_ARGUMENT);
	}

	FUNC1(task);

	if (!task->active) {
		FUNC2(task);
		return (KERN_FAILURE);
	}

	ret = FUNC0(task, flavor, state, state_count);

	FUNC2(task);
	return ret;
}