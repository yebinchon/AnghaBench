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
typedef  int /*<<< orphan*/  spl_t ;
struct TYPE_6__ {scalar_t__ rwlock_count; int sched_flags; } ;

/* Variables and functions */
 int TH_SFLAG_RW_PROMOTED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int,uintptr_t) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

void FUNC6(thread_t thread, uintptr_t trace_obj)
{
	FUNC0(thread->rwlock_count == 0);

	/* Cancel any promotions if the thread had actually blocked while holding a RW lock */
	spl_t s = FUNC2();
	FUNC4(thread);

	if (thread->sched_flags & TH_SFLAG_RW_PROMOTED)
		FUNC1(thread, TH_SFLAG_RW_PROMOTED, trace_obj);

	FUNC5(thread);
	FUNC3(s);
}