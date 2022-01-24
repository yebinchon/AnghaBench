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
struct TYPE_2__ {int /*<<< orphan*/ * cond; scalar_t__ running; int /*<<< orphan*/ * thd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  INFINITE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* thread_handle ; 

void FUNC2(unsigned int id) 
{
   if (!thread_handle[id].thd)
      return;  // Thread wasn't running in the first place

   FUNC1(thread_handle[id].thd,INFINITE);
   FUNC0(thread_handle[id].thd);
   thread_handle[id].thd = NULL;
   thread_handle[id].running = 0;
   if (thread_handle[id].cond)
   	   FUNC0(thread_handle[id].cond);
}