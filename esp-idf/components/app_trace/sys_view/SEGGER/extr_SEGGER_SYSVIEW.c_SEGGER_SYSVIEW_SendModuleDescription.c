
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct TYPE_3__* pNext; int (* pfSendModuleDesc ) () ;} ;
typedef TYPE_1__ SEGGER_SYSVIEW_MODULE ;


 TYPE_1__* _pFirstModule ;
 int stub1 () ;

void SEGGER_SYSVIEW_SendModuleDescription(void) {
  SEGGER_SYSVIEW_MODULE* pModule;

  if (_pFirstModule != 0) {
    pModule = _pFirstModule;
    do {
      if (pModule->pfSendModuleDesc) {
        pModule->pfSendModuleDesc();
      }
      pModule = pModule->pNext;
    } while (pModule);
  }
}
