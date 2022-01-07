
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int pte_osThreadHandle ;
typedef int pte_osResult ;
struct TYPE_4__ {int cancelSem; } ;
typedef TYPE_1__ pspThreadData ;


 int PTE_OS_OK ;
 int free (TYPE_1__*) ;
 TYPE_1__* getThreadData (int ) ;
 void* getTlsStructFromThread (int ) ;
 int pteTlsThreadDestroy (void*) ;
 int sceKernelDeleteSema (int ) ;
 int sceKernelDeleteThread (int ) ;

pte_osResult pte_osThreadDelete(pte_osThreadHandle handle)
{
   void *pTls = getTlsStructFromThread(handle);
   pspThreadData *pThreadData = getThreadData(handle);

   sceKernelDeleteSema(pThreadData->cancelSem);

   free(pThreadData);

   pteTlsThreadDestroy(pTls);

   sceKernelDeleteThread(handle);

   return PTE_OS_OK;
}
