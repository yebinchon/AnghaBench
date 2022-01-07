
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pte_osResult ;
typedef int pte_osMutexHandle ;


 int PTE_OS_OK ;
 int sceKernelDeleteSema (int ) ;

pte_osResult pte_osMutexDelete(pte_osMutexHandle handle)
{
  sceKernelDeleteSema(handle);

  return PTE_OS_OK;
}
