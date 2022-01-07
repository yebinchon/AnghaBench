
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pte_osSemaphoreHandle ;
typedef int pte_osResult ;


 int PTE_OS_OK ;
 int sceKernelSignalSema (int ,int) ;

pte_osResult pte_osSemaphorePost(pte_osSemaphoreHandle handle, int count)
{
   sceKernelSignalSema(handle, count);

   return PTE_OS_OK;
}
