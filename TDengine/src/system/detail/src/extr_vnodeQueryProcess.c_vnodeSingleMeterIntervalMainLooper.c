
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_14__ {scalar_t__ offset; } ;
struct TYPE_16__ {scalar_t__ skey; scalar_t__ ekey; scalar_t__ numOfFilterCols; scalar_t__ interpoType; int pointsRead; int pointsToRead; int over; TYPE_1__ limit; } ;
struct TYPE_15__ {int * pTSBuf; TYPE_3__* pQuery; } ;
typedef TYPE_2__ SQueryRuntimeEnv ;
typedef TYPE_3__ SQuery ;
typedef int SMeterQuerySupportObj ;


 int QUERY_COMPLETED ;
 scalar_t__ QUERY_IS_ASC_QUERY (TYPE_3__*) ;
 int QUERY_NOT_COMPLETED ;
 int QUERY_NO_DATA_TO_CHECK ;
 int QUERY_RESBUF_FULL ;
 scalar_t__ Q_STATUS_EQUAL (int ,int ) ;
 scalar_t__ TSDB_INTERPO_NONE ;
 int assert (int) ;
 int doFinalizeResult (TYPE_2__*) ;
 int forwardCtxOutputBuf (TYPE_2__*,int) ;
 int forwardIntervalQueryRange (int *,TYPE_2__*) ;
 int getNumOfResult (TYPE_2__*) ;
 int initCtxOutputBuf (TYPE_2__*) ;
 scalar_t__ isQueryKilled (TYPE_3__*) ;
 int setQueryStatus (TYPE_3__*,int ) ;
 int vnodeScanAllData (TYPE_2__*) ;

__attribute__((used)) static void vnodeSingleMeterIntervalMainLooper(SMeterQuerySupportObj *pSupporter, SQueryRuntimeEnv *pRuntimeEnv) {
  SQuery *pQuery = pRuntimeEnv->pQuery;

  while (1) {
    assert((pQuery->skey <= pQuery->ekey && QUERY_IS_ASC_QUERY(pQuery)) ||
           (pQuery->skey >= pQuery->ekey && !QUERY_IS_ASC_QUERY(pQuery)));

    initCtxOutputBuf(pRuntimeEnv);

    vnodeScanAllData(pRuntimeEnv);
    if (isQueryKilled(pQuery)) {
      return;
    }

    assert(!Q_STATUS_EQUAL(pQuery->over, QUERY_NOT_COMPLETED));


    pQuery->over &= (~QUERY_COMPLETED);
    doFinalizeResult(pRuntimeEnv);

    int64_t maxOutput = getNumOfResult(pRuntimeEnv);


    if ((pQuery->numOfFilterCols > 0 || pRuntimeEnv->pTSBuf != ((void*)0)) && pQuery->limit.offset > 0 &&
        pQuery->interpoType == TSDB_INTERPO_NONE) {

      if (maxOutput > 0) {
        pQuery->limit.offset--;
      }
    } else {
      pQuery->pointsRead += maxOutput;
      forwardCtxOutputBuf(pRuntimeEnv, maxOutput);
    }

    if (Q_STATUS_EQUAL(pQuery->over, QUERY_NO_DATA_TO_CHECK)) {
      break;
    }

    forwardIntervalQueryRange(pSupporter, pRuntimeEnv);
    if (Q_STATUS_EQUAL(pQuery->over, QUERY_COMPLETED)) {
      break;
    }






    if ((pQuery->pointsRead % pQuery->pointsToRead == 0 && pQuery->pointsRead != 0) ||
        ((pQuery->pointsRead + maxOutput) > pQuery->pointsToRead)) {
      setQueryStatus(pQuery, QUERY_RESBUF_FULL);
      break;
    }
  }
}
