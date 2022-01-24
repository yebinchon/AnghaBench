#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  turnstile_stats_update_flags_t ;
typedef  TYPE_1__* thread_t ;
struct waitq {int dummy; } ;
struct TYPE_3__ {struct waitq* waitq; } ;

/* Variables and functions */
 int /*<<< orphan*/  TSU_NO_PRI_CHANGE_NEEDED ; 
 int /*<<< orphan*/  TSU_NO_TURNSTILE ; 
 int /*<<< orphan*/  TSU_THREAD_RUNNABLE ; 
 struct waitq* FUNC0 (struct waitq*) ; 
 scalar_t__ FUNC1 (struct waitq*) ; 
 int /*<<< orphan*/  FUNC2 (struct waitq*) ; 

__attribute__((used)) static turnstile_stats_update_flags_t
FUNC3(thread_t thread)
{
	struct waitq *waitq = thread->waitq;

	/* Check if the thread is on a waitq */
	if (waitq == NULL) {
		return TSU_THREAD_RUNNABLE;
	}

	/* Get the safeq if the waitq is a port queue */
	if (FUNC1(waitq)) {
		waitq = FUNC0(waitq);
	}

	/* Check if the waitq is a turnstile queue */
	if (!FUNC2(waitq)) {
		return TSU_NO_TURNSTILE;
	}

	/* Thread blocked on turnstile waitq but no propagation needed */
	return TSU_NO_PRI_CHANGE_NEEDED;
}