
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;
typedef struct TYPE_20__ TYPE_13__ ;


typedef scalar_t__ int64_t ;
struct TYPE_25__ {scalar_t__ subgroupIdx; int numOfMeters; scalar_t__ numOfGroupResultPages; int pResult; TYPE_1__* pSidSet; int rawEKey; int rawSKey; int * pMeterDataInfo; } ;
struct TYPE_22__ {int order; } ;
struct TYPE_23__ {scalar_t__ nAggTimeInterval; scalar_t__ pointsRead; TYPE_13__** sdata; TYPE_2__ order; } ;
struct TYPE_24__ {int pointsReturned; int pointsRead; TYPE_3__ query; TYPE_5__* pMeterQuerySupporter; } ;
struct TYPE_21__ {int numOfSubSet; } ;
struct TYPE_20__ {int len; } ;
typedef TYPE_3__ SQuery ;
typedef TYPE_4__ SQInfo ;
typedef TYPE_5__ SMeterQuerySupportObj ;
typedef int SMeterDataInfo ;


 int assert (int) ;
 scalar_t__ calloc (int,int) ;
 int copyFromGroupBuf (TYPE_4__*,int ) ;
 int copyResToQueryResultBuf (TYPE_5__*,TYPE_3__*) ;
 int dError (char*,TYPE_4__*,int ) ;
 int dTrace (char*,TYPE_4__*,...) ;
 int displayInterResult (TYPE_13__**,TYPE_3__*,int ) ;
 int doCloseAllOpenedResults (TYPE_5__*) ;
 int doMultiMeterSupplementaryScan (TYPE_4__*) ;
 int doOrderedScan (TYPE_4__*) ;
 int errno ;
 scalar_t__ isQueryKilled (TYPE_3__*) ;
 int mergeMetersResultToOneGroups (TYPE_5__*) ;
 int strerror (int ) ;
 scalar_t__ taosGetTimestampMs () ;
 int vnodePrintQueryStatistics (TYPE_5__*) ;

__attribute__((used)) static void vnodeMultiMeterQueryProcessor(SQInfo *pQInfo) {
  SMeterQuerySupportObj *pSupporter = pQInfo->pMeterQuerySupporter;
  SQuery * pQuery = &pQInfo->query;

  if (pSupporter->subgroupIdx > 0) {




    if (pQuery->nAggTimeInterval > 0) {
      copyResToQueryResultBuf(pSupporter, pQuery);




    } else {
      copyFromGroupBuf(pQInfo, pSupporter->pResult);
    }

    pQInfo->pointsRead += pQuery->pointsRead;

    if (pQuery->pointsRead == 0) {
      vnodePrintQueryStatistics(pSupporter);
    }

    dTrace("QInfo:%p points returned:%d, totalRead:%d totalReturn:%d", pQInfo, pQuery->pointsRead, pQInfo->pointsRead,
           pQInfo->pointsReturned);
    return;
  }

  pSupporter->pMeterDataInfo = (SMeterDataInfo *)calloc(1, sizeof(SMeterDataInfo) * pSupporter->numOfMeters);
  if (pSupporter->pMeterDataInfo == ((void*)0)) {
    dError("QInfo:%p failed to allocate memory, %s", pQInfo, strerror(errno));
    return;
  }

  dTrace("QInfo:%p query start, qrange:%lld-%lld, order:%d, group:%d", pQInfo, pSupporter->rawSKey, pSupporter->rawEKey,
         pQuery->order.order, pSupporter->pSidSet->numOfSubSet);

  dTrace("QInfo:%p main query scan start", pQInfo);
  int64_t st = taosGetTimestampMs();
  doOrderedScan(pQInfo);
  int64_t et = taosGetTimestampMs();
  dTrace("QInfo:%p main scan completed, elapsed time: %lldms, supplementary scan start, order:%d", pQInfo, et - st,
         pQuery->order.order ^ 1);

  doCloseAllOpenedResults(pSupporter);
  doMultiMeterSupplementaryScan(pQInfo);

  if (isQueryKilled(pQuery)) {
    dTrace("QInfo:%p query killed, abort", pQInfo);
    return;
  }

  if (pQuery->nAggTimeInterval > 0) {
    assert(pSupporter->subgroupIdx == 0 && pSupporter->numOfGroupResultPages == 0);

    mergeMetersResultToOneGroups(pSupporter);
    copyResToQueryResultBuf(pSupporter, pQuery);




  } else {
    copyFromGroupBuf(pQInfo, pSupporter->pResult);
  }


  pQInfo->pointsRead += pQuery->pointsRead;
  dTrace("QInfo:%p points returned:%d, totalRead:%d totalReturn:%d", pQInfo, pQuery->pointsRead, pQInfo->pointsRead,
         pQInfo->pointsReturned);
}
