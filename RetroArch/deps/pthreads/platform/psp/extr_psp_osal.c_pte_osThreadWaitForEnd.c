
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int pte_osThreadHandle ;
typedef int pte_osResult ;
struct TYPE_8__ {int cancelSem; } ;
typedef TYPE_1__ pspThreadData ;
typedef int info ;
struct TYPE_10__ {scalar_t__ currentCount; } ;
struct TYPE_9__ {int size; scalar_t__ status; } ;
typedef scalar_t__ SceUID ;
typedef TYPE_2__ SceKernelThreadRunStatus ;
typedef TYPE_3__ SceKernelSemaInfo ;


 int POLLING_DELAY_IN_us ;
 scalar_t__ PSP_THREAD_STOPPED ;
 int PTE_OS_GENERAL_FAILURE ;
 int PTE_OS_INTERRUPTED ;
 int PTE_OS_OK ;
 scalar_t__ SCE_KERNEL_ERROR_OK ;
 TYPE_1__* getThreadData (int ) ;
 int memset (TYPE_2__*,int ,int) ;
 int sceKernelDelayThread (int ) ;
 int sceKernelGetThreadId () ;
 scalar_t__ sceKernelReferSemaStatus (int ,TYPE_3__*) ;
 int sceKernelReferThreadRunStatus (int ,TYPE_2__*) ;

pte_osResult pte_osThreadWaitForEnd(pte_osThreadHandle threadHandle)
{
   pte_osResult result;
   pspThreadData *pThreadData = getThreadData(sceKernelGetThreadId());

   while (1)
   {
      SceKernelThreadRunStatus info;


      memset(&info,0,sizeof(info));
      info.size = sizeof(info);
      sceKernelReferThreadRunStatus(threadHandle, &info);

      if (info.status == PSP_THREAD_STOPPED)
      {

         result = PTE_OS_OK;
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
