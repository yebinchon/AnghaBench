
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_10__ ;


struct TYPE_13__ {scalar_t__ limit; int offset; } ;
struct TYPE_17__ {scalar_t__ vnodeIdx; scalar_t__ globalLimit; scalar_t__ command; TYPE_1__ limit; } ;
struct TYPE_15__ {scalar_t__ numOfTotal; scalar_t__ numOfRows; int offset; } ;
struct TYPE_16__ {int (* fetchFp ) (void*,int *,int) ;int fp; TYPE_5__ cmd; TYPE_3__ res; } ;
struct TYPE_14__ {scalar_t__ numOfVnodes; } ;
struct TYPE_12__ {TYPE_2__* pMetricMeta; } ;
typedef int TAOS_RES ;
typedef TYPE_3__ SSqlRes ;
typedef TYPE_4__ SSqlObj ;
typedef TYPE_5__ SSqlCmd ;


 scalar_t__ TSDB_SQL_RETRIEVE_METRIC ;
 scalar_t__ TSDB_SQL_SELECT ;
 int assert (int) ;
 int stub1 (void*,int *,int) ;
 int stub2 (void*,int *,int) ;
 TYPE_10__* tscGetMeterMetaInfo (TYPE_5__*,int ) ;
 int tscProcessAsyncRetrieveNextVnode ;
 int tscProcessSql (TYPE_4__*) ;
 scalar_t__ tscProjectionQueryOnMetric (TYPE_5__*) ;
 int tscResetForNextRetrieve (TYPE_3__*) ;
 int tscTrace (char*,TYPE_4__*,scalar_t__) ;

__attribute__((used)) static void tscProcessAsyncFetchRowsProxy(void *param, TAOS_RES *tres, int numOfRows) {
  if (tres == ((void*)0)) {
    return;
  }

  SSqlObj *pSql = (SSqlObj *)tres;
  SSqlRes *pRes = &pSql->res;
  SSqlCmd *pCmd = &pSql->cmd;


  if (numOfRows == 0 && tscProjectionQueryOnMetric(pCmd)) {

    assert(pCmd->vnodeIdx >= 0);


    if (pCmd->globalLimit > 0 && pRes->numOfTotal >= pCmd->globalLimit) {
      (*pSql->fetchFp)(param, tres, 0);
      return;
    }


    pCmd->limit.limit = pCmd->globalLimit - pRes->numOfTotal;
    pCmd->limit.offset = pRes->offset;

    if ((++(pCmd->vnodeIdx)) < tscGetMeterMetaInfo(pCmd, 0)->pMetricMeta->numOfVnodes) {
      tscTrace("%p retrieve data from next vnode:%d", pSql, pCmd->vnodeIdx);

      pSql->cmd.command = TSDB_SQL_SELECT;

      tscResetForNextRetrieve(pRes);
      pSql->fp = tscProcessAsyncRetrieveNextVnode;
      tscProcessSql(pSql);
      return;
    }
  } else {
    if (pCmd->command != TSDB_SQL_RETRIEVE_METRIC) {
      pRes->numOfTotal += pRes->numOfRows;
    }
  }

  (*pSql->fetchFp)(param, tres, numOfRows);
}
