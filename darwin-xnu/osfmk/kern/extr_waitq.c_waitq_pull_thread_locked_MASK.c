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
typedef  TYPE_1__* thread_t ;
struct waitq {scalar_t__ waitq_eventmask; } ;
struct TYPE_6__ {struct waitq* waitq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (struct waitq*) ; 
 struct waitq* FUNC4 (struct waitq*) ; 
 int /*<<< orphan*/  FUNC5 (struct waitq*) ; 
 scalar_t__ FUNC6 (struct waitq*) ; 
 int /*<<< orphan*/  FUNC7 (struct waitq*) ; 
 int /*<<< orphan*/  FUNC8 (struct waitq*) ; 
 int /*<<< orphan*/  FUNC9 (struct waitq*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (struct waitq*) ; 

int FUNC11(struct waitq *waitq, thread_t thread)
{
	struct waitq *safeq;

	FUNC1(thread);
	FUNC0(thread->waitq == waitq);

	/* Find the interrupts disabled queue thread is waiting on */
	if (!FUNC5(waitq)) {
		safeq = FUNC4(waitq);
	} else {
		safeq = waitq;
	}

	/* thread is already locked so have to try for the waitq lock */
	if (!FUNC7(safeq))
		return 0;

	FUNC9(safeq, thread);
	FUNC2(thread);
	FUNC8(waitq);

	/* clear the global event mask if this was the last thread there! */
	if (FUNC6(safeq) && FUNC3(safeq)) {
		safeq->waitq_eventmask = 0;
		/* JMM - also mark no-waiters on waitq (if not the same as the safeq) */
	}

	FUNC10(safeq);

	return 1;
}