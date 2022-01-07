
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_5__ ;
typedef struct TYPE_26__ TYPE_4__ ;
typedef struct TYPE_25__ TYPE_3__ ;
typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_20__ ;
typedef struct TYPE_22__ TYPE_1__ ;


typedef size_t int32_t ;
struct TYPE_27__ {size_t vnodeIdx; TYPE_20__* pState; int pFinalColModel; int pOrderDescriptor; int * pExtMemBuffer; scalar_t__ numOfRetry; TYPE_4__* pParentSqlObj; int queryMutex; TYPE_1__* localBuffer; } ;
struct TYPE_25__ {int code; scalar_t__ numOfRows; } ;
struct TYPE_24__ {int type; int command; } ;
struct TYPE_26__ {TYPE_3__ res; int param; int (* fp ) (int ,TYPE_4__*,int) ;TYPE_2__ cmd; int rspSem; int emptyRspSem; } ;
struct TYPE_23__ {int code; int numOfTotal; int numOfCompleted; } ;
struct TYPE_22__ {scalar_t__ numOfElems; } ;
typedef TYPE_4__ SSqlObj ;
typedef TYPE_5__ SRetrieveSupport ;


 scalar_t__ MAX_NUM_OF_SUBQUERY_RETRY ;
 int TSDB_CODE_CLI_OUT_OF_MEMORY ;
 int TSDB_CODE_SUCCESS ;
 int TSDB_QUERY_TYPE_JOIN_SEC_STAGE ;
 int TSDB_SQL_RETRIEVE_METRIC ;
 int assert (int ) ;
 int atomic_add_fetch_32 (int *,int) ;
 int atomic_val_compare_exchange_32 (int*,int,int) ;
 int pthread_mutex_unlock (int *) ;
 int stub1 (int ,TYPE_4__*,int) ;
 int tExtMemBufferClear (int ) ;
 int tfree (TYPE_20__*) ;
 TYPE_4__* tscCreateSqlObjForSubquery (TYPE_4__*,TYPE_5__*,TYPE_4__*) ;
 int tscError (char*,TYPE_4__*,TYPE_4__*,...) ;
 void tscFreeSubSqlObj (TYPE_5__*,TYPE_4__*) ;
 int tscLocalReducerEnvDestroy (int *,int ,int ,int ) ;
 int tscProcessSql (TYPE_4__*) ;
 int tscQueueAsyncRes (TYPE_4__*) ;
 int tscTrace (char*,TYPE_4__*,TYPE_4__*,int,size_t,...) ;
 int tsem_post (int *) ;
 int tsem_wait (int *) ;

__attribute__((used)) static void tscHandleSubRetrievalError(SRetrieveSupport *trsupport, SSqlObj *pSql, int numOfRows) {
  SSqlObj *pPObj = trsupport->pParentSqlObj;
  int32_t idx = trsupport->vnodeIdx;

  assert(pSql != ((void*)0));


  if (trsupport->pState->code == TSDB_CODE_SUCCESS && pPObj->res.code != TSDB_CODE_SUCCESS) {
    trsupport->pState->code = -(int)pPObj->res.code;





    pSql->res.numOfRows = 0;
    trsupport->numOfRetry = MAX_NUM_OF_SUBQUERY_RETRY;
    tscTrace("%p query is cancelled, sub:%p, orderOfSub:%d abort retrieve, code:%d", trsupport->pParentSqlObj, pSql,
             trsupport->vnodeIdx, trsupport->pState->code);
  }

  if (numOfRows >= 0) {
    tscTrace("%p sub:%p retrieve numOfRows:%d,orderOfSub:%d", pPObj, pSql, numOfRows, idx);
    tscError("%p sub:%p abort further retrieval due to other queries failure,orderOfSub:%d,code:%d", pPObj, pSql, idx,
             trsupport->pState->code);
  } else {
    if (trsupport->numOfRetry++ < MAX_NUM_OF_SUBQUERY_RETRY && trsupport->pState->code == TSDB_CODE_SUCCESS) {




      tExtMemBufferClear(trsupport->pExtMemBuffer[idx]);


      trsupport->localBuffer->numOfElems = 0;
      pthread_mutex_unlock(&trsupport->queryMutex);

      tscTrace("%p sub:%p retrieve failed, code:%d, orderOfSub:%d, retry:%d", trsupport->pParentSqlObj, pSql, numOfRows,
               idx, trsupport->numOfRetry);

      SSqlObj *pNew = tscCreateSqlObjForSubquery(trsupport->pParentSqlObj, trsupport, pSql);
      if (pNew == ((void*)0)) {
        tscError("%p sub:%p failed to create new subquery sqlobj due to out of memory, abort retry",
                 trsupport->pParentSqlObj, pSql);

        trsupport->pState->code = TSDB_CODE_CLI_OUT_OF_MEMORY;
        trsupport->numOfRetry = MAX_NUM_OF_SUBQUERY_RETRY;
        return;
      }

      tscProcessSql(pNew);
      return;
    } else {
      atomic_val_compare_exchange_32(&trsupport->pState->code, TSDB_CODE_SUCCESS, numOfRows);
      tscError("%p sub:%p retrieve failed,code:%d,orderOfSub:%d failed.no more retry,set global code:%d", pPObj, pSql,
               numOfRows, idx, trsupport->pState->code);
    }
  }

  if (atomic_add_fetch_32(&trsupport->pState->numOfCompleted, 1) < trsupport->pState->numOfTotal) {
    return tscFreeSubSqlObj(trsupport, pSql);
  }


  tscError("%p retrieve from %d vnode(s) completed,code:%d.FAILED.", pPObj, trsupport->pState->numOfTotal,
           trsupport->pState->code);
  pPObj->res.code = -(trsupport->pState->code);


  tscLocalReducerEnvDestroy(trsupport->pExtMemBuffer, trsupport->pOrderDescriptor, trsupport->pFinalColModel,
                            trsupport->pState->numOfTotal);

  tfree(trsupport->pState);
  tscFreeSubSqlObj(trsupport, pSql);


  if (pPObj->fp == ((void*)0)) {

    tsem_wait(&pPObj->emptyRspSem);
    tsem_wait(&pPObj->emptyRspSem);

    tsem_post(&pPObj->rspSem);

    pPObj->cmd.command = TSDB_SQL_RETRIEVE_METRIC;
  } else {

    if ((pPObj->cmd.type & TSDB_QUERY_TYPE_JOIN_SEC_STAGE) == TSDB_QUERY_TYPE_JOIN_SEC_STAGE) {
      (*pPObj->fp)(pPObj->param, pPObj, pPObj->res.code);
    } else {
      if (pPObj->res.code != TSDB_CODE_SUCCESS) {
        tscQueueAsyncRes(pPObj);
      }
    }
  }
}
