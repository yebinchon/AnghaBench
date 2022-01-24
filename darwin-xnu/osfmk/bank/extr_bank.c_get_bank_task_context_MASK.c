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
typedef  int /*<<< orphan*/  boolean_t ;
typedef  TYPE_2__* bank_task_t ;
struct TYPE_12__ {TYPE_1__* bt_task; int /*<<< orphan*/  bt_ledger; } ;
struct TYPE_11__ {TYPE_2__* bank_context; int /*<<< orphan*/  ledger; } ;

/* Variables and functions */
 TYPE_2__* BANK_TASK_NULL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 

__attribute__((used)) static bank_task_t
FUNC8
	(task_t task,
	boolean_t initialize)
{
	bank_task_t bank_task;

	if (task->bank_context || !initialize) {
		FUNC0(task->bank_context != NULL);
		return (task->bank_context);
	}

	bank_task = FUNC1(task);

	/* Grab the task lock and check if we won the race. */
	FUNC6(task);
	if (task->bank_context) {
		FUNC7(task);
		if (bank_task != BANK_TASK_NULL) 
			FUNC2(bank_task, 1);
		return (task->bank_context);
	} else if (bank_task == BANK_TASK_NULL) {
		FUNC7(task);
		return BANK_TASK_NULL;
	}
	/* We won the race. Take a ref on the ledger and initialize bank task. */
	bank_task->bt_ledger = task->ledger;
#if DEVELOPMENT || DEBUG
	bank_task->bt_task = task;
#endif
	FUNC5(task->ledger);

	/* Grab the global bank task lock before setting the bank context on a task */
	FUNC3();
	task->bank_context = bank_task;
	FUNC4();

	FUNC7(task);
	
	return (bank_task);
}