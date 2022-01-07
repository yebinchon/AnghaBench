
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int threadName ;
typedef scalar_t__ pte_osThreadHandle ;
typedef int pte_osThreadEntryPoint ;
typedef int pte_osResult ;
struct TYPE_4__ {int cancelSem; void* argv; int entryPoint; } ;
typedef TYPE_1__ pspThreadData ;
typedef int cancelSemName ;
typedef scalar_t__ SceUID ;


 int DEFAULT_STACK_SIZE_BYTES ;
 int MAX_PSP_UID ;
 int PSP_DEBUG (char*) ;
 int PTE_OS_GENERAL_FAILURE ;
 int PTE_OS_NO_RESOURCES ;
 int PTE_OS_OK ;
 scalar_t__ SCE_KERNEL_ERROR_NO_MEMORY ;
 int free (TYPE_1__*) ;
 scalar_t__ malloc (int) ;
 int printf (char*,char*,int ,int,int,int) ;
 int pspStubThreadEntry ;
 int pteTlsSetValue (void*,int ,TYPE_1__*) ;
 int pteTlsThreadDestroy (void*) ;
 void* pteTlsThreadInit () ;
 int sceKernelCreateSema (char*,int ,int ,int,int ) ;
 scalar_t__ sceKernelCreateThread (char*,int ,int,int,int,int *) ;
 int snprintf (char*,int,char*,int,...) ;
 int threadDataKey ;

pte_osResult pte_osThreadCreate(pte_osThreadEntryPoint entryPoint,
                                int stackSize,
                                int initialPriority,
                                void *argv,
                                pte_osThreadHandle* ppte_osThreadHandle)
{
   char threadName[64];
   char cancelSemName[64];
   static int threadNum = 1;
   int pspAttr;
   void *pTls;
   SceUID threadId;
   pte_osResult result;
   pspThreadData *pThreadData;

   if (threadNum++ > MAX_PSP_UID)
      threadNum = 0;


   if (stackSize < DEFAULT_STACK_SIZE_BYTES)
      stackSize = DEFAULT_STACK_SIZE_BYTES;


   pTls = pteTlsThreadInit();
   if (pTls == ((void*)0))
   {
      PSP_DEBUG("pteTlsThreadInit: PTE_OS_NO_RESOURCES\n");
      result = PTE_OS_NO_RESOURCES;
      goto FAIL0;
   }





   pThreadData = (pspThreadData *) malloc(sizeof(pspThreadData));

   if (pThreadData == ((void*)0))
   {
      pteTlsThreadDestroy(pTls);

      PSP_DEBUG("malloc(pspThreadData): PTE_OS_NO_RESOURCES\n");
      result = PTE_OS_NO_RESOURCES;
      goto FAIL0;
   }


   pteTlsSetValue(pTls, threadDataKey, pThreadData);

   pThreadData->entryPoint = entryPoint;
   pThreadData->argv = argv;


   snprintf(cancelSemName, sizeof(cancelSemName), "pthread_cancelSem%04d", threadNum);

   pThreadData->cancelSem = sceKernelCreateSema(cancelSemName,
         0,
         0,
         255,
         0);







   snprintf(threadName, sizeof(threadName), "pthread%04d__%x", threadNum, (unsigned int) pTls);

   pspAttr = 0;




   threadId = sceKernelCreateThread(threadName,
         pspStubThreadEntry,
         initialPriority,
         stackSize,
         pspAttr,
         ((void*)0));

   if (threadId == (SceUID) SCE_KERNEL_ERROR_NO_MEMORY)
   {
      free(pThreadData);
      pteTlsThreadDestroy(pTls);

      PSP_DEBUG("sceKernelCreateThread: PTE_OS_NO_RESOURCES\n");
      result = PTE_OS_NO_RESOURCES;
   }
   else if (threadId < 0)
   {
      free(pThreadData);
      pteTlsThreadDestroy(pTls);

      PSP_DEBUG("sceKernelCreateThread: PTE_OS_GENERAL_FAILURE\n");
      result = PTE_OS_GENERAL_FAILURE;
   }
   else
   {
      *ppte_osThreadHandle = threadId;
      result = PTE_OS_OK;
   }

FAIL0:
   return result;
}
