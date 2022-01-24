#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  threadCopy ;
typedef  scalar_t__ pthread_t ;
struct TYPE_4__ {scalar_t__ threadId; int /*<<< orphan*/  threadLock; int /*<<< orphan*/  cancelLock; } ;
typedef  TYPE_1__ pte_thread_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5 (pthread_t thread, unsigned char shouldThreadExit)
{
   pte_thread_t threadCopy;
   pte_thread_t * tp = (pte_thread_t *) thread;

   if (!tp)
      return;

   /*
    * Copy thread state so that the thread can be atomically NULLed.
    */
   FUNC0 (&threadCopy, tp, sizeof (threadCopy));

   /*
    * Thread ID structs are never freed. They're NULLed and reused.
    * This also sets the thread to PThreadStateInitial (invalid).
    */
   FUNC3 (thread);

   (void) FUNC4(&threadCopy.cancelLock);
   (void) FUNC4(&threadCopy.threadLock);

   if (threadCopy.threadId != 0)
   {
      if (shouldThreadExit)
         FUNC2(threadCopy.threadId);
      else
         FUNC1(threadCopy.threadId);
   }
}