
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pte_osResult ;


 int PTE_OS_NO_RESOURCES ;
 int PTE_OS_OK ;
 int globalTlsLock ;
 int* keysUsed ;
 scalar_t__ malloc (int) ;
 int maxTlsValues ;
 int pte_osMutexCreate (int *) ;

pte_osResult pteTlsGlobalInit(int maxEntries)
{
   int i;
   pte_osResult result;

   pte_osMutexCreate(&globalTlsLock);

   keysUsed = (int *) malloc(maxEntries * sizeof(int));

   if (keysUsed != ((void*)0))
   {
      for (i=0;i<maxEntries;i++)
         keysUsed[i] = 0;

      maxTlsValues = maxEntries;

      result = PTE_OS_OK;
   }
   else
      result = PTE_OS_NO_RESOURCES;

   return result;
}
