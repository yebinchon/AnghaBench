
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int pte_osSemaphoreHandle ;
typedef int pte_osResult ;
struct TYPE_5__ {int cancelSem; } ;
typedef TYPE_1__ pspThreadData ;
typedef unsigned int clock_t ;
struct TYPE_6__ {scalar_t__ currentCount; } ;
typedef scalar_t__ SceUInt ;
typedef int SceUID ;
typedef TYPE_2__ SceKernelSemaInfo ;


 int POLLING_DELAY_IN_us ;
 int PTE_OS_GENERAL_FAILURE ;
 int PTE_OS_INTERRUPTED ;
 int PTE_OS_OK ;
 int PTE_OS_TIMEOUT ;
 int SCE_KERNEL_ERROR_OK ;
 unsigned int clock () ;
 TYPE_1__* getThreadData (int ) ;
 int sceKernelDelayThread (int ) ;
 int sceKernelGetThreadId () ;
 int sceKernelReferSemaStatus (int ,TYPE_2__*) ;
 int sceKernelWaitSema (int ,int,scalar_t__*) ;

pte_osResult pte_osSemaphoreCancellablePend(pte_osSemaphoreHandle semHandle, unsigned int *pTimeout)
{
   pspThreadData *pThreadData;

   pThreadData = getThreadData(sceKernelGetThreadId());

   clock_t start_time;
   pte_osResult result = PTE_OS_OK;
   unsigned int timeout;
   unsigned char timeoutEnabled;

   start_time = clock();


   if (pTimeout == ((void*)0))
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


      semTimeout = 0;
      status = sceKernelWaitSema(semHandle, 1, &semTimeout);

      if (status == SCE_KERNEL_ERROR_OK)
      {

         result = PTE_OS_OK;
         break;
      }
      else if ((timeoutEnabled) && ((clock() - start_time) > timeout))
      {

         result = PTE_OS_TIMEOUT;
         break;
      }
      else
      {
         SceKernelSemaInfo semInfo;

         if (pThreadData != ((void*)0))
         {
            SceUID osResult;

            osResult = sceKernelReferSemaStatus(pThreadData->cancelSem, &semInfo);

            if (osResult == SCE_KERNEL_ERROR_OK)
            {
               if (semInfo.currentCount > 0)
               {
                  result = PTE_OS_INTERRUPTED;
                  break;
               }



               else
                  sceKernelDelayThread(POLLING_DELAY_IN_us);
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
