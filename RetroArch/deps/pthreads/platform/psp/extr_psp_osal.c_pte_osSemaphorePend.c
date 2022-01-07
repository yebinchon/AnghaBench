
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pte_osSemaphoreHandle ;
typedef int pte_osResult ;
typedef scalar_t__ SceUInt ;


 int PTE_OS_GENERAL_FAILURE ;
 int PTE_OS_OK ;
 int PTE_OS_TIMEOUT ;
 scalar_t__ SCE_KERNEL_ERROR_OK ;
 scalar_t__ SCE_KERNEL_ERROR_WAIT_TIMEOUT ;
 scalar_t__ sceKernelWaitSema (int ,int,unsigned int*) ;

pte_osResult pte_osSemaphorePend(pte_osSemaphoreHandle handle, unsigned int *pTimeoutMsecs)
{
   unsigned int timeoutUsecs;
   unsigned int *pTimeoutUsecs;
   SceUInt result;
   pte_osResult osResult;

   if (pTimeoutMsecs == ((void*)0))
      pTimeoutUsecs = ((void*)0);
   else
   {
      timeoutUsecs = *pTimeoutMsecs * 1000;
      pTimeoutUsecs = &timeoutUsecs;
   }

   result = sceKernelWaitSema(handle, 1, pTimeoutUsecs);

   if (result == SCE_KERNEL_ERROR_OK)
      return PTE_OS_OK;

   if (result == SCE_KERNEL_ERROR_WAIT_TIMEOUT)
      return PTE_OS_TIMEOUT;

   return PTE_OS_GENERAL_FAILURE;
}
