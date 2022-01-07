
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pte_osResult ;


 int PTE_OS_INVALID_PARAM ;
 int PTE_OS_OK ;

pte_osResult pteTlsSetValue(void *pTlsThreadStruct, unsigned int index, void * value)
{
   pte_osResult result;
   void ** pTls = (void **) pTlsThreadStruct;

   if (pTls != ((void*)0))
   {
      pTls[index-1] = value;
      result = PTE_OS_OK;
   }
   else
      result = PTE_OS_INVALID_PARAM;

   return result;

}
