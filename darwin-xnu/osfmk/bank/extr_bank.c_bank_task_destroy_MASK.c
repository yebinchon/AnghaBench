#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* task_t ;
typedef  int /*<<< orphan*/ * bank_task_t ;
struct TYPE_3__ {int /*<<< orphan*/ * bank_context; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

void
FUNC4(task_t task)
{
	bank_task_t bank_task;

	/* Grab the global bank task lock before dropping the ref on task bank context */
	FUNC2();
	bank_task = task->bank_context;
	task->bank_context = NULL;
	FUNC3();

	FUNC0(bank_task);
	FUNC1(bank_task, 1);
}