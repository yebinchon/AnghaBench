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
struct TYPE_8__ {scalar_t__ done; int /*<<< orphan*/  context; } ;
typedef  TYPE_1__ ccv_nnc_stream_task_t ;
struct TYPE_9__ {int active; scalar_t__ stream_wait_task_count; int /*<<< orphan*/  mutex; int /*<<< orphan*/  callee; int /*<<< orphan*/  caller; TYPE_1__* head; int /*<<< orphan*/  thread; } ;
typedef  TYPE_2__ ccv_nnc_stream_scheduler_t ;

/* Variables and functions */
 int /*<<< orphan*/  _ccv_nnc_stream_schedule_main ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__* const,TYPE_1__* const) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__* const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__* const) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(ccv_nnc_stream_scheduler_t* const scheduler)
{
	FUNC3(&scheduler->mutex);
	if (scheduler->active)
	{
		FUNC4(&scheduler->mutex);
		return;
	}
	scheduler->active = 1;
	for (;;)
	{
		if (scheduler->head == 0 && scheduler->stream_wait_task_count == 0)
		{
			scheduler->active = 0;
			FUNC4(&scheduler->mutex);
			break;
		}
		if (scheduler->head == 0)
		{
			// Launch a thread to continue the execution.
			FUNC2(&scheduler->thread, 0, _ccv_nnc_stream_schedule_main, scheduler);
			FUNC4(&scheduler->mutex);
			break;
		}
		ccv_nnc_stream_task_t* const task = scheduler->head;
		FUNC0(scheduler, task);
		FUNC4(&scheduler->mutex);
		FUNC5(&scheduler->caller, &task->context);
		task->context = scheduler->callee;
		FUNC3(&scheduler->mutex);
		if (task->done)
			FUNC1(task);
	}
}