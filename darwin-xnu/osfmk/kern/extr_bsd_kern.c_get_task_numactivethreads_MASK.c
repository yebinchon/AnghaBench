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
typedef  TYPE_1__* thread_t ;
typedef  TYPE_2__* task_t ;
typedef  int /*<<< orphan*/  queue_entry_t ;
struct TYPE_7__ {int /*<<< orphan*/  threads; } ;
struct TYPE_6__ {scalar_t__ active; int /*<<< orphan*/  task_threads; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 

int FUNC5(task_t task)
{
	thread_t	inc;
	int num_active_thr=0;
	FUNC3(task);

	for (inc  = (thread_t)(void *)FUNC1(&task->threads);
			!FUNC0(&task->threads, (queue_entry_t)inc); inc = (thread_t)(void *)FUNC2(&inc->task_threads)) 
	{
		if(inc->active)
			num_active_thr++;
	}
	FUNC4(task);
	return num_active_thr;
}