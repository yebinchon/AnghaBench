
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_16__ {TYPE_2__* pMetricMeta; } ;
struct TYPE_11__ {scalar_t__ limit; scalar_t__ offset; } ;
struct TYPE_15__ {scalar_t__ globalLimit; scalar_t__ vnodeIdx; int command; TYPE_1__ limit; } ;
struct TYPE_13__ {scalar_t__ numOfTotal; scalar_t__ offset; scalar_t__ numOfRows; } ;
struct TYPE_14__ {int * fp; struct TYPE_14__* signature; TYPE_3__ res; TYPE_5__ cmd; } ;
struct TYPE_12__ {scalar_t__ numOfVnodes; } ;
typedef int * TAOS_ROW ;
typedef int TAOS_RES ;
typedef TYPE_3__ SSqlRes ;
typedef TYPE_4__ SSqlObj ;
typedef TYPE_5__ SSqlCmd ;
typedef TYPE_6__ SMeterMetaInfo ;


 int TSDB_CODE_DISCONNECTED ;
 int TSDB_SQL_SELECT ;
 int assert (int) ;
 int globalCode ;
 int * taos_fetch_row_impl (int *) ;
 TYPE_6__* tscGetMeterMetaInfo (TYPE_5__*,int ) ;
 int tscProcessSql (TYPE_4__*) ;
 scalar_t__ tscProjectionQueryOnMetric (TYPE_5__*) ;

TAOS_ROW taos_fetch_row(TAOS_RES *res) {
  SSqlObj *pSql = (SSqlObj *)res;
  SSqlCmd *pCmd = &pSql->cmd;
  SSqlRes *pRes = &pSql->res;

  if (pSql == ((void*)0) || pSql->signature != pSql) {
    globalCode = TSDB_CODE_DISCONNECTED;
    return ((void*)0);
  }


  TAOS_ROW rows = taos_fetch_row_impl(res);
  while (rows == ((void*)0) && tscProjectionQueryOnMetric(pCmd)) {
    SMeterMetaInfo *pMeterMetaInfo = tscGetMeterMetaInfo(pCmd, 0);


    if (pCmd->globalLimit > 0 && pRes->numOfTotal >= pCmd->globalLimit) {
      return ((void*)0);
    }





    pCmd->limit.limit = pCmd->globalLimit - pRes->numOfTotal;
    pCmd->limit.offset = pRes->offset;

    assert((pRes->offset >= 0 && pRes->numOfRows == 0) || (pRes->offset == 0 && pRes->numOfRows >= 0));

    if ((++pCmd->vnodeIdx) < pMeterMetaInfo->pMetricMeta->numOfVnodes) {
      pCmd->command = TSDB_SQL_SELECT;
      assert(pSql->fp == ((void*)0));
      tscProcessSql(pSql);
      rows = taos_fetch_row_impl(res);
    }


    if (rows != ((void*)0) || pCmd->vnodeIdx >= pMeterMetaInfo->pMetricMeta->numOfVnodes) {
      break;
    }
  }

  return rows;
}
