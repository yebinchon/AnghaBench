#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* thread_t ;
typedef  int /*<<< orphan*/  spl_t ;
typedef  int /*<<< orphan*/  boolean_t ;
struct TYPE_5__ {int sched_flags; int options; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int THREAD_UNINT ; 
 int TH_OPT_INTMASK ; 
 int TH_SFLAG_ABORT ; 
 int TH_SFLAG_ABORTED_MASK ; 
 int TH_SFLAG_ABORTSAFELY ; 
 int /*<<< orphan*/  TRUE ; 
 TYPE_1__* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

boolean_t
FUNC5 (
		void)
{
	thread_t th = FUNC0();
	spl_t s;

	if ((th->sched_flags & TH_SFLAG_ABORTED_MASK) == TH_SFLAG_ABORT &&
			(th->options & TH_OPT_INTMASK) != THREAD_UNINT)
		return (TRUE);
	if (th->sched_flags & TH_SFLAG_ABORTSAFELY) {
		s = FUNC1();
		FUNC3(th);
		if (th->sched_flags & TH_SFLAG_ABORTSAFELY)
			th->sched_flags &= ~TH_SFLAG_ABORTED_MASK;
		FUNC4(th);
		FUNC2(s);
	}
	return FALSE;
}