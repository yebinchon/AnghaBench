
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_16__ {scalar_t__ offset; } ;
struct TYPE_19__ {scalar_t__ slot; scalar_t__ pos; scalar_t__ pointsRead; scalar_t__ pointsToRead; int pGroupbyExpr; TYPE_1__ limit; int over; } ;
struct TYPE_20__ {scalar_t__ pointsRead; TYPE_2__* pMeterQuerySupporter; TYPE_4__ query; } ;
struct TYPE_18__ {int pResult; } ;
struct TYPE_17__ {scalar_t__ subgroupIdx; TYPE_3__ runtimeEnv; } ;
typedef TYPE_3__ SQueryRuntimeEnv ;
typedef TYPE_4__ SQuery ;
typedef TYPE_5__ SQInfo ;


 int QUERY_COMPLETED ;
 int QUERY_NO_DATA_TO_CHECK ;
 scalar_t__ Q_STATUS_EQUAL (int ,int) ;
 int assert (int) ;
 int copyFromGroupBuf (TYPE_5__*,int ) ;
 int doFinalizeResult (TYPE_3__*) ;
 int doRevisedResultsByLimit (TYPE_5__*) ;
 int doSkipResults (TYPE_3__*) ;
 scalar_t__ getNumOfResult (TYPE_3__*) ;
 scalar_t__ isGroupbyNormalCol (int ) ;
 scalar_t__ isQueryKilled (TYPE_4__*) ;
 int isTopBottomQuery (TYPE_4__*) ;
 int moveDescOrderResultsToFront (TYPE_3__*) ;
 int vnodeScanAllData (TYPE_3__*) ;

__attribute__((used)) static void vnodeSingleMeterFixedOutputProcessor(SQInfo *pQInfo) {
  SQuery * pQuery = &pQInfo->query;
  SQueryRuntimeEnv *pRuntimeEnv = &pQInfo->pMeterQuerySupporter->runtimeEnv;

  assert(pQuery->slot >= 0 && pQuery->pos >= 0);

  vnodeScanAllData(pRuntimeEnv);
  doFinalizeResult(pRuntimeEnv);

  if (isQueryKilled(pQuery)) {
    return;
  }


  pQuery->pointsRead = getNumOfResult(pRuntimeEnv);
  assert(pQuery->pointsRead <= pQuery->pointsToRead &&
         Q_STATUS_EQUAL(pQuery->over, QUERY_COMPLETED | QUERY_NO_DATA_TO_CHECK));


  if (pQuery->limit.offset > 0) {
    assert(isTopBottomQuery(pQuery));
  }

  if (isGroupbyNormalCol(pQuery->pGroupbyExpr)) {
    pQInfo->pMeterQuerySupporter->subgroupIdx = 0;
    pQuery->pointsRead = 0;
    copyFromGroupBuf(pQInfo, pRuntimeEnv->pResult);
  }

  doSkipResults(pRuntimeEnv);
  doRevisedResultsByLimit(pQInfo);
  moveDescOrderResultsToFront(pRuntimeEnv);

  pQInfo->pointsRead = pQuery->pointsRead;
}
