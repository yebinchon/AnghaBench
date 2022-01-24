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
typedef  scalar_t__ thrd_t ;

/* Variables and functions */
 int FUNC0 (scalar_t__,scalar_t__) ; 

int FUNC1(thrd_t thr0, thrd_t thr1)
{
#if defined(_TTHREAD_WIN32_)
  return thr0 == thr1;
#else
  return FUNC0(thr0, thr1);
#endif
}