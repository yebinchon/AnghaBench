
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* entryPoint ) (int ) ;int argv; } ;
typedef TYPE_1__ pspThreadData ;


 TYPE_1__* getThreadData (int ) ;
 int sceKernelGetThreadId () ;
 int stub1 (int ) ;

int pspStubThreadEntry (unsigned int argc, void *argv)
{
  int result;
  pspThreadData *pThreadData;

  pThreadData = getThreadData(sceKernelGetThreadId());

  result = (*(pThreadData->entryPoint))(pThreadData->argv);

  return result;
}
