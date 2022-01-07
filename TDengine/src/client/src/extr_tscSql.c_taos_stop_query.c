
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ command; } ;
struct TYPE_5__ {int code; } ;
struct TYPE_6__ {int * thandle; TYPE_4__ cmd; TYPE_1__ res; struct TYPE_6__* signature; } ;
typedef int TAOS_RES ;
typedef TYPE_2__ SSqlObj ;


 int TSDB_CODE_QUERY_CANCELLED ;
 scalar_t__ TSDB_SQL_LOCAL ;
 int taosStopRpcConn (int *) ;
 scalar_t__ tscIsTwoStageMergeMetricQuery (TYPE_4__*) ;
 int tscKillMetricQuery (TYPE_2__*) ;
 int tscTrace (char*,int *) ;

void taos_stop_query(TAOS_RES *res) {
  if (res == ((void*)0)) return;

  SSqlObj *pSql = (SSqlObj *)res;
  if (pSql->signature != pSql) return;
  tscTrace("%p start to cancel query", res);

  pSql->res.code = TSDB_CODE_QUERY_CANCELLED;

  if (tscIsTwoStageMergeMetricQuery(&pSql->cmd)) {
    tscKillMetricQuery(pSql);
    return;
  }

  if (pSql->cmd.command >= TSDB_SQL_LOCAL) {
    return;
  }

  if (pSql->thandle == ((void*)0)) {
    tscTrace("%p no connection, abort cancel", res);
    return;
  }

  taosStopRpcConn(pSql->thandle);
  tscTrace("%p query is cancelled", res);
}
