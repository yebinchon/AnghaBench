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
typedef  TYPE_1__* thread_call_group_t ;
struct TYPE_4__ {int /*<<< orphan*/  idle_waitq; int /*<<< orphan*/  dealloc_timer; int /*<<< orphan*/ * delayed_timers; int /*<<< orphan*/ * delayed_queues; int /*<<< orphan*/  pending_queue; } ;

/* Variables and functions */
 int SYNC_POLICY_DISABLE_IRQ ; 
 int SYNC_POLICY_REVERSED ; 
 size_t TCF_ABSOLUTE ; 
 size_t TCF_CONTINUOUS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  thread_call_dealloc_timer ; 
 int /*<<< orphan*/  thread_call_delayed_timer ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC3(thread_call_group_t group)
{
	FUNC0(&group->pending_queue);
	FUNC0(&group->delayed_queues[TCF_ABSOLUTE]);
	FUNC0(&group->delayed_queues[TCF_CONTINUOUS]);

	/* TODO: Consolidate to one hard timer for each group */
	FUNC1(&group->delayed_timers[TCF_ABSOLUTE],   thread_call_delayed_timer, group);
	FUNC1(&group->delayed_timers[TCF_CONTINUOUS], thread_call_delayed_timer, group);
	FUNC1(&group->dealloc_timer, thread_call_dealloc_timer, group);

	/* Reverse the wait order so we re-use the most recently parked thread from the pool */
	FUNC2(&group->idle_waitq, SYNC_POLICY_REVERSED|SYNC_POLICY_DISABLE_IRQ);
}