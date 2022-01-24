#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* thread_t ;
typedef  TYPE_2__* task_t ;
typedef  int /*<<< orphan*/  queue_entry_t ;
typedef  scalar_t__ kern_return_t ;
struct TYPE_11__ {int /*<<< orphan*/  threads; int /*<<< orphan*/  active; } ;
struct TYPE_10__ {int sched_flags; int /*<<< orphan*/  task_threads; scalar_t__ active; } ;

/* Variables and functions */
 scalar_t__ KERN_FAILURE ; 
 scalar_t__ KERN_SUCCESS ; 
 int TH_SFLAG_ABORT ; 
 int TH_SFLAG_ABORTED_MASK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 

kern_return_t
FUNC8(
	task_t			task,
	thread_t		thread,
	int				setast)
{
	kern_return_t	result = KERN_FAILURE;
	thread_t		inc;

	FUNC4(task);

	if (!task->active) {
		FUNC5(task);

		return (KERN_FAILURE);
	}

	for (inc  = (thread_t)(void *)FUNC2(&task->threads);
			!FUNC1(&task->threads, (queue_entry_t)inc); ) {
		if (inc == thread) {
			FUNC6(inc);

			if (inc->active  && 
					(inc->sched_flags & TH_SFLAG_ABORTED_MASK) != TH_SFLAG_ABORT) {
				result = KERN_SUCCESS;
				break;
			}

			FUNC7(inc);
			break;
		}

		inc = (thread_t)(void *)FUNC3(&inc->task_threads);
	}

	if (result == KERN_SUCCESS) {
		if (setast)
			FUNC0(thread);

		FUNC7(thread);
	}

	FUNC5(task);

	return (result);
}