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
typedef  TYPE_1__* task_t ;
struct TYPE_7__ {int applied_ru_cpu; int applied_ru_cpu_ext; void* bsd_info; void* policy_ru_cpu; void* policy_ru_cpu_ext; } ;

/* Variables and functions */
 int /*<<< orphan*/  TASK_POLICY_CPU_RESOURCE_USAGE ; 
 void* TASK_POLICY_RESOURCE_ATTRIBUTE_DEFAULT ; 
 int TASK_POLICY_RESOURCE_ATTRIBUTE_NONE ; 
 TYPE_1__* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

int 
FUNC5(task_t task, int cpumon_entitled)
{
	int error = 0;
	int action;
	void * bsdinfo = NULL;

	FUNC3(task);
	if (task != FUNC0()) {
		task->policy_ru_cpu_ext = TASK_POLICY_RESOURCE_ATTRIBUTE_DEFAULT;
	} else {
		task->policy_ru_cpu = TASK_POLICY_RESOURCE_ATTRIBUTE_DEFAULT;
	}

	error = FUNC2(task, cpumon_entitled);
	if (error != 0)
		goto out;	

	action = task->applied_ru_cpu;
	if (task->applied_ru_cpu_ext != TASK_POLICY_RESOURCE_ATTRIBUTE_NONE) {
		/* reset action */
		task->applied_ru_cpu_ext = TASK_POLICY_RESOURCE_ATTRIBUTE_NONE;
	}
	if (action != TASK_POLICY_RESOURCE_ATTRIBUTE_NONE) {
		bsdinfo = task->bsd_info;
		FUNC4(task);
		FUNC1(bsdinfo, TASK_POLICY_CPU_RESOURCE_USAGE, action);
		goto out1;
	}

out:
	FUNC4(task);
out1:
	return(error);

}