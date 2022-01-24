#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ccv_nnc_stream_task_t ;
struct TYPE_5__ {int /*<<< orphan*/  mutex; int /*<<< orphan*/  active; } ;
typedef  TYPE_1__ ccv_nnc_stream_scheduler_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__* const) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__* const,int /*<<< orphan*/ * const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(ccv_nnc_stream_scheduler_t* const scheduler, ccv_nnc_stream_task_t* const task)
{
	int activate_scheduler = 0;
	FUNC2(&scheduler->mutex);
	// Append to the end, for swap tasks, they all prepend. Thus, this ensures all tasks scheduled this way will be executed later.
	FUNC1(scheduler, task);
	if (!scheduler->active)
		activate_scheduler = 1;
	FUNC3(&scheduler->mutex);
	if (activate_scheduler)
		FUNC0(scheduler);
}