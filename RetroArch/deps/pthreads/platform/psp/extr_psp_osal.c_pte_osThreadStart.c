
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pte_osThreadHandle ;
typedef int pte_osResult ;


 int PTE_OS_OK ;
 int sceKernelStartThread (int ,int ,int *) ;

pte_osResult pte_osThreadStart(pte_osThreadHandle osThreadHandle)
{
   sceKernelStartThread(osThreadHandle, 0, ((void*)0));

   return PTE_OS_OK;
}
