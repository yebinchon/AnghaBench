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
typedef  int /*<<< orphan*/  thread_call_param_t ;
typedef  TYPE_1__* thread_call_group_t ;
typedef  int /*<<< orphan*/ * thread_call_func_t ;
typedef  int /*<<< orphan*/  spl_t ;
typedef  int boolean_t ;
struct TYPE_4__ {int /*<<< orphan*/ * delayed_queues; int /*<<< orphan*/  pending_queue; } ;

/* Variables and functions */
 size_t TCF_ABSOLUTE ; 
 size_t TCF_CONTINUOUS ; 
 size_t THREAD_CALL_INDEX_HIGH ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_1__* thread_call_groups ; 

boolean_t
FUNC4(
		thread_call_func_t		func,
		thread_call_param_t		param,
		boolean_t			cancel_all)
{
	boolean_t	result;

	FUNC1(func != NULL);

	spl_t s = FUNC2();

	/* Function-only thread calls are only kept in the default HIGH group */
	thread_call_group_t group = &thread_call_groups[THREAD_CALL_INDEX_HIGH];

	if (cancel_all) {
		/* exhaustively search every queue, and return true if any search found something */
		result = FUNC0(func, param, group, cancel_all, &group->pending_queue) |
		         FUNC0(func, param, group, cancel_all, &group->delayed_queues[TCF_ABSOLUTE])  |
		         FUNC0(func, param, group, cancel_all, &group->delayed_queues[TCF_CONTINUOUS]);
	} else {
		/* early-exit as soon as we find something, don't search other queues */
		result = FUNC0(func, param, group, cancel_all, &group->pending_queue) ||
		         FUNC0(func, param, group, cancel_all, &group->delayed_queues[TCF_ABSOLUTE]) ||
		         FUNC0(func, param, group, cancel_all, &group->delayed_queues[TCF_CONTINUOUS]);
	}

	FUNC3(s);

	return (result);
}