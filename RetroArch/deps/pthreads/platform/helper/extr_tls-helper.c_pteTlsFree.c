
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pte_osResult ;


 int PTE_OS_GENERAL_FAILURE ;
 int PTE_OS_OK ;
 int globalTlsLock ;
 scalar_t__* keysUsed ;
 int pte_osMutexLock (int ) ;
 int pte_osMutexUnlock (int ) ;

pte_osResult pteTlsFree(unsigned int index)
{
   pte_osResult result;

   if (keysUsed != ((void*)0))
   {
      pte_osMutexLock(globalTlsLock);

      keysUsed[index-1] = 0;

      pte_osMutexUnlock(globalTlsLock);

      result = PTE_OS_OK;
   }
   else
      result = PTE_OS_GENERAL_FAILURE;

   return result;
}
