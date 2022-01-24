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
struct TYPE_7__ {int /*<<< orphan*/  base_pri; } ;

/* Variables and functions */
 int DBG_FUNC_END ; 
 int DBG_FUNC_START ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  IMP_UPDATE ; 
 int IMP_UPDATE_TASK_CREATE ; 
 int /*<<< orphan*/  KDEBUG_TRACE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int TASK_POLICY_THREAD ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,struct task_pend_token*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

void
FUNC6(thread_t thread)
{
	FUNC1(KDEBUG_TRACE,
	                          (FUNC0(IMP_UPDATE, (IMP_UPDATE_TASK_CREATE | TASK_POLICY_THREAD))) | DBG_FUNC_START,
	                          FUNC5(thread), FUNC2(thread),
	                          FUNC3(thread), thread->base_pri, 0);

	/* We pass a pend token but ignore it */
	struct task_pend_token pend_token = {};

	FUNC4(thread, TRUE, &pend_token);

	FUNC1(KDEBUG_TRACE,
	                          (FUNC0(IMP_UPDATE, (IMP_UPDATE_TASK_CREATE | TASK_POLICY_THREAD))) | DBG_FUNC_END,
	                          FUNC5(thread), FUNC2(thread),
	                          FUNC3(thread), thread->base_pri, 0);
}