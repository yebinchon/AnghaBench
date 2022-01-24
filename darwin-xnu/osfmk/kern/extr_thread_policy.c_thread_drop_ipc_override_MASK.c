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
struct task_pend_token {int dummy; } ;
typedef  int /*<<< orphan*/  spl_t ;
struct TYPE_7__ {scalar_t__ ipc_overrides; } ;

/* Variables and functions */
 int /*<<< orphan*/  TASK_POLICY_ATTRIBUTE ; 
 int /*<<< orphan*/  TASK_POLICY_QOS_IPC_OVERRIDE ; 
 int /*<<< orphan*/  THREAD_QOS_UNSPECIFIED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct task_pend_token*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,struct task_pend_token*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 

void
FUNC7(thread_t thread)
{
	struct task_pend_token pend_token = {};

	spl_t s = FUNC2();
	FUNC4(thread);

	FUNC0(thread->ipc_overrides > 0);

	if (--thread->ipc_overrides == 0) {
		/*
		 * There are no more overrides for this thread, so we should
		 * clear out the saturated override value
		 */

		FUNC1(thread, TASK_POLICY_ATTRIBUTE,
		                                  TASK_POLICY_QOS_IPC_OVERRIDE, THREAD_QOS_UNSPECIFIED,
		                                  0, &pend_token);
	}

	FUNC6(thread);
	FUNC3(s);

	FUNC5(thread, &pend_token);
}