
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_59__ TYPE_9__ ;
typedef struct TYPE_58__ TYPE_8__ ;
typedef struct TYPE_57__ TYPE_7__ ;
typedef struct TYPE_56__ TYPE_6__ ;
typedef struct TYPE_55__ TYPE_5__ ;
typedef struct TYPE_54__ TYPE_4__ ;
typedef struct TYPE_53__ TYPE_3__ ;
typedef struct TYPE_52__ TYPE_2__ ;
typedef struct TYPE_51__ TYPE_1__ ;
typedef struct TYPE_50__ TYPE_19__ ;
typedef struct TYPE_49__ TYPE_17__ ;
typedef struct TYPE_48__ TYPE_12__ ;
typedef struct TYPE_47__ TYPE_11__ ;
typedef struct TYPE_46__ TYPE_10__ ;


typedef int int64_t ;
typedef scalar_t__ int32_t ;
typedef int int16_t ;
struct TYPE_57__ {scalar_t__ order; } ;
struct TYPE_52__ {scalar_t__ offset; } ;
struct TYPE_58__ {scalar_t__ skey; scalar_t__ ekey; scalar_t__ lastKey; scalar_t__ pos; scalar_t__ slot; TYPE_7__ order; int precision; int intervalTimeUnit; int nAggTimeInterval; TYPE_6__* pSelectExpr; TYPE_2__ limit; int pGroupbyExpr; scalar_t__ pointsRead; } ;
struct TYPE_59__ {int over; int dataReady; scalar_t__ pointsRead; TYPE_8__ query; } ;
struct TYPE_55__ {TYPE_4__* arg; } ;
struct TYPE_56__ {TYPE_5__ pBase; } ;
struct TYPE_53__ {scalar_t__ i64; } ;
struct TYPE_54__ {TYPE_3__ argValue; } ;
struct TYPE_51__ {int vnodeIndex; } ;
struct TYPE_50__ {scalar_t__ tsOrder; } ;
struct TYPE_49__ {int interpoInfo; int pResult; scalar_t__ usedIndex; int hashList; TYPE_19__* pTSBuf; TYPE_1__ cur; TYPE_8__* pQuery; int loadCompBlockInfo; int loadBlockInfo; } ;
struct TYPE_48__ {scalar_t__ lastKey; int vnode; } ;
struct TYPE_47__ {scalar_t__ rawSKey; scalar_t__ rawEKey; int numOfMeters; TYPE_17__ runtimeEnv; int pResult; } ;
struct TYPE_46__ {int member_0; } ;
typedef TYPE_8__ SQuery ;
typedef TYPE_9__ SQInfo ;
typedef TYPE_10__ SPointInterpoSupporter ;
typedef TYPE_11__ SMeterQuerySupportObj ;
typedef TYPE_12__ SMeterObj ;


 scalar_t__ QUERY_IS_ASC_QUERY (TYPE_8__*) ;
 int QUERY_NOT_COMPLETED ;
 scalar_t__ TSDB_CODE_SUCCESS ;
 int TSQL_SO_ASC ;
 int TSQL_SO_DESC ;
 int allocMemForInterpo (TYPE_11__*,TYPE_8__*,TYPE_12__*) ;
 scalar_t__ allocateOutputBufForGroup (TYPE_11__*,TYPE_8__*,int) ;
 int assert (int) ;
 int changeExecuteScanOrder (TYPE_8__*,int) ;
 int dTrace (char*,TYPE_9__*,...) ;
 int forwardQueryStartPosIfNeeded (TYPE_9__*,TYPE_11__*,int,int) ;
 scalar_t__ isFirstLastRowQuery (TYPE_8__*) ;
 scalar_t__ isFixedOutputQuery (TYPE_8__*) ;
 scalar_t__ isGroupbyNormalCol (int ) ;
 int isPointInterpoQuery (TYPE_8__*) ;
 scalar_t__ isTopBottomQuery (TYPE_8__*) ;
 int normalizedFirstQueryRange (int,int,TYPE_11__*,TYPE_10__*) ;
 int pointInterpSupporterDestroy (TYPE_10__*) ;
 int pointInterpSupporterInit (TYPE_8__*,TYPE_10__*) ;
 int pointInterpSupporterSetData (TYPE_9__*,TYPE_10__*) ;
 int sem_post (int *) ;
 int setQueryStatus (TYPE_8__*,int ) ;
 int setScanLimitationByResultBuffer (TYPE_8__*) ;
 scalar_t__ setupQueryRuntimeEnv (TYPE_12__*,TYPE_8__*,TYPE_17__*,int *,scalar_t__,int) ;
 int taosGetIntervalStartTimestamp (scalar_t__,int ,int ,int ) ;
 int taosHashInt ;
 int taosInitIntHash (int,int,int ) ;
 int taosInitInterpoInfo (int *,scalar_t__,int ,int ,int ) ;
 int tsBufSetTraverseOrder (TYPE_19__*,int ) ;
 int vnodeCheckIfDataExists (TYPE_17__*,TYPE_12__*,int*,int*) ;
 int vnodeInitDataBlockInfo (int *) ;
 int vnodeInitLoadCompBlockInfo (int *) ;
 int vnodeOpenAllFiles (TYPE_9__*,int ) ;

int32_t vnodeQuerySingleMeterPrepare(SQInfo *pQInfo, SMeterObj *pMeterObj, SMeterQuerySupportObj *pSupporter,
                                     void *param) {
  SQuery *pQuery = &pQInfo->query;

  if ((QUERY_IS_ASC_QUERY(pQuery) && (pQuery->skey > pQuery->ekey)) ||
      (!QUERY_IS_ASC_QUERY(pQuery) && (pQuery->ekey > pQuery->skey))) {
    dTrace("QInfo:%p no result in time range %lld-%lld, order %d", pQInfo, pQuery->skey, pQuery->ekey,
           pQuery->order.order);

    sem_post(&pQInfo->dataReady);
    pQInfo->over = 1;

    return TSDB_CODE_SUCCESS;
  }

  setScanLimitationByResultBuffer(pQuery);
  changeExecuteScanOrder(pQuery, 0);

  pQInfo->over = 0;
  pQInfo->pointsRead = 0;
  pQuery->pointsRead = 0;


  pQuery->lastKey = pQuery->skey;

  vnodeInitDataBlockInfo(&pSupporter->runtimeEnv.loadBlockInfo);
  vnodeInitLoadCompBlockInfo(&pSupporter->runtimeEnv.loadCompBlockInfo);


  bool dataInCache = 1;
  bool dataInDisk = 1;
  pSupporter->runtimeEnv.pQuery = pQuery;

  vnodeCheckIfDataExists(&pSupporter->runtimeEnv, pMeterObj, &dataInDisk, &dataInCache);


  if (!(dataInCache || dataInDisk)) {
    dTrace("QInfo:%p no result in query", pQInfo);
    sem_post(&pQInfo->dataReady);
    pQInfo->over = 1;

    return TSDB_CODE_SUCCESS;
  }

  pSupporter->runtimeEnv.pTSBuf = param;
  pSupporter->runtimeEnv.cur.vnodeIndex = -1;
  if (param != ((void*)0)) {
    int16_t order = (pQuery->order.order == pSupporter->runtimeEnv.pTSBuf->tsOrder) ? TSQL_SO_ASC : TSQL_SO_DESC;
    tsBufSetTraverseOrder(pSupporter->runtimeEnv.pTSBuf, order);
  }


  int32_t ret = setupQueryRuntimeEnv(pMeterObj, pQuery, &pSupporter->runtimeEnv, ((void*)0), pQuery->order.order, 0);
  if (ret != TSDB_CODE_SUCCESS) {
    return ret;
  }

  vnodeOpenAllFiles(pQInfo, pMeterObj->vnode);

  if (isGroupbyNormalCol(pQuery->pGroupbyExpr)) {
    if ((ret = allocateOutputBufForGroup(pSupporter, pQuery, 0)) != TSDB_CODE_SUCCESS) {
      return ret;
    }

    pSupporter->runtimeEnv.hashList = taosInitIntHash(10039, sizeof(void *), taosHashInt);
    pSupporter->runtimeEnv.usedIndex = 0;
    pSupporter->runtimeEnv.pResult = pSupporter->pResult;
  }


  if (isFirstLastRowQuery(pQuery)) {
    pQuery->skey = pMeterObj->lastKey;
    pQuery->ekey = pMeterObj->lastKey;
    pQuery->lastKey = pQuery->skey;
  }

  pSupporter->rawSKey = pQuery->skey;
  pSupporter->rawEKey = pQuery->ekey;


  pSupporter->numOfMeters = 1;
  setQueryStatus(pQuery, QUERY_NOT_COMPLETED);

  SPointInterpoSupporter interpInfo = {0};
  pointInterpSupporterInit(pQuery, &interpInfo);

  if ((normalizedFirstQueryRange(dataInDisk, dataInCache, pSupporter, &interpInfo) == 0) ||
      (isFixedOutputQuery(pQuery) && !isTopBottomQuery(pQuery) && (pQuery->limit.offset > 0)) ||
      (isTopBottomQuery(pQuery) && pQuery->limit.offset >= pQuery->pSelectExpr[1].pBase.arg[0].argValue.i64)) {
    sem_post(&pQInfo->dataReady);
    pQInfo->over = 1;

    pointInterpSupporterDestroy(&interpInfo);
    return TSDB_CODE_SUCCESS;
  }





  pointInterpSupporterSetData(pQInfo, &interpInfo);
  pointInterpSupporterDestroy(&interpInfo);

  if (!forwardQueryStartPosIfNeeded(pQInfo, pSupporter, dataInDisk, dataInCache)) {
    return TSDB_CODE_SUCCESS;
  }

  int64_t rs = taosGetIntervalStartTimestamp(pSupporter->rawSKey, pQuery->nAggTimeInterval, pQuery->intervalTimeUnit,
                                             pQuery->precision);
  taosInitInterpoInfo(&pSupporter->runtimeEnv.interpoInfo, pQuery->order.order, rs, 0, 0);
  allocMemForInterpo(pSupporter, pQuery, pMeterObj);

  if (!isPointInterpoQuery(pQuery)) {
    assert(pQuery->pos >= 0 && pQuery->slot >= 0);
  }


  pQuery->lastKey = pQuery->skey;
  return TSDB_CODE_SUCCESS;
}
