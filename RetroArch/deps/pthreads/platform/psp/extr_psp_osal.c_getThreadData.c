
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pspThreadData ;
typedef int SceUID ;


 void* getTlsStructFromThread (int ) ;
 scalar_t__ pteTlsGetValue (void*,int ) ;
 int threadDataKey ;

__attribute__((used)) static pspThreadData *getThreadData(SceUID threadHandle)
{
   void *pTls = getTlsStructFromThread(threadHandle);
   pspThreadData *pThreadData = (pspThreadData *)
      pteTlsGetValue(pTls, threadDataKey);

   return pThreadData;
}
