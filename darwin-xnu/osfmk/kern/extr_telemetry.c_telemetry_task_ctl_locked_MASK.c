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
typedef  int uint32_t ;
typedef  TYPE_1__* task_t ;
struct TYPE_4__ {int t_flags; int /*<<< orphan*/  bsd_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 int TF_TELEMETRY ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int telemetry_active_tasks ; 

void
FUNC6(task_t task, uint32_t reasons, int enable_disable)
{
	uint32_t origflags;

	FUNC2((reasons != 0) && ((reasons | TF_TELEMETRY) == TF_TELEMETRY));

	FUNC5(task);

	origflags = task->t_flags;

	if (enable_disable == 1) {
		task->t_flags |= reasons;
		if ((origflags & TF_TELEMETRY) == 0) {
			FUNC1(&telemetry_active_tasks);
#if TELEMETRY_DEBUG
			printf("%s: telemetry OFF -> ON (%d active)\n", proc_name_address(task->bsd_info), telemetry_active_tasks);
#endif
		}
	} else {
		task->t_flags &= ~reasons;
		if (((origflags & TF_TELEMETRY) != 0) && ((task->t_flags & TF_TELEMETRY) == 0)) {
			/*
			 * If this task went from having at least one telemetry bit to having none,
			 * the net change was to disable telemetry for the task.
			 */
			FUNC0(&telemetry_active_tasks);
#if TELEMETRY_DEBUG
			printf("%s: telemetry ON -> OFF (%d active)\n", proc_name_address(task->bsd_info), telemetry_active_tasks);
#endif
		}
	}
}