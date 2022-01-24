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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  task_t ;

/* Variables and functions */
 int /*<<< orphan*/  TASK_POLICY_RESOURCE_ATTRIBUTE_NONE ; 
 int /*<<< orphan*/  TASK_POLICY_RESOURCE_ATTRIBUTE_NOTIFY_EXC ; 
 int /*<<< orphan*/  TASK_POLICY_RESOURCE_ATTRIBUTE_THROTTLE ; 
 int TASK_RUSECPU_FLAGS_DEADLINE ; 
 int TASK_RUSECPU_FLAGS_PERTHR_LIMIT ; 
 int TASK_RUSECPU_FLAGS_PROC_LIMIT ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

int 
FUNC3(task_t task, uint32_t *policyp, uint8_t *percentagep, uint64_t *intervalp, uint64_t *deadlinep)
{
	
	int error = 0;
	int scope;

	FUNC1(task);

	
	error = FUNC0(task, percentagep, intervalp, deadlinep, &scope);
	FUNC2(task);

	/*
	 * Reverse-map from CPU resource limit scopes back to policies (see comment below).
	 */
	if (scope == TASK_RUSECPU_FLAGS_PERTHR_LIMIT) {
		*policyp = TASK_POLICY_RESOURCE_ATTRIBUTE_NOTIFY_EXC;
	} else if (scope == TASK_RUSECPU_FLAGS_PROC_LIMIT) {
		*policyp = TASK_POLICY_RESOURCE_ATTRIBUTE_THROTTLE;
	} else if (scope == TASK_RUSECPU_FLAGS_DEADLINE) {
		*policyp = TASK_POLICY_RESOURCE_ATTRIBUTE_NONE;
	}

	return(error);
}