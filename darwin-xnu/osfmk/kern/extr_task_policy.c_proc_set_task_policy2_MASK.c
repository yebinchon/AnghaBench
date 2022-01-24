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
typedef  int /*<<< orphan*/  task_t ;
struct task_pend_token {int dummy; } ;

/* Variables and functions */
 int DBG_FUNC_END ; 
 int DBG_FUNC_START ; 
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  KDEBUG_TRACE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int TASK_POLICY_TASK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct task_pend_token*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct task_pend_token*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (struct task_pend_token*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

void
FUNC11(task_t    task,
                      int       category,
                      int       flavor,
                      int       value,
                      int       value2)
{
	struct task_pend_token pend_token = {};

	FUNC3(task);

	FUNC1(KDEBUG_TRACE,
	                          (FUNC0(flavor, (category | TASK_POLICY_TASK))) | DBG_FUNC_START,
	                          FUNC4(task), FUNC9(task),
	                          FUNC10(task), value, 0);

	FUNC2(task, category, flavor, value, value2);

	FUNC6(task, &pend_token);

	FUNC1(KDEBUG_TRACE,
	                          (FUNC0(flavor, (category | TASK_POLICY_TASK))) | DBG_FUNC_END,
	                          FUNC4(task), FUNC9(task),
	                          FUNC10(task), FUNC8(&pend_token), 0);

	FUNC7(task);

	FUNC5(task, &pend_token);
}