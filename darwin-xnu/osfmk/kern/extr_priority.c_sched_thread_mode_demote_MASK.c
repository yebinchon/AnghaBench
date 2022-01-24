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
typedef  int uint32_t ;
typedef  TYPE_1__* thread_t ;
typedef  scalar_t__ boolean_t ;
struct TYPE_7__ {int sched_flags; scalar_t__ saved_mode; scalar_t__ sched_mode; scalar_t__ policy_reset; } ;

/* Variables and functions */
 int /*<<< orphan*/  SCHED_TAILQ ; 
 scalar_t__ TH_MODE_NONE ; 
 int /*<<< orphan*/  TH_MODE_TIMESHARE ; 
 int TH_SFLAG_DEMOTED_MASK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 

void
FUNC5(thread_t thread, uint32_t reason)
{
	FUNC0(reason & TH_SFLAG_DEMOTED_MASK);
	FUNC0((thread->sched_flags & reason) != reason);

	if (thread->policy_reset)
		return;

	if (thread->sched_flags & TH_SFLAG_DEMOTED_MASK) {
		/* Another demotion reason is already active */
		thread->sched_flags |= reason;
		return;
	}

	FUNC0(thread->saved_mode == TH_MODE_NONE);

	boolean_t removed = FUNC4(thread);

	thread->sched_flags |= reason;

	thread->saved_mode = thread->sched_mode;

	FUNC1(thread, TH_MODE_TIMESHARE);

	FUNC2(thread);

	if (removed)
		FUNC3(thread, SCHED_TAILQ);
}