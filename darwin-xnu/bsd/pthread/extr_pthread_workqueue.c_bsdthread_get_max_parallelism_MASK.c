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
typedef  scalar_t__ thread_qos_t ;

/* Variables and functions */
 int EINVAL ; 
 unsigned long QOS_PARALLELISM_COUNT_LOGICAL ; 
 unsigned long QOS_PARALLELISM_REALTIME ; 
 scalar_t__ THREAD_QOS_LAST ; 
 scalar_t__ THREAD_QOS_UNSPECIFIED ; 
 unsigned long _PTHREAD_QOS_PARALLELISM_COUNT_LOGICAL ; 
 unsigned long _PTHREAD_QOS_PARALLELISM_REALTIME ; 
 int FUNC0 (scalar_t__,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 

__attribute__((used)) static int
FUNC2(thread_qos_t qos, unsigned long flags,
		int *retval)
{
	FUNC1(QOS_PARALLELISM_COUNT_LOGICAL ==
			_PTHREAD_QOS_PARALLELISM_COUNT_LOGICAL, "logical");
	FUNC1(QOS_PARALLELISM_REALTIME ==
			_PTHREAD_QOS_PARALLELISM_REALTIME, "realtime");

	if (flags & ~(QOS_PARALLELISM_REALTIME | QOS_PARALLELISM_COUNT_LOGICAL)) {
		return EINVAL;
	}

	if (flags & QOS_PARALLELISM_REALTIME) {
		if (qos) {
			return EINVAL;
		}
	} else if (qos == THREAD_QOS_UNSPECIFIED || qos >= THREAD_QOS_LAST) {
		return EINVAL;
	}

	*retval = FUNC0(qos, flags);
	return 0;
}