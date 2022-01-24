#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  thread_policy_t ;
struct TYPE_2__ {int affinity_tag; } ;
typedef  TYPE_1__ thread_affinity_policy_data_t ;
typedef  scalar_t__ kern_return_t ;

/* Variables and functions */
 scalar_t__ KERN_SUCCESS ; 
 int /*<<< orphan*/  THREAD_AFFINITY_POLICY ; 
 int /*<<< orphan*/  THREAD_AFFINITY_POLICY_COUNT ; 
 scalar_t__ affinity ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC3(int tag)
{
	kern_return_t			ret;
	thread_affinity_policy_data_t	policy;
	if (affinity) {
		policy.affinity_tag = tag;
		ret = FUNC2(
				FUNC0(), THREAD_AFFINITY_POLICY,
				(thread_policy_t) &policy,
				THREAD_AFFINITY_POLICY_COUNT);
		if (ret != KERN_SUCCESS)
			FUNC1("thread_policy_set(THREAD_AFFINITY_POLICY) returned %d\n", ret);
	}
}