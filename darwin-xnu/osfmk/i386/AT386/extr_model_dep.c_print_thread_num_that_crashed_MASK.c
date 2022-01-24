#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* thread_t ;
typedef  TYPE_2__* task_t ;
struct TYPE_6__ {int thread_count; int /*<<< orphan*/  threads; } ;
struct TYPE_5__ {int /*<<< orphan*/  task_threads; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 

void
FUNC4(task_t task)
{
	thread_t		c_thread = FUNC0();
	thread_t		thread;
	int             j;
	
	for (j = 0, thread = (thread_t) FUNC2(&task->threads); j < task->thread_count;
			++j, thread = (thread_t) FUNC3(&thread->task_threads)) {

		if (c_thread == thread) {
			FUNC1("\nThread %d crashed\n", j);
			break;
		}
	}
}