#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* task_t ;
typedef  TYPE_2__* affinity_space_t ;
struct TYPE_9__ {int /*<<< orphan*/  aspc_lock; int /*<<< orphan*/  aspc_task_count; } ;
struct TYPE_8__ {TYPE_2__* affinity_space; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void
FUNC4(task_t parent_task, task_t child_task)
{
	affinity_space_t	aspc = parent_task->affinity_space;

	FUNC0("task_affinity_create(%p,%p)\n", parent_task, child_task);

	FUNC1(aspc);

	/*
	 * Bump the task reference count on the shared namespace and
	 * give it to the child.
	 */
	FUNC2(&aspc->aspc_lock);
	aspc->aspc_task_count++;
	child_task->affinity_space = aspc;
	FUNC3(&aspc->aspc_lock);
}