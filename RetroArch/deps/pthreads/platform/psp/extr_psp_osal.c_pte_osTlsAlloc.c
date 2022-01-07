
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pte_osResult ;


 void* getTlsStructFromThread (int ) ;
 int pteTlsAlloc (unsigned int*) ;
 int sceKernelGetThreadId () ;

pte_osResult pte_osTlsAlloc(unsigned int *pKey)
{
   void *pTls = getTlsStructFromThread(sceKernelGetThreadId());

   return pteTlsAlloc(pKey);

}
