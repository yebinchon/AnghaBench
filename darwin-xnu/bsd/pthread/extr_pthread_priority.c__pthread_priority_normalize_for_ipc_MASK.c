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
typedef  int pthread_priority_t ;

/* Variables and functions */
 int QOS_MIN_RELATIVE_PRIORITY ; 
 int _PTHREAD_PRIORITY_PRIORITY_MASK ; 
 int _PTHREAD_PRIORITY_QOS_CLASS_MASK ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 () ; 

pthread_priority_t
FUNC3(pthread_priority_t pp)
{
	if (FUNC0(pp)) {
		int relpri = FUNC1(pp);
		if (relpri > 0 || relpri < QOS_MIN_RELATIVE_PRIORITY) {
			pp |= _PTHREAD_PRIORITY_PRIORITY_MASK;
		}
		return pp & (_PTHREAD_PRIORITY_QOS_CLASS_MASK |
				_PTHREAD_PRIORITY_PRIORITY_MASK);
	}
	return FUNC2();
}