
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * msg; void* thandle; void* ahandle; int fp; } ;
typedef TYPE_1__ SSchedMsg ;


 int taosScheduleTask (int ,TYPE_1__*) ;
 int tscProcessAsyncError ;
 int tscQhandle ;

void tscQueueAsyncError(void(*fp), void *param) {
  SSchedMsg schedMsg;
  schedMsg.fp = tscProcessAsyncError;
  schedMsg.ahandle = fp;
  schedMsg.thandle = param;
  schedMsg.msg = ((void*)0);
  taosScheduleTask(tscQhandle, &schedMsg);
}
