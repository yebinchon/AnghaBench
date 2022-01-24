#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* task_t ;
typedef  TYPE_2__* affinity_space_t ;
struct TYPE_8__ {scalar_t__ aspc_task_count; int /*<<< orphan*/  aspc_lock; int /*<<< orphan*/  aspc_affinities; } ;
struct TYPE_7__ {TYPE_2__* affinity_space; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,TYPE_1__*,TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void
FUNC6(task_t	task)
{
	affinity_space_t	aspc = task->affinity_space;

	FUNC0("task_affinity_deallocate(%p) aspc %p task_count %d\n",
		task, aspc, aspc->aspc_task_count);

	FUNC3(&aspc->aspc_lock);
	if (--(aspc->aspc_task_count) == 0) {
		FUNC2(FUNC5(&aspc->aspc_affinities));
		FUNC4(&aspc->aspc_lock);
		FUNC1(aspc);
	} else {
		FUNC4(&aspc->aspc_lock);
	}
}