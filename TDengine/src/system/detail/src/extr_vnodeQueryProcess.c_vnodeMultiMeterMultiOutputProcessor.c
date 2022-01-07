
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_49__ TYPE_9__ ;
typedef struct TYPE_48__ TYPE_8__ ;
typedef struct TYPE_47__ TYPE_7__ ;
typedef struct TYPE_46__ TYPE_6__ ;
typedef struct TYPE_45__ TYPE_5__ ;
typedef struct TYPE_44__ TYPE_4__ ;
typedef struct TYPE_43__ TYPE_3__ ;
typedef struct TYPE_42__ TYPE_2__ ;
typedef struct TYPE_41__ TYPE_1__ ;
typedef struct TYPE_40__ TYPE_12__ ;
typedef struct TYPE_39__ TYPE_11__ ;
typedef struct TYPE_38__ TYPE_10__ ;


struct TYPE_44__ {size_t numOfSubSet; size_t* starterPos; size_t numOfSids; } ;
typedef TYPE_4__ tSidSet ;
typedef scalar_t__ int64_t ;
typedef size_t int32_t ;
struct TYPE_49__ {TYPE_2__* resultInfo; int numOfRows; } ;
struct TYPE_48__ {int member_0; } ;
struct TYPE_43__ {scalar_t__ offset; scalar_t__ limit; } ;
struct TYPE_46__ {scalar_t__ pointsRead; scalar_t__ pointsToRead; size_t numOfOutputCols; scalar_t__ numOfFilterCols; scalar_t__ pointsOffset; TYPE_3__ limit; scalar_t__ skey; int pGroupbyExpr; int over; scalar_t__ lastKey; scalar_t__ ekey; } ;
struct TYPE_47__ {int pointsReturned; int pointsRead; TYPE_11__* pMeterQuerySupporter; TYPE_6__ query; } ;
struct TYPE_45__ {size_t usedIndex; size_t numOfFiles; TYPE_9__* pResult; TYPE_1__* pTSBuf; int cur; int pMeterObj; int * pHeaderFiles; int hashList; } ;
struct TYPE_42__ {int numOfRes; } ;
struct TYPE_41__ {int cur; } ;
struct TYPE_40__ {scalar_t__ lastKey; int vnode; } ;
struct TYPE_39__ {size_t subgroupIdx; size_t meterIdx; size_t numOfMeters; TYPE_4__* pSidSet; scalar_t__ rawEKey; scalar_t__ rawSKey; TYPE_9__* pResult; int pMeterObj; TYPE_5__ runtimeEnv; TYPE_10__** pMeterSidExtInfo; } ;
struct TYPE_38__ {int sid; } ;
typedef scalar_t__ TSKEY ;
typedef TYPE_5__ SQueryRuntimeEnv ;
typedef TYPE_6__ SQuery ;
typedef TYPE_7__ SQInfo ;
typedef TYPE_8__ SPointInterpoSupporter ;
typedef TYPE_9__ SOutputRes ;
typedef TYPE_10__ SMeterSidExtInfo ;
typedef TYPE_11__ SMeterQuerySupportObj ;
typedef TYPE_12__ SMeterObj ;


 int MAX (int ,int ) ;
 int POINTER_BYTES ;
 int QUERY_COMPLETED ;
 int QUERY_NO_DATA_TO_CHECK ;
 int QUERY_RESBUF_FULL ;
 int Q_STATUS_EQUAL (int ,int) ;
 int assert (int) ;
 int clearGroupResultBuf (TYPE_9__*,size_t) ;
 int copyFromGroupBuf (TYPE_7__*,TYPE_9__*) ;
 int dTrace (char*,TYPE_7__*,int ,size_t,size_t,...) ;
 scalar_t__ doCheckMetersInGroup (TYPE_7__*,size_t,size_t) ;
 int doFinalizeResult (TYPE_5__*) ;
 scalar_t__ doRevisedResultsByLimit (TYPE_7__*) ;
 int doSkipResults (TYPE_5__*) ;
 int forwardQueryStartPosition (TYPE_5__*) ;
 TYPE_12__* getMeterObj (int ,int ) ;
 scalar_t__ getNumOfResult (TYPE_5__*) ;
 scalar_t__ isFirstLastRowQuery (TYPE_6__*) ;
 scalar_t__ isGroupbyEachTable (int ,TYPE_4__*) ;
 scalar_t__ isGroupbyNormalCol (int ) ;
 scalar_t__ isPointInterpoQuery (TYPE_6__*) ;
 scalar_t__ isQueryKilled (TYPE_6__*) ;
 int moveDescOrderResultsToFront (TYPE_5__*) ;
 int multimeterMultioutputHelper (TYPE_7__*,int*,int*,size_t,int ) ;
 int normalizedFirstQueryRange (int,int,TYPE_11__*,TYPE_8__*) ;
 int resetCtxOutputBuf (TYPE_5__*) ;
 int resetMMapWindow (int *) ;
 int setQueryStatus (TYPE_6__*,int) ;
 int taosCleanUpIntHash (int ) ;
 int taosHashInt ;
 int taosInitIntHash (size_t,int ,int ) ;
 int vnodeScanAllData (TYPE_5__*) ;
 int vnodeUpdateFilterColumnIndex (TYPE_6__*) ;
 int vnodeUpdateQueryColumnIndex (TYPE_6__*,int ) ;

__attribute__((used)) static void vnodeMultiMeterMultiOutputProcessor(SQInfo *pQInfo) {
  SMeterQuerySupportObj *pSupporter = pQInfo->pMeterQuerySupporter;

  SMeterSidExtInfo **pMeterSidExtInfo = pSupporter->pMeterSidExtInfo;
  SQueryRuntimeEnv * pRuntimeEnv = &pSupporter->runtimeEnv;

  SQuery * pQuery = &pQInfo->query;
  tSidSet *pSids = pSupporter->pSidSet;

  SMeterObj *pOneMeter = getMeterObj(pSupporter->pMeterObj, pMeterSidExtInfo[0]->sid);

  resetCtxOutputBuf(pRuntimeEnv);

  if (isPointInterpoQuery(pQuery)) {
    assert(pQuery->limit.offset == 0 && pQuery->limit.limit != 0);

    while (pSupporter->subgroupIdx < pSids->numOfSubSet) {
      int32_t start = pSids->starterPos[pSupporter->subgroupIdx];
      int32_t end = pSids->starterPos[pSupporter->subgroupIdx + 1] - 1;

      if (isFirstLastRowQuery(pQuery)) {
        dTrace("QInfo:%p last_row query on vid:%d, numOfGroups:%d, current group:%d", pQInfo, pOneMeter->vnode,
               pSids->numOfSubSet, pSupporter->subgroupIdx);

        TSKEY key = -1;
        int32_t index = -1;


        pSupporter->meterIdx = start;

        for (int32_t k = start; k <= end; ++k, pSupporter->meterIdx++) {
          if (isQueryKilled(pQuery)) {
            setQueryStatus(pQuery, QUERY_NO_DATA_TO_CHECK);
            return;
          }


          SMeterObj *pMeterObj = getMeterObj(pSupporter->pMeterObj, pMeterSidExtInfo[k]->sid);
          if (pMeterObj != ((void*)0)) {
            if (key < pMeterObj->lastKey) {
              key = pMeterObj->lastKey;
              index = k;
            }
          }
        }

        pQuery->skey = key;
        pQuery->ekey = key;
        pSupporter->rawSKey = key;
        pSupporter->rawEKey = key;

        int64_t num = doCheckMetersInGroup(pQInfo, index, start);
        assert(num >= 0);
      } else {
        dTrace("QInfo:%p interp query on vid:%d, numOfGroups:%d, current group:%d", pQInfo, pOneMeter->vnode,
               pSids->numOfSubSet, pSupporter->subgroupIdx);

        for (int32_t k = start; k <= end; ++k) {
          if (isQueryKilled(pQuery)) {
            setQueryStatus(pQuery, QUERY_NO_DATA_TO_CHECK);
            return;
          }

          pQuery->skey = pSupporter->rawSKey;
          pQuery->ekey = pSupporter->rawEKey;

          int64_t num = doCheckMetersInGroup(pQInfo, k, start);
          if (num == 1) {
            break;
          }
        }
      }

      pSupporter->subgroupIdx++;


      if (pQuery->pointsRead >= pQuery->pointsToRead) {
        break;
      }
    }
  } else {

    assert(pSupporter->meterIdx >= 0);





    if (pSupporter->subgroupIdx > 0) {
      copyFromGroupBuf(pQInfo, pSupporter->pResult);
      pQInfo->pointsRead += pQuery->pointsRead;

      if (pQuery->pointsRead > 0) {
        return;
      }
    }

    if (pSupporter->meterIdx >= pSids->numOfSids) {
      return;
    }

    for (int32_t i = 0; i < pRuntimeEnv->usedIndex; ++i) {
      SOutputRes *pOneRes = &pRuntimeEnv->pResult[i];
      clearGroupResultBuf(pOneRes, pQuery->numOfOutputCols);
    }

    pRuntimeEnv->usedIndex = 0;
    taosCleanUpIntHash(pRuntimeEnv->hashList);

    int32_t primeHashSlot = 10039;
    pRuntimeEnv->hashList = taosInitIntHash(primeHashSlot, POINTER_BYTES, taosHashInt);

    while (pSupporter->meterIdx < pSupporter->numOfMeters) {
      int32_t k = pSupporter->meterIdx;

      if (isQueryKilled(pQuery)) {
        setQueryStatus(pQuery, QUERY_NO_DATA_TO_CHECK);
        return;
      }

      bool dataInDisk = 1;
      bool dataInCache = 1;
      if (!multimeterMultioutputHelper(pQInfo, &dataInDisk, &dataInCache, k, 0)) {
        pQuery->skey = pSupporter->rawSKey;
        pQuery->ekey = pSupporter->rawEKey;

        pSupporter->meterIdx++;
        continue;
      }


      for (int32_t i = 0; i < pRuntimeEnv->numOfFiles; ++i) {
        resetMMapWindow(&pRuntimeEnv->pHeaderFiles[i]);
      }


      SPointInterpoSupporter pointInterpSupporter = {0};
      if (normalizedFirstQueryRange(dataInDisk, dataInCache, pSupporter, &pointInterpSupporter) == 0) {
        pQuery->skey = pSupporter->rawSKey;
        pQuery->ekey = pSupporter->rawEKey;

        pSupporter->meterIdx++;
        continue;
      }


      if (pQuery->numOfFilterCols == 0 && pQuery->limit.offset > 0) {
        forwardQueryStartPosition(pRuntimeEnv);

        if (Q_STATUS_EQUAL(pQuery->over, QUERY_NO_DATA_TO_CHECK | QUERY_COMPLETED)) {
          pQuery->skey = pSupporter->rawSKey;
          pQuery->ekey = pSupporter->rawEKey;

          pSupporter->meterIdx++;
          continue;
        }
      }

      vnodeUpdateQueryColumnIndex(pQuery, pRuntimeEnv->pMeterObj);
      vnodeUpdateFilterColumnIndex(pQuery);

      vnodeScanAllData(pRuntimeEnv);

      pQuery->pointsRead = getNumOfResult(pRuntimeEnv);
      doSkipResults(pRuntimeEnv);


      if (doRevisedResultsByLimit(pQInfo)) {
        pSupporter->meterIdx = pSupporter->pSidSet->numOfSids;
        break;
      }

      if (Q_STATUS_EQUAL(pQuery->over, QUERY_NO_DATA_TO_CHECK | QUERY_COMPLETED)) {






        pQuery->skey = pSupporter->rawSKey;
        pQuery->ekey = pSupporter->rawEKey;
        pSupporter->meterIdx++;


        if (Q_STATUS_EQUAL(pQuery->over, QUERY_RESBUF_FULL) ||
            isGroupbyEachTable(pQuery->pGroupbyExpr, pSupporter->pSidSet)) {
          break;
        }

      } else {

        pQuery->skey = pQuery->lastKey;


        if (pQuery->pointsRead == 0) {
          assert(!Q_STATUS_EQUAL(pQuery->over, QUERY_RESBUF_FULL));
          continue;
        } else {

          assert(Q_STATUS_EQUAL(pQuery->over, QUERY_RESBUF_FULL));
          break;
        }
      }
    }
  }

  if (!isGroupbyNormalCol(pQuery->pGroupbyExpr) && !isFirstLastRowQuery(pQuery)) {
    doFinalizeResult(pRuntimeEnv);
  }

  if (pRuntimeEnv->pTSBuf != ((void*)0)) {
    pRuntimeEnv->cur = pRuntimeEnv->pTSBuf->cur;
  }

  if (isGroupbyNormalCol(pQuery->pGroupbyExpr)) {
    for (int32_t i = 0; i < pRuntimeEnv->usedIndex; ++i) {
      SOutputRes *buf = &pRuntimeEnv->pResult[i];
      for (int32_t j = 0; j < pQuery->numOfOutputCols; ++j) {
        buf->numOfRows = MAX(buf->numOfRows, buf->resultInfo[j].numOfRes);
      }
    }

    pQInfo->pMeterQuerySupporter->subgroupIdx = 0;
    pQuery->pointsRead = 0;
    copyFromGroupBuf(pQInfo, pRuntimeEnv->pResult);
  }

  pQInfo->pointsRead += pQuery->pointsRead;
  pQuery->pointsOffset = pQuery->pointsToRead;

  moveDescOrderResultsToFront(pRuntimeEnv);

  dTrace(
      "QInfo %p vid:%d, numOfMeters:%d, index:%d, numOfGroups:%d, %d points returned, totalRead:%d totalReturn:%d,"
      "next skey:%lld, offset:%lld",
      pQInfo, pOneMeter->vnode, pSids->numOfSids, pSupporter->meterIdx, pSids->numOfSubSet, pQuery->pointsRead,
      pQInfo->pointsRead, pQInfo->pointsReturned, pQuery->skey, pQuery->limit.offset);
}
