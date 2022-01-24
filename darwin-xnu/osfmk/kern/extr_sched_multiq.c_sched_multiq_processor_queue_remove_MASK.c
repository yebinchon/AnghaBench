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
typedef  TYPE_2__* processor_t ;
typedef  int /*<<< orphan*/  processor_set_t ;
typedef  int /*<<< orphan*/  boolean_t ;
struct TYPE_11__ {int /*<<< orphan*/  processor_set; } ;
struct TYPE_10__ {int /*<<< orphan*/  sched_group; TYPE_2__* runq; TYPE_2__* bound_processor; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 TYPE_2__* PROCESSOR_NULL ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static boolean_t
FUNC7(
                                    processor_t processor,
                                    thread_t    thread)
{
	boolean_t removed = FALSE;
	processor_set_t pset = processor->processor_set;

	FUNC3(pset);

	if (thread->runq != PROCESSOR_NULL) {
		/*
		 * Thread is on a run queue and we have a lock on
		 * that run queue.
		 */

		FUNC0(thread->runq == processor);

		if (thread->bound_processor != PROCESSOR_NULL) {
			FUNC0(processor == thread->bound_processor);
			FUNC5(FUNC1(processor), thread);
			thread->runq = PROCESSOR_NULL;
		} else {
			FUNC6(FUNC2(processor),
			                          thread->sched_group,
			                          thread);
		}

		removed = TRUE;
	}

	FUNC4(pset);

	return removed;
}