#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* task_t ;
struct i_jetsam_coalition {int /*<<< orphan*/  other; } ;
typedef  int /*<<< orphan*/  kern_return_t ;
typedef  TYPE_2__* coalition_t ;
struct TYPE_7__ {size_t type; int /*<<< orphan*/  id; struct i_jetsam_coalition j; } ;
struct TYPE_6__ {int /*<<< orphan*/ * task_coalition; } ;

/* Variables and functions */
 size_t COALITION_TYPE_JETSAM ; 
 int /*<<< orphan*/  KERN_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static kern_return_t
FUNC5(coalition_t coal, task_t task)
{
	struct i_jetsam_coalition *cj;
	FUNC0(coal && coal->type == COALITION_TYPE_JETSAM);

	cj = &coal->j;

	FUNC0(FUNC3(&task->task_coalition[COALITION_TYPE_JETSAM]));

	/* put each task initially in the "other" list */
	FUNC2(&cj->other, &task->task_coalition[COALITION_TYPE_JETSAM]);
	FUNC1("coalition %lld adopted PID:%d as UNDEF",
		 coal->id, FUNC4(task));

	return KERN_SUCCESS;
}