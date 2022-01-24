#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* task_t ;
typedef  int /*<<< orphan*/  kern_return_t ;
typedef  TYPE_3__* coalition_t ;
struct TYPE_7__ {TYPE_2__* leader; } ;
struct TYPE_9__ {size_t type; TYPE_1__ j; int /*<<< orphan*/  id; } ;
struct TYPE_8__ {int /*<<< orphan*/ * task_coalition; TYPE_3__** coalition; } ;

/* Variables and functions */
 size_t COALITION_TYPE_JETSAM ; 
 size_t COALITION_TYPE_RESOURCE ; 
 int /*<<< orphan*/  KERN_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 

__attribute__((used)) static kern_return_t
FUNC6(coalition_t coal, task_t task)
{
	FUNC0(coal && coal->type == COALITION_TYPE_JETSAM);
	FUNC0(task->coalition[COALITION_TYPE_JETSAM] == coal);

	FUNC1("removing PID:%d from coalition id:%lld",
		 FUNC5(task), coal->id);

	if (task == coal->j.leader) {
		coal->j.leader = NULL;
		FUNC1("    PID:%d was the leader!", FUNC5(task));
	} else {
		FUNC0(!FUNC3(&task->task_coalition[COALITION_TYPE_JETSAM]));
	}

	/* remove the task from the specific coalition role queue */
	FUNC4(&task->task_coalition[COALITION_TYPE_JETSAM]);
	FUNC2(task->task_coalition[COALITION_TYPE_RESOURCE]);

	return KERN_SUCCESS;
}