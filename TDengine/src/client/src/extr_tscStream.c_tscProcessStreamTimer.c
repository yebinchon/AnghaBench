
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ stime; scalar_t__ etime; } ;
struct TYPE_9__ {int * msg; void* thandle; TYPE_1__* ahandle; int fp; } ;
struct TYPE_8__ {TYPE_6__ cmd; } ;
struct TYPE_7__ {void* pTimer; scalar_t__ stime; scalar_t__ etime; scalar_t__ interval; int precision; TYPE_2__* pSql; scalar_t__ numOfRes; } ;
typedef TYPE_1__ SSqlStream ;
typedef TYPE_2__ SSqlObj ;
typedef TYPE_3__ SSchedMsg ;


 scalar_t__ isProjectStream (TYPE_6__*) ;
 scalar_t__ taosGetTimestamp (int ) ;
 int taosScheduleTask (int ,TYPE_3__*) ;
 int tscProcessStreamLaunchQuery ;
 int tscQhandle ;
 int tscTrace (char*,TYPE_2__*) ;

__attribute__((used)) static void tscProcessStreamTimer(void *handle, void *tmrId) {
  SSqlStream *pStream = (SSqlStream *)handle;
  if (pStream == ((void*)0)) return;
  if (pStream->pTimer != tmrId) return;
  pStream->pTimer = ((void*)0);

  pStream->numOfRes = 0;
  SSqlObj *pSql = pStream->pSql;
  tscTrace("%p add into timer", pSql);

  if (isProjectStream(&pSql->cmd)) {




    pSql->cmd.stime = pStream->stime;

    pSql->cmd.etime = taosGetTimestamp(pStream->precision);
    if (pSql->cmd.etime > pStream->etime) {
      pSql->cmd.etime = pStream->etime;
    }
  } else {
    pSql->cmd.stime = pStream->stime - pStream->interval;
    pSql->cmd.etime = pStream->stime - 1;
  }


  SSchedMsg schedMsg;
  schedMsg.fp = tscProcessStreamLaunchQuery;
  schedMsg.ahandle = pStream;
  schedMsg.thandle = (void *)1;
  schedMsg.msg = ((void*)0);
  taosScheduleTask(tscQhandle, &schedMsg);
}
