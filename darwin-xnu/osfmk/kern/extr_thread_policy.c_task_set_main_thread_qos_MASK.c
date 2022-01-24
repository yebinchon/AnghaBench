#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* thread_t ;
typedef  scalar_t__ task_t ;
struct task_pend_token {int dummy; } ;
struct TYPE_11__ {int thrp_qos; } ;
struct TYPE_12__ {scalar_t__ task; TYPE_1__ requested_policy; } ;

/* Variables and functions */
 int DBG_FUNC_END ; 
 int DBG_FUNC_START ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IMP_MAIN_THREAD_QOS ; 
 int /*<<< orphan*/  KDEBUG_TRACE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TASK_POLICY_ATTRIBUTE ; 
 int /*<<< orphan*/  TASK_POLICY_QOS ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct task_pend_token*) ; 
 int FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,struct task_pend_token*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 

void
FUNC11(task_t task, thread_t thread) {
	struct task_pend_token pend_token = {};

	FUNC2(thread->task == task);

	FUNC5(thread);

	FUNC1(KDEBUG_TRACE,
	                          (FUNC0(IMP_MAIN_THREAD_QOS, 0)) | DBG_FUNC_START,
	                          FUNC8(thread), FUNC9(thread), FUNC10(thread),
	                          thread->requested_policy.thrp_qos, 0);

	int primordial_qos = FUNC4(task);

	FUNC3(thread, TASK_POLICY_ATTRIBUTE, TASK_POLICY_QOS,
	                              primordial_qos, 0, &pend_token);

	FUNC6(thread);

	FUNC7(thread, &pend_token);

	FUNC1(KDEBUG_TRACE,
	                          (FUNC0(IMP_MAIN_THREAD_QOS, 0)) | DBG_FUNC_END,
	                          FUNC8(thread), FUNC9(thread), FUNC10(thread),
	                          primordial_qos, 0);
}