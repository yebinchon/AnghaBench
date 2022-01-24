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
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  thread_t ;
struct task_pend_token {scalar_t__ tpt_update_sockets; } ;
typedef  int /*<<< orphan*/  spl_t ;

/* Variables and functions */
 int /*<<< orphan*/  TASK_POLICY_ATTRIBUTE ; 
 int /*<<< orphan*/  TASK_POLICY_QOS_AND_RELPRIO ; 
 int /*<<< orphan*/  TASK_POLICY_QOS_WORKQ_OVERRIDE ; 
 scalar_t__ THREAD_QOS_LAST ; 
 scalar_t__ THREAD_QOS_UNSPECIFIED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,struct task_pend_token*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct task_pend_token*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

void
FUNC7(thread_t thread, uint32_t qos)
{
	struct task_pend_token pend_token = {};

	FUNC0(qos < THREAD_QOS_LAST);

	spl_t s = FUNC2();
	FUNC4(thread);

	FUNC1(thread, TASK_POLICY_ATTRIBUTE,
			TASK_POLICY_QOS_AND_RELPRIO, qos, 0, &pend_token);
	FUNC1(thread, TASK_POLICY_ATTRIBUTE,
			TASK_POLICY_QOS_WORKQ_OVERRIDE, THREAD_QOS_UNSPECIFIED, 0,
			&pend_token);

	FUNC0(pend_token.tpt_update_sockets == 0);

	FUNC6(thread);
	FUNC3(s);

	FUNC5(thread, &pend_token);
}