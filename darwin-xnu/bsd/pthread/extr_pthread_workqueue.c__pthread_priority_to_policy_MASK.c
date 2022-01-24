#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ qos_tier; scalar_t__ tier_importance; } ;
typedef  TYPE_1__ thread_qos_policy_data_t ;
typedef  int /*<<< orphan*/  pthread_priority_t ;

/* Variables and functions */
 scalar_t__ THREAD_QOS_MIN_TIER_IMPORTANCE ; 
 scalar_t__ THREAD_QOS_UNSPECIFIED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC2(pthread_priority_t priority,
		thread_qos_policy_data_t *data)
{
	data->qos_tier = FUNC1(priority);
	data->tier_importance = FUNC0(priority);
	if (data->qos_tier == THREAD_QOS_UNSPECIFIED || data->tier_importance > 0 ||
			data->tier_importance < THREAD_QOS_MIN_TIER_IMPORTANCE) {
		return false;
	}
	return true;
}