
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ malloc (int) ;
 int maxTlsValues ;

void * pteTlsThreadInit(void)
{
   int i;
   void **pTlsStruct = (void **) malloc(maxTlsValues * sizeof(void*));


   for (i=0; i<maxTlsValues;i++)
      pTlsStruct[i] = 0;

   return (void *) pTlsStruct;
}
