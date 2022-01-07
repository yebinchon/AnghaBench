
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* pfSendModuleDesc ) () ;struct TYPE_4__* pNext; scalar_t__ NumEvents; scalar_t__ EventOffset; } ;
typedef TYPE_1__ SEGGER_SYSVIEW_MODULE ;


 scalar_t__ MODULE_EVENT_OFFSET ;
 int SEGGER_SYSVIEW_LOCK () ;
 int SEGGER_SYSVIEW_SendModule (int) ;
 int SEGGER_SYSVIEW_UNLOCK () ;
 int _NumModules ;
 TYPE_1__* _pFirstModule ;
 int stub1 () ;

void SEGGER_SYSVIEW_RegisterModule(SEGGER_SYSVIEW_MODULE* pModule) {
  SEGGER_SYSVIEW_LOCK();
  if (_pFirstModule == 0) {





    pModule->EventOffset = MODULE_EVENT_OFFSET;
    pModule->pNext = 0;
    _pFirstModule = pModule;
    _NumModules = 1;
  } else {





    pModule->EventOffset = _pFirstModule->EventOffset + _pFirstModule->NumEvents;
    pModule->pNext = _pFirstModule;
    _pFirstModule = pModule;
    _NumModules++;
  }
  SEGGER_SYSVIEW_SendModule(_NumModules-1);
  if (pModule->pfSendModuleDesc) {
    pModule->pfSendModuleDesc();
  }
  SEGGER_SYSVIEW_UNLOCK();
}
