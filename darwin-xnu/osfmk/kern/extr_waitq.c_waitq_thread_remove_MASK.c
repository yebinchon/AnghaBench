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
struct waitq {int /*<<< orphan*/  waitq_prio_queue; } ;
struct TYPE_4__ {int /*<<< orphan*/  wait_links; int /*<<< orphan*/  wait_prioq_links; } ;

/* Variables and functions */
 int DBG_FUNC_NONE ; 
 int /*<<< orphan*/  KDEBUG_TRACE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PRIORITY_QUEUE_SCHED_PRI_MAX_HEAP_COMPARE ; 
 int /*<<< orphan*/  THREAD_REMOVED_FROM_TURNSTILE_WAITQ ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TURNSTILE_HEAP_OPERATIONS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 scalar_t__ FUNC6 (struct waitq*) ; 
 int /*<<< orphan*/  FUNC7 (struct waitq*) ; 

__attribute__((used)) static inline void FUNC8(struct waitq *wq,
                                       thread_t thread)
{
	if (FUNC6(wq)) {
		FUNC0(KDEBUG_TRACE,
			(FUNC1(TURNSTILE_HEAP_OPERATIONS, (THREAD_REMOVED_FROM_TURNSTILE_WAITQ))) | DBG_FUNC_NONE,
			FUNC2(FUNC7(wq)),
			FUNC5(thread),
			0, 0, 0);
		FUNC3(&wq->waitq_prio_queue, &thread->wait_prioq_links,
				PRIORITY_QUEUE_SCHED_PRI_MAX_HEAP_COMPARE);
	} else {
		FUNC4(&(thread->wait_links));
	}
}