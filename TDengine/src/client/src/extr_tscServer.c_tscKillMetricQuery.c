
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ const int64_t ;
struct TYPE_8__ {scalar_t__ command; } ;
struct TYPE_6__ {int code; } ;
struct TYPE_7__ {int numOfSubs; TYPE_5__ cmd; int * thandle; struct TYPE_7__** pSubs; TYPE_1__ res; } ;
typedef TYPE_2__ SSqlObj ;


 int TSDB_CODE_QUERY_CANCELLED ;
 scalar_t__ TSDB_SQL_RETRIEVE_EMPTY_RESULT ;
 scalar_t__ TSDB_SQL_RETRIEVE_METRIC ;
 scalar_t__ const taosGetTimestampMs () ;
 int taosMsleep (int) ;
 int taosStopRpcConn (int *) ;
 int tscIsTwoStageMergeMetricQuery (TYPE_5__*) ;
 int tscTrace (char*,TYPE_2__*) ;

void tscKillMetricQuery(SSqlObj *pSql) {
  if (!tscIsTwoStageMergeMetricQuery(&pSql->cmd)) {
    return;
  }

  for (int i = 0; i < pSql->numOfSubs; ++i) {
    SSqlObj *pSub = pSql->pSubs[i];

    if (pSub == ((void*)0) || pSub->thandle == ((void*)0)) {
      continue;
    }





    pSql->pSubs[i]->res.code = TSDB_CODE_QUERY_CANCELLED;
    taosStopRpcConn(pSql->pSubs[i]->thandle);
  }

  pSql->numOfSubs = 0;







  const int64_t MAX_WAITING_TIME = 10000;
  int64_t stime = taosGetTimestampMs();

  while (pSql->cmd.command != TSDB_SQL_RETRIEVE_METRIC && pSql->cmd.command != TSDB_SQL_RETRIEVE_EMPTY_RESULT) {
    taosMsleep(100);
    if (taosGetTimestampMs() - stime > MAX_WAITING_TIME) {
      break;
    }
  }

  tscTrace("%p metric query is cancelled", pSql);
}
