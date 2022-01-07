
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ U32 ;
struct TYPE_2__ {scalar_t__ xHandle; } ;


 int SEGGER_SYSVIEW_Warn (char*) ;
 unsigned int SYSVIEW_FREERTOS_MAX_NOF_TASKS ;
 TYPE_1__* _aTasks ;

void SYSVIEW_DeleteTask(U32 xHandle) {
  unsigned n;

  for (n = 0; n < SYSVIEW_FREERTOS_MAX_NOF_TASKS; n++) {
    if (_aTasks[n].xHandle == xHandle) {
      break;
    }
  }
  if (n == SYSVIEW_FREERTOS_MAX_NOF_TASKS) {
    SEGGER_SYSVIEW_Warn("SYSTEMVIEW: Could not find task information. Cannot delete task.");
    return;
  }

  _aTasks[n].xHandle = 0;
}
