#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  TYPE_2__* thread_t ;
typedef  TYPE_3__* task_t ;
typedef  int /*<<< orphan*/  queue_entry_t ;
struct TYPE_9__ {int /*<<< orphan*/  threads; } ;
struct TYPE_7__ {int /*<<< orphan*/  cthread_self; } ;
struct TYPE_8__ {int /*<<< orphan*/  task_threads; TYPE_1__ machine; int /*<<< orphan*/  thread_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 

int
FUNC5(task_t task, void * buffer, int thcount, bool thuniqueid)
{
	int numthr=0;
	thread_t thact;
	uint64_t * uptr;
	uint64_t  thaddr;

	uptr = (uint64_t *)buffer;

	FUNC3(task);

	for (thact  = (thread_t)(void *)FUNC1(&task->threads);
			!FUNC0(&task->threads, (queue_entry_t)thact); ) {
		thaddr = (thuniqueid) ? thact->thread_id : thact->machine.cthread_self;
		*uptr++ = thaddr;
		numthr++;
		if (numthr >= thcount)
			goto out;
		thact = (thread_t)(void *)FUNC2(&thact->task_threads);
	}

out:
	FUNC4(task);
	return (int)(numthr * sizeof(uint64_t));
	
}