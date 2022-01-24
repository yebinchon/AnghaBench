#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  thread_t ;
typedef  int /*<<< orphan*/  task_pend_token_t ;

/* Variables and functions */
 int DBG_FUNC_END ; 
 int DBG_FUNC_START ; 
 int /*<<< orphan*/  FALSE ; 
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  KDEBUG_TRACE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int TASK_POLICY_THREAD ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(thread_t          thread,
                                  int               category,
                                  int               flavor,
                                  int               value,
                                  int               value2,
                                  task_pend_token_t pend_token)
{
	FUNC1(KDEBUG_TRACE,
	                          (FUNC0(flavor, (category | TASK_POLICY_THREAD))) | DBG_FUNC_START,
	                          FUNC4(thread), FUNC5(thread),
	                          FUNC6(thread), value, 0);

	FUNC3(thread, category, flavor, value, value2);

	FUNC2(thread, FALSE, pend_token);

	FUNC1(KDEBUG_TRACE,
	                          (FUNC0(flavor, (category | TASK_POLICY_THREAD))) | DBG_FUNC_END,
	                          FUNC4(thread), FUNC5(thread),
	                          FUNC6(thread), FUNC7(pend_token), 0);
}