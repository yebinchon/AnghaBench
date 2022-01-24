#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* thread_t ;
struct waitq {int /*<<< orphan*/  waitq_queue; int /*<<< orphan*/  waitq_prio_queue; } ;
typedef  scalar_t__ boolean_t ;
struct TYPE_4__ {int /*<<< orphan*/  wait_links; int /*<<< orphan*/  base_pri; int /*<<< orphan*/  wait_prioq_links; } ;

/* Variables and functions */
 int DBG_FUNC_NONE ; 
 int /*<<< orphan*/  KDEBUG_TRACE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PRIORITY_QUEUE_SCHED_PRI_MAX_HEAP_COMPARE ; 
 int /*<<< orphan*/  THREAD_ADDED_TO_TURNSTILE_WAITQ ; 
 int /*<<< orphan*/  TSU_REGULAR_WAITQ_BLOCK_COUNT ; 
 int /*<<< orphan*/  TSU_TURNSTILE_BLOCK_COUNT ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TURNSTILE_HEAP_OPERATIONS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (struct waitq*) ; 
 int /*<<< orphan*/  FUNC10 (struct waitq*) ; 

__attribute__((used)) static inline void FUNC11(struct waitq *wq,
                                       thread_t thread, boolean_t fifo)
{
	if (FUNC9(wq)) {
		FUNC0(KDEBUG_TRACE,
			(FUNC1(TURNSTILE_HEAP_OPERATIONS, (THREAD_ADDED_TO_TURNSTILE_WAITQ))) | DBG_FUNC_NONE,
			FUNC2(FUNC10(wq)),
			FUNC7(thread),
			thread->base_pri, 0, 0);

		FUNC8(0, TSU_TURNSTILE_BLOCK_COUNT, NULL);

		/*
		 * For turnstile queues (which use priority queues), 
		 * insert the thread in the heap based on its current 
		 * base_pri. Note that the priority queue implementation 
		 * is currently not stable, so does not maintain fifo for 
		 * threads at the same base_pri. Also, if the base_pri 
		 * of the thread changes while its blocked in the waitq, 
		 * the thread position should be updated in the priority 
		 * queue by calling priority queue increase/decrease 
		 * operations.
		 */
		FUNC5(&(thread->wait_prioq_links));
		FUNC6(&wq->waitq_prio_queue,
				&thread->wait_prioq_links, thread->base_pri,
				PRIORITY_QUEUE_SCHED_PRI_MAX_HEAP_COMPARE);
	} else {
		FUNC8(0, TSU_REGULAR_WAITQ_BLOCK_COUNT, NULL);
		if (fifo) {
			FUNC4(&wq->waitq_queue, &thread->wait_links);
		} else {
			FUNC3(&wq->waitq_queue, &thread->wait_links);
		}
	}
}