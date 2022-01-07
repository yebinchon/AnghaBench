
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pte_osThreadHandle ;
typedef int pte_osResult ;


 int PTE_OS_OK ;
 int sceKernelChangeThreadPriority (int ,int) ;

pte_osResult pte_osThreadSetPriority(pte_osThreadHandle threadHandle, int newPriority)
{
   sceKernelChangeThreadPriority(threadHandle, newPriority);
   return PTE_OS_OK;
}
