#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* thread_t ;
typedef  int /*<<< orphan*/  spl_t ;
typedef  int /*<<< orphan*/  sched_update_scan_context_t ;
typedef  TYPE_2__* processor_t ;
typedef  TYPE_3__* processor_set_t ;
typedef  scalar_t__ boolean_t ;
struct TYPE_13__ {int /*<<< orphan*/  pset_runq; struct TYPE_13__* pset_list; } ;
struct TYPE_12__ {TYPE_1__* idle_thread; TYPE_3__* processor_set; struct TYPE_12__* processor_list; } ;
struct TYPE_11__ {scalar_t__ sched_stamp; } ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 TYPE_1__* THREAD_NULL ; 
 scalar_t__ TRUE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 TYPE_2__* processor_list ; 
 TYPE_3__ pset0 ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ sched_tick ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 () ; 

__attribute__((used)) static void
FUNC9(sched_update_scan_context_t scan_context)
{
	boolean_t               restart_needed = FALSE;
	processor_t             processor = processor_list;
	processor_set_t         pset;
	thread_t                thread;
	spl_t                   s;

	/*
	 *  We update the threads associated with each processor (bound and idle threads)
	 *  and then update the threads in each pset runqueue.
	 */

	do {
		do {
			pset = processor->processor_set;

			s = FUNC5();
			FUNC2(pset);

			restart_needed = FUNC4(FUNC1(processor), scan_context);

			FUNC3(pset);
			FUNC6(s);

			if (restart_needed)
				break;

			thread = processor->idle_thread;
			if (thread != THREAD_NULL && thread->sched_stamp != sched_tick) {
				if (FUNC7(thread) == FALSE) {
					restart_needed = TRUE;
					break;
				}
			}
		} while ((processor = processor->processor_list) != NULL);

		/* Ok, we now have a collection of candidates -- fix them. */
		FUNC8();

	} while (restart_needed);

	pset = &pset0;

	do {
		do {
			s = FUNC5();
			FUNC2(pset);

			restart_needed = FUNC0(&pset->pset_runq, scan_context);

			FUNC3(pset);
			FUNC6(s);

			if (restart_needed)
				break;
		} while ((pset = pset->pset_list) != NULL);

		/* Ok, we now have a collection of candidates -- fix them. */
		FUNC8();

	} while (restart_needed);
}