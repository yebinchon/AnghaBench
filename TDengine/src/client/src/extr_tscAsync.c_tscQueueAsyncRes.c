
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int * msg; void* thandle; TYPE_2__* ahandle; int fp; } ;
struct TYPE_7__ {int code; } ;
struct TYPE_8__ {TYPE_1__ res; struct TYPE_8__* signature; } ;
typedef TYPE_2__ SSqlObj ;
typedef TYPE_3__ SSchedMsg ;


 int taosScheduleTask (int ,TYPE_3__*) ;
 int tscProcessAsyncRes ;
 int tscQhandle ;
 int tscTrace (char*,TYPE_2__*,...) ;

void tscQueueAsyncRes(SSqlObj *pSql) {
  if (pSql == ((void*)0) || pSql->signature != pSql) {
    tscTrace("%p SqlObj is freed, not add into queue async res", pSql);
    return;
  } else {
    tscTrace("%p add into queued async res, code:%d", pSql, pSql->res.code);
  }

  SSchedMsg schedMsg;
  schedMsg.fp = tscProcessAsyncRes;
  schedMsg.ahandle = pSql;
  schedMsg.thandle = (void *)1;
  schedMsg.msg = ((void*)0);
  taosScheduleTask(tscQhandle, &schedMsg);
}
