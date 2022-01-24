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
typedef  int /*<<< orphan*/  task_pend_token_t ;
typedef  int /*<<< orphan*/  boolean_t ;
struct TYPE_7__ {int /*<<< orphan*/  base_pri; } ;

/* Variables and functions */
 int DBG_FUNC_END ; 
 int DBG_FUNC_START ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IMP_UPDATE ; 
 int /*<<< orphan*/  KDEBUG_TRACE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TASK_POLICY_THREAD ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC6(thread_t thread, boolean_t recompute_priority, task_pend_token_t pend_token)
{
	FUNC1(KDEBUG_TRACE,
	                          (FUNC0(IMP_UPDATE, TASK_POLICY_THREAD) | DBG_FUNC_START),
	                          FUNC5(thread), FUNC2(thread),
	                          FUNC3(thread), thread->base_pri, 0);

	FUNC4(thread, recompute_priority, pend_token);

	FUNC1(KDEBUG_TRACE,
	                          (FUNC0(IMP_UPDATE, TASK_POLICY_THREAD)) | DBG_FUNC_END,
	                          FUNC5(thread), FUNC2(thread),
	                          FUNC3(thread), thread->base_pri, 0);
}