#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pte_osSemaphoreHandle ;
typedef  int /*<<< orphan*/  pte_osResult ;
struct TYPE_5__ {int /*<<< orphan*/  cancelSem; } ;
typedef  TYPE_1__ pspThreadData ;
typedef  unsigned int clock_t ;
struct TYPE_6__ {scalar_t__ currentCount; } ;
typedef  scalar_t__ SceUInt ;
typedef  int SceUID ;
typedef  TYPE_2__ SceKernelSemaInfo ;

/* Variables and functions */
 int /*<<< orphan*/  POLLING_DELAY_IN_us ; 
 int /*<<< orphan*/  PTE_OS_GENERAL_FAILURE ; 
 int /*<<< orphan*/  PTE_OS_INTERRUPTED ; 
 int /*<<< orphan*/  PTE_OS_OK ; 
 int /*<<< orphan*/  PTE_OS_TIMEOUT ; 
 int SCE_KERNEL_ERROR_OK ; 
 unsigned int FUNC0 () ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int,scalar_t__*) ; 

pte_osResult FUNC6(pte_osSemaphoreHandle semHandle, unsigned int *pTimeout)
{
   pspThreadData *pThreadData;

   pThreadData = FUNC1(FUNC3());

   clock_t start_time;
   pte_osResult result =  PTE_OS_OK;
   unsigned int timeout;
   unsigned char timeoutEnabled;

   start_time = FUNC0();

   // clock() is in microseconds, timeout as passed in was in milliseconds
   if (pTimeout == NULL)
   {
      timeout = 0;
      timeoutEnabled = 0;
   }
   else
   {
      timeout = *pTimeout * 1000;
      timeoutEnabled = 1;
   }

   while (1)
   {
      SceUInt semTimeout;
      int status;

      /* Poll semaphore */
      semTimeout = 0;
      status = FUNC5(semHandle, 1, &semTimeout);

      if (status == SCE_KERNEL_ERROR_OK)
      {
         /* User semaphore posted to */
         result = PTE_OS_OK;
         break;
      }
      else if ((timeoutEnabled) && ((FUNC0() - start_time) > timeout))
      {
         /* Timeout expired */
         result = PTE_OS_TIMEOUT;
         break;
      }
      else
      {
         SceKernelSemaInfo semInfo;

         if (pThreadData != NULL)
         {
            SceUID osResult;

            osResult = FUNC4(pThreadData->cancelSem, &semInfo);

            if (osResult == SCE_KERNEL_ERROR_OK)
            {
               if (semInfo.currentCount > 0)
               {
                  result = PTE_OS_INTERRUPTED;
                  break;
               }
               /* Nothing found and not timed out yet; let's yield so we're not
                * in busy loop.
                */
               else
                  FUNC2(POLLING_DELAY_IN_us);
            }
            else
            {
               result = PTE_OS_GENERAL_FAILURE;
               break;
            }
         }
      }
   }

   return result;
}