
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_9__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_21__ {TYPE_2__* pMetricMeta; } ;
struct TYPE_16__ {scalar_t__ limit; } ;
struct TYPE_20__ {int vnodeIdx; scalar_t__ globalLimit; int numOfCols; int order; int command; TYPE_1__ limit; } ;
struct TYPE_18__ {scalar_t__ numOfTotal; int* bytes; int row; scalar_t__* tsrow; } ;
struct TYPE_19__ {TYPE_3__ res; int param; int (* fetchFp ) (int ,TYPE_4__*,scalar_t__*) ;int fp; TYPE_5__ cmd; } ;
struct TYPE_17__ {int numOfVnodes; } ;
typedef int TAOS_RES ;
typedef TYPE_3__ SSqlRes ;
typedef TYPE_4__ SSqlObj ;
typedef TYPE_5__ SSqlCmd ;


 scalar_t__ TSC_GET_RESPTR_BASE (TYPE_3__*,TYPE_5__*,int,int ) ;
 int TSDB_SQL_SELECT ;
 int assert (int) ;
 int stub1 (int ,TYPE_4__*,scalar_t__*) ;
 int stub2 (int ,TYPE_4__*,scalar_t__*) ;
 int stub3 (int ,TYPE_4__*,scalar_t__*) ;
 TYPE_9__* tscGetMeterMetaInfo (TYPE_5__*,int ) ;
 int tscProcessAsyncContinueRetrieve ;
 int tscProcessSql (TYPE_4__*) ;
 scalar_t__ tscProjectionQueryOnMetric (TYPE_5__*) ;
 int tscResetForNextRetrieve (TYPE_3__*) ;

void tscProcessAsyncRetrieve(void *param, TAOS_RES *tres, int numOfRows) {
  SSqlObj *pSql = (SSqlObj *)tres;
  SSqlRes *pRes = &pSql->res;
  SSqlCmd *pCmd = &pSql->cmd;

  if (numOfRows == 0) {

    if (tscProjectionQueryOnMetric(pCmd)) {



      assert(pCmd->vnodeIdx >= 1);


      if (pCmd->globalLimit > 0 && pRes->numOfTotal >= pCmd->globalLimit) {
        (*pSql->fetchFp)(pSql->param, pSql, ((void*)0));
        return;
      }


      pCmd->limit.limit = pCmd->globalLimit - pRes->numOfTotal;

      if ((++pCmd->vnodeIdx) <= tscGetMeterMetaInfo(pCmd, 0)->pMetricMeta->numOfVnodes) {
        pSql->cmd.command = TSDB_SQL_SELECT;

        tscResetForNextRetrieve(pRes);
        pSql->fp = tscProcessAsyncContinueRetrieve;
        tscProcessSql(pSql);
        return;
      }
    } else {
      (*pSql->fetchFp)(pSql->param, pSql, ((void*)0));
    }
  } else {
    for (int i = 0; i < pCmd->numOfCols; ++i)
      pRes->tsrow[i] = TSC_GET_RESPTR_BASE(pRes, pCmd, i, pCmd->order) + pRes->bytes[i] * pRes->row;
    pRes->row++;

    (*pSql->fetchFp)(pSql->param, pSql, pSql->res.tsrow);
  }
}
