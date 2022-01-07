
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_8__ {scalar_t__ code; scalar_t__ numOfRows; scalar_t__ row; } ;
struct TYPE_9__ {TYPE_1__ res; int param; int (* fp ) (int ,TYPE_2__*,scalar_t__) ;int cmd; } ;
typedef TYPE_1__ SSqlRes ;
typedef TYPE_2__ SSqlObj ;
typedef int SSqlCmd ;


 scalar_t__ TSDB_CODE_SUCCESS ;
 int stub1 (int ,TYPE_2__*,scalar_t__) ;
 scalar_t__ tscLocalDoReduce (TYPE_2__*) ;
 int tscQueueAsyncRes (TYPE_2__*) ;
 int tscSetResultPointer (int *,TYPE_1__*) ;

int tscProcessRetrieveMetricRsp(SSqlObj *pSql) {
  SSqlRes *pRes = &pSql->res;
  SSqlCmd *pCmd = &pSql->cmd;

  pRes->code = tscLocalDoReduce(pSql);

  if (pRes->code == TSDB_CODE_SUCCESS && pRes->numOfRows > 0) {
    tscSetResultPointer(pCmd, pRes);
  }

  pRes->row = 0;

  uint8_t code = pSql->res.code;
  if (pSql->fp) {
    if (pSql->res.code == TSDB_CODE_SUCCESS) {
      (*pSql->fp)(pSql->param, pSql, pSql->res.numOfRows);
    } else {
      tscQueueAsyncRes(pSql);
    }
  }

  return code;
}
