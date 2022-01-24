#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ detachState; int /*<<< orphan*/  cancelLock; int /*<<< orphan*/  state; } ;
typedef  TYPE_1__ pte_thread_t ;
struct TYPE_8__ {int /*<<< orphan*/  key; } ;

/* Variables and functions */
 scalar_t__ PTHREAD_CREATE_DETACHED ; 
 int /*<<< orphan*/  PThreadStateLast ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ pte_processInitialized ; 
 TYPE_2__* pte_selfThreadKey ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8 (unsigned char threadShouldExit)
{
   if (pte_processInitialized)
   {
      /*
       * Don't use pthread_self() - to avoid creating an implicit POSIX thread handle
       * unnecessarily.
       */
      pte_thread_t * sp = (pte_thread_t *) FUNC5 (pte_selfThreadKey);

      if (sp) // otherwise OS thread with no implicit POSIX handle.
      {
         FUNC0 (sp);

         (void) FUNC6 (&sp->cancelLock);
         sp->state = PThreadStateLast;

         /*
          * If the thread is joinable at this point then it MUST be joined
          * or detached explicitly by the application.
          */
         (void) FUNC7 (&sp->cancelLock);

         if (sp->detachState == PTHREAD_CREATE_DETACHED)
         {
            if (threadShouldExit)
               FUNC4 (sp);
            else
               FUNC3 (sp);

#if 0
            pte_osTlsSetValue (pte_selfThreadKey->key, NULL);
#endif
         }
         else
         {
            if (threadShouldExit)
               FUNC1();
         }
      }
   }

   return 1;
}