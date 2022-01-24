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
struct TYPE_3__ {int running; void (* func ) (void*) ;int /*<<< orphan*/ * thd; void* arg; int /*<<< orphan*/ * cond; int /*<<< orphan*/  mutex; } ;
typedef  int /*<<< orphan*/  LPTHREAD_START_ROUTINE ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 int /*<<< orphan*/  hnd_key ; 
 int hnd_key_once ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  stderr ; 
 TYPE_1__* thread_handle ; 
 scalar_t__ wrapper ; 

int FUNC6(unsigned int id, void (*func)(void *), void *arg) 
{ 
   if (!hnd_key_once)
   {
      hnd_key=FUNC3();
      hnd_key_once = 1;
   }

   if (thread_handle[id].running)
   {
      FUNC4(stderr, "YabThreadStart: thread %u is already started!\n", id);
      return -1;
   }
   
   // Create CS and condition variable for thread
   FUNC2(&thread_handle[id].mutex);
   if ((thread_handle[id].cond = FUNC0(NULL, FALSE, FALSE, NULL)) == NULL)
   {
      FUNC5("CreateEvent");
   	  return -1;
   }

   thread_handle[id].func = func;
   thread_handle[id].arg = arg;

   if ((thread_handle[id].thd = FUNC1(NULL, 0, (LPTHREAD_START_ROUTINE)wrapper, &thread_handle[id], 0, NULL)) == NULL)
   {
      FUNC5("CreateThread");
      return -1;
   }
   
   thread_handle[id].running = 1;

   return 0; 
}