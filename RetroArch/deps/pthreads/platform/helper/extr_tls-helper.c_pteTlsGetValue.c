
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__* keysUsed ;

void * pteTlsGetValue(void *pTlsThreadStruct, unsigned int index)
{
   void **pTls = (void **) pTlsThreadStruct;

   if (keysUsed[index-1])
   {
      if (pTls != ((void*)0))
         return pTls[index-1];
   }
   return ((void*)0);
}
