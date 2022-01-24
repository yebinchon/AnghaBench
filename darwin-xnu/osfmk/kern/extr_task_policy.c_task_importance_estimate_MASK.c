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
typedef  int /*<<< orphan*/ * task_t ;

/* Variables and functions */
 scalar_t__ TASK_FOREGROUND_APPLICATION ; 
 scalar_t__ TASK_IMPORTANCE_FOREGROUND ; 
 scalar_t__ TASK_IMPORTANCE_NOTDARWINBG ; 
 int /*<<< orphan*/  TASK_POLICY_DARWIN_BG ; 
 int /*<<< orphan*/  TASK_POLICY_ROLE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC1(task_t task)
{
	int task_importance = 0;

	if (task == NULL) {
		return 0;
	}

	if (FUNC0(task, TASK_POLICY_ROLE) == TASK_FOREGROUND_APPLICATION)
			task_importance += TASK_IMPORTANCE_FOREGROUND;

	if (FUNC0(task, TASK_POLICY_DARWIN_BG) == 0)
			task_importance += TASK_IMPORTANCE_NOTDARWINBG;
	
	return task_importance;
}