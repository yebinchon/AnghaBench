
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pte_osResult ;
typedef int pte_osMutexHandle ;


 int PTE_OS_OK ;
 int sceKernelSignalSema (int ,int) ;

pte_osResult pte_osMutexUnlock(pte_osMutexHandle handle)
{
   sceKernelSignalSema(handle, 1);

   return PTE_OS_OK;
}
