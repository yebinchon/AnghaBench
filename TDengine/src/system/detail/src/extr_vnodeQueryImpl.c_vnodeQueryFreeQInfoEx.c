
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef size_t int32_t ;
struct TYPE_12__ {size_t numOfSubSet; } ;
struct TYPE_11__ {size_t numOfMeters; struct TYPE_11__* pResult; struct TYPE_11__* pMeterDataInfo; int pBlock; int pMeterQInfo; TYPE_6__* pSidSet; int extBufFile; int meterOutputFd; int bufSize; int * meterOutputMMapBuf; int * pMeterObj; struct TYPE_11__* pMeterSidExtInfo; int runtimeEnv; } ;
struct TYPE_9__ {int numOfOutputCols; int pGroupbyExpr; } ;
struct TYPE_10__ {TYPE_3__* pMeterQuerySupporter; TYPE_1__ query; } ;
typedef TYPE_1__ SQuery ;
typedef TYPE_2__ SQInfo ;
typedef TYPE_3__ SMeterQuerySupportObj ;


 scalar_t__ VALIDFD (int ) ;
 int assert (int ) ;
 int dTrace (char*,TYPE_2__*,int ) ;
 int destroyGroupResultBuf (TYPE_3__*,int ) ;
 int destroyMeterQueryInfo (int ,int ) ;
 int free (int ) ;
 scalar_t__ isGroupbyNormalCol (int ) ;
 int munmap (int *,int ) ;
 int tSidSetDestroy (TYPE_6__**) ;
 int taosCleanUpIntHash (int *) ;
 int tclose (int ) ;
 int teardownQueryRuntimeEnv (int *) ;
 int tfree (TYPE_3__*) ;
 int unlink (int ) ;

void vnodeQueryFreeQInfoEx(SQInfo *pQInfo) {
  if (pQInfo == ((void*)0) || pQInfo->pMeterQuerySupporter == ((void*)0)) {
    return;
  }

  SQuery * pQuery = &pQInfo->query;
  SMeterQuerySupportObj *pSupporter = pQInfo->pMeterQuerySupporter;

  teardownQueryRuntimeEnv(&pSupporter->runtimeEnv);
  tfree(pSupporter->pMeterSidExtInfo);

  if (pSupporter->pMeterObj != ((void*)0)) {
    taosCleanUpIntHash(pSupporter->pMeterObj);
    pSupporter->pMeterObj = ((void*)0);
  }

  if (pSupporter->pSidSet != ((void*)0) || isGroupbyNormalCol(pQInfo->query.pGroupbyExpr)) {
    int32_t size = 0;
    if (isGroupbyNormalCol(pQInfo->query.pGroupbyExpr)) {
      size = 10000;
    } else if (pSupporter->pSidSet != ((void*)0)) {
      size = pSupporter->pSidSet->numOfSubSet;
    }

    for (int32_t i = 0; i < size; ++i) {
      destroyGroupResultBuf(&pSupporter->pResult[i], pQInfo->query.numOfOutputCols);
    }
  }

  if (VALIDFD(pSupporter->meterOutputFd)) {
    assert(pSupporter->meterOutputMMapBuf != ((void*)0));
    dTrace("QInfo:%p disk-based output buffer during query:%lld bytes", pQInfo, pSupporter->bufSize);
    munmap(pSupporter->meterOutputMMapBuf, pSupporter->bufSize);
    tclose(pSupporter->meterOutputFd);

    unlink(pSupporter->extBufFile);
  }

  tSidSetDestroy(&pSupporter->pSidSet);

  if (pSupporter->pMeterDataInfo != ((void*)0)) {
    for (int32_t j = 0; j < pSupporter->numOfMeters; ++j) {
      destroyMeterQueryInfo(pSupporter->pMeterDataInfo[j].pMeterQInfo, pQuery->numOfOutputCols);
      free(pSupporter->pMeterDataInfo[j].pBlock);
    }
  }

  tfree(pSupporter->pMeterDataInfo);

  tfree(pSupporter->pResult);
  tfree(pQInfo->pMeterQuerySupporter);
}
