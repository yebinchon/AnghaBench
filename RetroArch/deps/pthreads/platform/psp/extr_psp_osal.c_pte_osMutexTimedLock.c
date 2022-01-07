
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pte_osResult ;
typedef int pte_osMutexHandle ;
typedef unsigned int SceUInt ;


 int PTE_OS_OK ;
 int PTE_OS_TIMEOUT ;
 int sceKernelWaitSema (int ,int,unsigned int*) ;

pte_osResult pte_osMutexTimedLock(pte_osMutexHandle handle, unsigned int timeoutMsecs)
{
   SceUInt timeoutUsecs = timeoutMsecs*1000;
   int status = sceKernelWaitSema(handle, 1, &timeoutUsecs);


   if (status < 0)
      return PTE_OS_TIMEOUT;

   return PTE_OS_OK;
}
