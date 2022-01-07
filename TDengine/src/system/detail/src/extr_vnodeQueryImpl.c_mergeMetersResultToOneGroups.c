
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
typedef scalar_t__ int32_t ;
struct TYPE_8__ {int * pQuery; } ;
struct TYPE_9__ {size_t subgroupIdx; scalar_t__ numOfGroupResultPages; TYPE_1__* pSidSet; int pMeterDataInfo; TYPE_2__ runtimeEnv; } ;
struct TYPE_7__ {size_t numOfSubSet; scalar_t__* starterPos; } ;
typedef TYPE_2__ SQueryRuntimeEnv ;
typedef int SQuery ;
typedef TYPE_3__ SMeterQuerySupportObj ;


 int GET_QINFO_ADDR (int *) ;
 int assert (int) ;
 int dTrace (char*,int ,size_t,...) ;
 scalar_t__ doMergeMetersResultsToGroupRes (TYPE_3__*,int *,TYPE_2__*,int ,scalar_t__,scalar_t__) ;
 scalar_t__ taosGetTimestampMs () ;

int32_t mergeMetersResultToOneGroups(SMeterQuerySupportObj *pSupporter) {
  SQueryRuntimeEnv *pRuntimeEnv = &pSupporter->runtimeEnv;
  SQuery * pQuery = pRuntimeEnv->pQuery;

  int64_t st = taosGetTimestampMs();

  while (pSupporter->subgroupIdx < pSupporter->pSidSet->numOfSubSet) {
    int32_t start = pSupporter->pSidSet->starterPos[pSupporter->subgroupIdx];
    int32_t end = pSupporter->pSidSet->starterPos[pSupporter->subgroupIdx + 1];

    int32_t ret =
        doMergeMetersResultsToGroupRes(pSupporter, pQuery, pRuntimeEnv, pSupporter->pMeterDataInfo, start, end);
    pSupporter->subgroupIdx += 1;


    if (ret > 0) {
      break;
    }

    assert(pSupporter->numOfGroupResultPages == 0);
    dTrace("QInfo:%p no result in group %d, continue", GET_QINFO_ADDR(pQuery), pSupporter->subgroupIdx - 1);
  }

  dTrace("QInfo:%p merge res data into group, index:%d, total group:%d, elapsed time:%lldms", GET_QINFO_ADDR(pQuery),
         pSupporter->subgroupIdx - 1, pSupporter->pSidSet->numOfSubSet, taosGetTimestampMs() - st);

  return pSupporter->numOfGroupResultPages;
}
