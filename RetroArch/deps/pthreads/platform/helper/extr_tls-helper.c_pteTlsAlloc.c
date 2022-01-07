
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pte_osResult ;


 int PTE_OS_NO_RESOURCES ;
 int PTE_OS_OK ;
 int globalTlsLock ;
 int* keysUsed ;
 int maxTlsValues ;
 int pte_osMutexLock (int ) ;
 int pte_osMutexUnlock (int ) ;

pte_osResult pteTlsAlloc(unsigned int *pKey)
{
   int i;
   pte_osResult result = PTE_OS_NO_RESOURCES;

   pte_osMutexLock(globalTlsLock);

   for (i=0;i<maxTlsValues;i++)
   {
      if (keysUsed[i] == 0)
      {
         keysUsed[i] = 1;

         *pKey = i+1;
         result = PTE_OS_OK;
         break;
      }
   }

   pte_osMutexUnlock(globalTlsLock);

   return result;
}
