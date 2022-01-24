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
typedef  TYPE_2__* thread_t ;
struct TYPE_5__ {int /*<<< orphan*/  waitq_prio_queue; } ;
struct turnstile {TYPE_1__ ts_waitq; } ;
typedef  int /*<<< orphan*/  boolean_t ;
struct TYPE_6__ {int base_pri; int /*<<< orphan*/  wait_prioq_links; } ;

/* Variables and functions */
 int DBG_FUNC_NONE ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  KDEBUG_TRACE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  THREAD_MOVED_IN_TURNSTILE_WAITQ ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TURNSTILE_HEAP_OPERATIONS ; 
 int /*<<< orphan*/  FUNC2 (struct turnstile*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (struct turnstile*) ; 

__attribute__((used)) static boolean_t
FUNC7(
	struct turnstile *dst_turnstile,
	thread_t thread)
{
	int thread_link_priority = FUNC3(&(dst_turnstile->ts_waitq.waitq_prio_queue),
				 &(thread->wait_prioq_links));

	if (thread->base_pri != thread_link_priority) {
		FUNC0(KDEBUG_TRACE,
			(FUNC1(TURNSTILE_HEAP_OPERATIONS, (THREAD_MOVED_IN_TURNSTILE_WAITQ))) | DBG_FUNC_NONE,
			FUNC2(dst_turnstile),
			FUNC4(thread),
			thread->base_pri,
			thread_link_priority, 0);
	}

	if (!FUNC5(
			&dst_turnstile->ts_waitq.waitq_prio_queue,
			&thread->wait_prioq_links, thread->base_pri)) {
		return FALSE;
	}

	/* Update dst turnstile's priority */
	return FUNC6(dst_turnstile);
}