
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * msg; void* thandle; int * ahandle; int fp; } ;
typedef int SSqlObj ;
typedef TYPE_1__ SSchedMsg ;


 int taosScheduleTask (int ,TYPE_1__*) ;
 int tscProcessAsyncFree ;
 int tscQhandle ;
 int tscTrace (char*,int *) ;

void tscQueueAsyncFreeResult(SSqlObj *pSql) {
  tscTrace("%p sqlObj put in queue to async free", pSql);

  SSchedMsg schedMsg;
  schedMsg.fp = tscProcessAsyncFree;
  schedMsg.ahandle = pSql;
  schedMsg.thandle = (void *)1;
  schedMsg.msg = ((void*)0);
  taosScheduleTask(tscQhandle, &schedMsg);
}
