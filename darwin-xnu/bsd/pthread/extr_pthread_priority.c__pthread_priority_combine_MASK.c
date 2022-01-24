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
typedef  int pthread_priority_t ;

/* Variables and functions */
 int _PTHREAD_PRIORITY_EVENT_MANAGER_FLAG ; 
 int _PTHREAD_PRIORITY_FALLBACK_FLAG ; 
 int _PTHREAD_PRIORITY_OVERCOMMIT_FLAG ; 
 int FUNC0 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int) ; 

pthread_priority_t
FUNC2(pthread_priority_t base_pp, thread_qos_t qos)
{
	if (base_pp & _PTHREAD_PRIORITY_EVENT_MANAGER_FLAG) {
		return _PTHREAD_PRIORITY_EVENT_MANAGER_FLAG;
	}

	if (base_pp & _PTHREAD_PRIORITY_FALLBACK_FLAG) {
		if (!qos) {
			return base_pp;
		}
	} else if (qos < FUNC1(base_pp)) {
		return base_pp;
	}

	return FUNC0(qos, 0,
			base_pp & _PTHREAD_PRIORITY_OVERCOMMIT_FLAG);
}