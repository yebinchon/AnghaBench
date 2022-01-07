
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pte_osResult ;


 void* getTlsStructFromThread (int ) ;
 int pteTlsSetValue (void*,unsigned int,void*) ;
 int sceKernelGetThreadId () ;

pte_osResult pte_osTlsSetValue(unsigned int key, void * value)
{
   void *pTls = getTlsStructFromThread(sceKernelGetThreadId());

   return pteTlsSetValue(pTls, key, value);
}
