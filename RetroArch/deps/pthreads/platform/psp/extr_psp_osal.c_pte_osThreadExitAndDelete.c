
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pte_osThreadHandle ;
typedef int pte_osResult ;


 int PTE_OS_OK ;
 int pte_osThreadDelete (int ) ;
 int sceKernelExitDeleteThread (int ) ;

pte_osResult pte_osThreadExitAndDelete(pte_osThreadHandle handle)
{
   pte_osThreadDelete(handle);

   sceKernelExitDeleteThread(0);

   return PTE_OS_OK;
}
