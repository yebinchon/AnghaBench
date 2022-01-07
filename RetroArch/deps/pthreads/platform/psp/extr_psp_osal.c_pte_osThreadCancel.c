
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int pte_osThreadHandle ;
typedef int pte_osResult ;
struct TYPE_3__ {int cancelSem; } ;
typedef TYPE_1__ pspThreadData ;
typedef scalar_t__ SceUID ;


 int PTE_OS_GENERAL_FAILURE ;
 int PTE_OS_OK ;
 scalar_t__ SCE_KERNEL_ERROR_OK ;
 TYPE_1__* getThreadData (int ) ;
 scalar_t__ sceKernelSignalSema (int ,int) ;

pte_osResult pte_osThreadCancel(pte_osThreadHandle threadHandle)
{
   pspThreadData *pThreadData = getThreadData(threadHandle);
   SceUID osResult = sceKernelSignalSema(pThreadData->cancelSem, 1);

   if (osResult == SCE_KERNEL_ERROR_OK)
      return PTE_OS_OK;

   return PTE_OS_GENERAL_FAILURE;
}
