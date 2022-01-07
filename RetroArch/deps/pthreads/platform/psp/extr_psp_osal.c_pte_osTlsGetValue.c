
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* getTlsStructFromThread (int ) ;
 scalar_t__ pteTlsGetValue (void*,unsigned int) ;
 int sceKernelGetThreadId () ;

void * pte_osTlsGetValue(unsigned int index)
{
   void *pTls = getTlsStructFromThread(sceKernelGetThreadId());

   return (void *) pteTlsGetValue(pTls, index);

}
