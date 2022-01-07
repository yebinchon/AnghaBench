
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pte_osResult ;
typedef int pte_osMutexHandle ;


 int PTE_OS_OK ;
 int sceKernelWaitSema (int ,int,int *) ;

pte_osResult pte_osMutexLock(pte_osMutexHandle handle)
{
   sceKernelWaitSema(handle, 1, ((void*)0));

   return PTE_OS_OK;
}
