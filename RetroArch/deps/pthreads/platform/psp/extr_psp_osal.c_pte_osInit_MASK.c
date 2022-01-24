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
typedef  scalar_t__ pte_osResult ;
struct TYPE_3__ {int /*<<< orphan*/  cancelSem; } ;
typedef  TYPE_1__ pspThreadData ;
typedef  int /*<<< orphan*/  cancelSemName ;

/* Variables and functions */
 int /*<<< orphan*/  PSP_MAX_TLS ; 
 scalar_t__ PTE_OS_NO_RESOURCES ; 
 scalar_t__ PTE_OS_OK ; 
 int /*<<< orphan*/  globalTls ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*) ; 
 int /*<<< orphan*/  threadDataKey ; 

pte_osResult FUNC7(void)
{
   pte_osResult result;
   pspThreadData *pThreadData;
   char cancelSemName[64];

   /* Allocate and initialize TLS support */
   result = FUNC2(PSP_MAX_TLS);

   if (result == PTE_OS_OK)
   {
      /* Allocate a key that we use to store control information (e.g. cancellation semaphore) per thread */
      result = FUNC1(&threadDataKey);

      if (result == PTE_OS_OK)
      {

         /* Initialize the structure used to emulate TLS for 
          * non-POSIX threads 
          */
         globalTls = FUNC4();

         /* Also create a "thread data" structure for a single non-POSIX thread. */

         /* Allocate some memory for our per-thread control data.  We use this for:
          * 1. Entry point and parameters for the user thread's main function.
          * 2. Semaphore used for thread cancellation.
          */
         pThreadData = (pspThreadData *) FUNC0(sizeof(pspThreadData));

         if (pThreadData == NULL)
         {
            result = PTE_OS_NO_RESOURCES;
         }
         else
         {

            /* Save a pointer to our per-thread control data as a TLS value */
            FUNC3(globalTls, threadDataKey, pThreadData);

            /* Create a semaphore used to cancel threads */
            FUNC6(cancelSemName, sizeof(cancelSemName), "pthread_cancelSemGlobal");

            pThreadData->cancelSem = FUNC5(cancelSemName,
                  0,          /* attributes (default) */
                  0,          /* initial value        */
                  255,        /* maximum value        */
                  0);         /* options (default)    */
            result = PTE_OS_OK;
         }
      }
   }

   return result;
}