
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ pte_osResult ;
struct TYPE_3__ {int cancelSem; } ;
typedef TYPE_1__ pspThreadData ;
typedef int cancelSemName ;


 int PSP_MAX_TLS ;
 scalar_t__ PTE_OS_NO_RESOURCES ;
 scalar_t__ PTE_OS_OK ;
 int globalTls ;
 scalar_t__ malloc (int) ;
 scalar_t__ pteTlsAlloc (int *) ;
 scalar_t__ pteTlsGlobalInit (int ) ;
 int pteTlsSetValue (int ,int ,TYPE_1__*) ;
 int pteTlsThreadInit () ;
 int sceKernelCreateSema (char*,int ,int ,int,int ) ;
 int snprintf (char*,int,char*) ;
 int threadDataKey ;

pte_osResult pte_osInit(void)
{
   pte_osResult result;
   pspThreadData *pThreadData;
   char cancelSemName[64];


   result = pteTlsGlobalInit(PSP_MAX_TLS);

   if (result == PTE_OS_OK)
   {

      result = pteTlsAlloc(&threadDataKey);

      if (result == PTE_OS_OK)
      {




         globalTls = pteTlsThreadInit();







         pThreadData = (pspThreadData *) malloc(sizeof(pspThreadData));

         if (pThreadData == ((void*)0))
         {
            result = PTE_OS_NO_RESOURCES;
         }
         else
         {


            pteTlsSetValue(globalTls, threadDataKey, pThreadData);


            snprintf(cancelSemName, sizeof(cancelSemName), "pthread_cancelSemGlobal");

            pThreadData->cancelSem = sceKernelCreateSema(cancelSemName,
                  0,
                  0,
                  255,
                  0);
            result = PTE_OS_OK;
         }
      }
   }

   return result;
}
