#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* thread_t ;
typedef  int /*<<< orphan*/  spl_t ;
struct TYPE_7__ {int sched_flags; } ;

/* Variables and functions */
 int TH_SFLAG_ABORT ; 
 int TH_SFLAG_ABORTSAFELY ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC6(
	thread_t	thread)
{
	spl_t		s = FUNC0();

	FUNC3(thread);

	if (!(thread->sched_flags & TH_SFLAG_ABORT)) {
		thread->sched_flags |= TH_SFLAG_ABORT;
		FUNC4(thread);
		FUNC2(thread);
	} else {
		thread->sched_flags &= ~TH_SFLAG_ABORTSAFELY;
	}

	FUNC5(thread);
	FUNC1(s);
}