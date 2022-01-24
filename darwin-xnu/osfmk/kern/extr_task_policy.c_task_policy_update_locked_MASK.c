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
typedef  int /*<<< orphan*/  task_pend_token_t ;
struct TYPE_7__ {int /*<<< orphan*/  priority; } ;

/* Variables and functions */
 int DBG_FUNC_END ; 
 int DBG_FUNC_START ; 
 int /*<<< orphan*/  FALSE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IMP_UPDATE ; 
 int /*<<< orphan*/  KDEBUG_TRACE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TASK_POLICY_TASK ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC6(task_t task, task_pend_token_t pend_token)
{
	FUNC1(KDEBUG_TRACE,
	                          (FUNC0(IMP_UPDATE, TASK_POLICY_TASK) | DBG_FUNC_START),
	                          FUNC2(task), FUNC4(task),
	                          FUNC5(task), task->priority, 0);

	FUNC3(task, FALSE, pend_token);

	FUNC1(KDEBUG_TRACE,
				  (FUNC0(IMP_UPDATE, TASK_POLICY_TASK)) | DBG_FUNC_END,
				  FUNC2(task), FUNC4(task),
				  FUNC5(task), task->priority, 0);
}