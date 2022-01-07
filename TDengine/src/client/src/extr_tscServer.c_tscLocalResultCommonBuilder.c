
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int int32_t ;
struct TYPE_8__ {scalar_t__ code; int rspType; int numOfRows; scalar_t__ row; } ;
struct TYPE_9__ {TYPE_1__ res; int param; int (* fp ) (int ,TYPE_2__*,int ) ;int cmd; } ;
typedef TYPE_1__ SSqlRes ;
typedef TYPE_2__ SSqlObj ;
typedef int SSqlCmd ;


 scalar_t__ TSDB_CODE_SUCCESS ;
 int stub1 (int ,TYPE_2__*,int ) ;
 int tscQueueAsyncRes (TYPE_2__*) ;
 int tscResetForNextRetrieve (TYPE_1__*) ;
 int tscSetResultPointer (int *,TYPE_1__*) ;

__attribute__((used)) static int tscLocalResultCommonBuilder(SSqlObj *pSql, int32_t numOfRes) {
  SSqlRes *pRes = &pSql->res;
  SSqlCmd *pCmd = &pSql->cmd;

  pRes->code = TSDB_CODE_SUCCESS;

  if (pRes->rspType == 0) {
    pRes->numOfRows = numOfRes;
    pRes->row = 0;
    pRes->rspType = 1;

    tscSetResultPointer(pCmd, pRes);
    pRes->row = 0;

  } else {
    tscResetForNextRetrieve(pRes);
  }

  uint8_t code = pSql->res.code;
  if (pSql->fp) {
    if (code == TSDB_CODE_SUCCESS) {
      (*pSql->fp)(pSql->param, pSql, pSql->res.numOfRows);
    } else {
      tscQueueAsyncRes(pSql);
    }
  }

  return code;
}
