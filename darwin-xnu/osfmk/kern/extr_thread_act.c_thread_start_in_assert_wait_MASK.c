#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ wait_result_t ;
typedef  int /*<<< orphan*/  wait_interrupt_t ;
typedef  TYPE_1__* thread_t ;
struct waitq {int dummy; } ;
typedef  int /*<<< orphan*/  spl_t ;
typedef  int /*<<< orphan*/  event_t ;
struct TYPE_6__ {int state; scalar_t__ started; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ THREAD_WAITING ; 
 int TH_UNINT ; 
 int TH_WAIT ; 
 int /*<<< orphan*/  TIMEOUT_NO_LEEWAY ; 
 int /*<<< orphan*/  TIMEOUT_URGENCY_SYS_NORMAL ; 
 int /*<<< orphan*/  TIMEOUT_WAIT_FOREVER ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct waitq* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 scalar_t__ FUNC7 (struct waitq*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (struct waitq*) ; 
 int /*<<< orphan*/  FUNC9 (struct waitq*) ; 

void
FUNC10(
	thread_t			thread,
	event_t             event,
	wait_interrupt_t    interruptible)
{
	struct waitq *waitq = FUNC2(event);
	wait_result_t wait_result;
	spl_t spl;

	spl = FUNC3();
	FUNC8(waitq);

	/* clear out startup condition (safe because thread not started yet) */
	FUNC5(thread);
	FUNC1(!thread->started);
	FUNC1((thread->state & (TH_WAIT | TH_UNINT)) == (TH_WAIT | TH_UNINT));
	thread->state &= ~(TH_WAIT | TH_UNINT);
	FUNC6(thread);

	/* assert wait interruptibly forever */
	wait_result = FUNC7(waitq, FUNC0(event),
	                                 interruptible,
	                                 TIMEOUT_URGENCY_SYS_NORMAL,
	                                 TIMEOUT_WAIT_FOREVER,
	                                 TIMEOUT_NO_LEEWAY,
	                                 thread);
	FUNC1 (wait_result == THREAD_WAITING);

	/* mark thread started while we still hold the waitq lock */
	FUNC5(thread);
	thread->started = TRUE;
	FUNC6(thread);

	FUNC9(waitq);
	FUNC4(spl);
}