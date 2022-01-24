#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* task_t ;
typedef  TYPE_2__* ipc_importance_task_t ;
struct TYPE_12__ {TYPE_1__* iit_task; } ;
struct TYPE_11__ {TYPE_2__* task_imp_base; } ;

/* Variables and functions */
 TYPE_2__* IIT_NULL ; 
 TYPE_1__* TASK_NULL ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 

void
FUNC8(task_t task)
{
	ipc_importance_task_t task_imp;

	FUNC6(task);
	FUNC1();
	task_imp = task->task_imp_base;

	/* did somebody beat us to it? */
	if (IIT_NULL == task_imp) {
		FUNC4();
		FUNC7(task);
		return;
	}

	/* disconnect the task from this importance */
	FUNC0(task_imp->iit_task == task);
	task_imp->iit_task = TASK_NULL;
	task->task_imp_base = IIT_NULL;
	FUNC7(task);
	
	/* reset the effects the current task hold on the importance */
	FUNC2(task_imp, TRUE);

	FUNC3(task_imp);
	/* importance unlocked */

	/* deallocate the task now that the importance is unlocked */
	FUNC5(task);
}