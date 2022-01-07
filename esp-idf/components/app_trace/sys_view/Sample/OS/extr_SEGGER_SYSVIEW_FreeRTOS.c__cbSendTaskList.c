
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int U32 ;
typedef int TaskHandle_t ;
struct TYPE_2__ {scalar_t__ uStackHighWaterMark; scalar_t__ pxStack; scalar_t__ uxCurrentPriority; int pcTaskName; scalar_t__ xHandle; } ;


 unsigned int SYSVIEW_FREERTOS_MAX_NOF_TASKS ;
 int SYSVIEW_SendTaskInfo (int ,int ,unsigned int,int ,unsigned int) ;
 TYPE_1__* _aTasks ;
 scalar_t__ uxTaskGetStackHighWaterMark (int ) ;

__attribute__((used)) static void _cbSendTaskList(void) {
  unsigned n;

  for (n = 0; n < SYSVIEW_FREERTOS_MAX_NOF_TASKS; n++) {
    if (_aTasks[n].xHandle) {



      SYSVIEW_SendTaskInfo((U32)_aTasks[n].xHandle, _aTasks[n].pcTaskName, (unsigned)_aTasks[n].uxCurrentPriority, (U32)_aTasks[n].pxStack, (unsigned)_aTasks[n].uStackHighWaterMark);
    }
  }
}
