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
typedef  int /*<<< orphan*/  run_queue_t ;
typedef  TYPE_2__* processor_t ;
typedef  int /*<<< orphan*/  processor_set_t ;
typedef  int boolean_t ;
struct TYPE_11__ {int /*<<< orphan*/  processor_set; } ;
struct TYPE_10__ {TYPE_2__* runq; } ;

/* Variables and functions */
 TYPE_2__* PROCESSOR_NULL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 

__attribute__((used)) static boolean_t
FUNC6(processor_t processor,
                                         thread_t thread)
{
	processor_set_t pset;
	run_queue_t     rq;

	pset = processor->processor_set;
	FUNC1(pset);

	rq = FUNC5(processor);

	if (processor == thread->runq) {
		/*
		 * Thread is on a run queue and we have a lock on
		 * that run queue.
		 */
		FUNC4(processor, thread);
		FUNC3(rq, thread);
	}
	else {
		/*
		 * The thread left the run queue before we could
		 * lock the run queue.
		 */
		FUNC0(thread->runq == PROCESSOR_NULL);
		processor = PROCESSOR_NULL;
	}

	FUNC2(pset);

	return (processor != PROCESSOR_NULL);
}