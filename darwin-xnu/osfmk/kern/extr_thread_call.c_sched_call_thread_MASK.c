#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* thread_t ;
typedef  TYPE_3__* thread_call_group_t ;
struct TYPE_9__ {int active_count; int blocked_count; int /*<<< orphan*/  pending_count; } ;
struct TYPE_7__ {TYPE_3__* thc_group; } ;
struct TYPE_8__ {TYPE_1__ thc_state; } ;

/* Variables and functions */
#define  SCHED_CALL_BLOCK 129 
#define  SCHED_CALL_UNBLOCK 128 
 int THREAD_CALL_INDEX_MAX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_3__* thread_call_groups ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 

__attribute__((used)) static void
FUNC4(
		int				type,
		thread_t		thread)
{
	thread_call_group_t		group;

	group = thread->thc_state.thc_group;
	FUNC0((group - &thread_call_groups[0]) < THREAD_CALL_INDEX_MAX);

	FUNC1();

	switch (type) {

		case SCHED_CALL_BLOCK:
			FUNC0(group->active_count);
			--group->active_count;
			group->blocked_count++;
			if (group->pending_count > 0)
				FUNC3(group);
			break;

		case SCHED_CALL_UNBLOCK:
			FUNC0(group->blocked_count);
			--group->blocked_count;
			group->active_count++;
			break;
	}

	FUNC2();
}