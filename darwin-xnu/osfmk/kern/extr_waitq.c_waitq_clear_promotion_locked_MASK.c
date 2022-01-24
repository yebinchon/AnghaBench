#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* thread_t ;
struct waitq {int dummy; } ;
typedef  int /*<<< orphan*/  spl_t ;
struct TYPE_8__ {int sched_flags; } ;

/* Variables and functions */
 TYPE_1__* THREAD_NULL ; 
 int TH_SFLAG_WAITQ_PROMOTED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int FUNC7 (struct waitq*) ; 
 int /*<<< orphan*/  FUNC8 (struct waitq*) ; 

void FUNC9(struct waitq *waitq, thread_t thread)
{
	spl_t s;

	FUNC0(FUNC7(waitq));
	FUNC0(thread != THREAD_NULL);
	FUNC0(thread == FUNC1());

	/* This flag is only cleared by the thread itself, so safe to check outside lock */
	if ((thread->sched_flags & TH_SFLAG_WAITQ_PROMOTED) != TH_SFLAG_WAITQ_PROMOTED)
		return;

	if (!FUNC8(waitq))
		s = FUNC3();
	FUNC5(thread);

	FUNC2(thread, TH_SFLAG_WAITQ_PROMOTED, 0);

	FUNC6(thread);
	if (!FUNC8(waitq))
		FUNC4(s);
}