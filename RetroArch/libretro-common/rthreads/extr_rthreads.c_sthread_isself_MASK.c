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
struct TYPE_3__ {scalar_t__ id; } ;
typedef  TYPE_1__ sthread_t ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 () ; 

bool FUNC3(sthread_t *thread)
{
  /* This thread can't possibly be a null thread */
  if (!thread)
     return false;

#ifdef USE_WIN32_THREADS
   return GetCurrentThreadId() == thread->id;
#else
   return FUNC1(FUNC2(),thread->id);
#endif
}