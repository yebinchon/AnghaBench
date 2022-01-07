
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int pte_osThreadHandle ;
typedef int pte_osResult ;
struct TYPE_5__ {int cancelSem; } ;
typedef TYPE_1__ pspThreadData ;
struct TYPE_6__ {scalar_t__ currentCount; } ;
typedef scalar_t__ SceUID ;
typedef TYPE_2__ SceKernelSemaInfo ;


 int PTE_OS_GENERAL_FAILURE ;
 int PTE_OS_INTERRUPTED ;
 int PTE_OS_OK ;
 scalar_t__ SCE_KERNEL_ERROR_OK ;
 TYPE_1__* getThreadData (int ) ;
 scalar_t__ sceKernelReferSemaStatus (int ,TYPE_2__*) ;

pte_osResult pte_osThreadCheckCancel(pte_osThreadHandle threadHandle)
{
   SceKernelSemaInfo semInfo;
   SceUID osResult;
   pte_osResult result;
   pspThreadData *pThreadData = getThreadData(threadHandle);

   if (pThreadData != ((void*)0))
   {
      osResult = sceKernelReferSemaStatus(pThreadData->cancelSem, &semInfo);

      if (osResult == SCE_KERNEL_ERROR_OK)
      {
         if (semInfo.currentCount > 0)
            result = PTE_OS_INTERRUPTED;
         else
            result = PTE_OS_OK;
      }

      else
         result = PTE_OS_GENERAL_FAILURE;
   }

   else
      result = PTE_OS_GENERAL_FAILURE;

   return result;
}
