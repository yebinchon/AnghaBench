
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_12__ {scalar_t__ numOfElems; } ;
typedef TYPE_3__ tFilePage ;
typedef size_t int32_t ;
struct TYPE_13__ {TYPE_2__* pCtx; } ;
struct TYPE_15__ {scalar_t__ offset; scalar_t__ numOfGroupResultPages; scalar_t__ subgroupIdx; char* meterOutputMMapBuf; int lastPageId; int groupResultSize; TYPE_4__ runtimeEnv; TYPE_1__* pSidSet; int meterIdx; } ;
struct TYPE_14__ {scalar_t__ pointsToRead; size_t numOfOutputCols; int pointsRead; int * sdata; } ;
struct TYPE_11__ {scalar_t__ outputBytes; } ;
struct TYPE_10__ {scalar_t__ numOfSubSet; int numOfSids; } ;
typedef TYPE_4__ SQueryRuntimeEnv ;
typedef TYPE_5__ SQuery ;
typedef TYPE_6__ SMeterQuerySupportObj ;


 int DEFAULT_INTERN_BUF_SIZE ;
 int assert (int) ;
 int memcpy (int ,char*,scalar_t__) ;
 int mergeMetersResultToOneGroups (TYPE_6__*) ;

void copyResToQueryResultBuf(SMeterQuerySupportObj *pSupporter, SQuery *pQuery) {
  if (pSupporter->offset == pSupporter->numOfGroupResultPages) {
    pSupporter->numOfGroupResultPages = 0;


    mergeMetersResultToOneGroups(pSupporter);


    if (pSupporter->numOfGroupResultPages == 0 && pSupporter->subgroupIdx == pSupporter->pSidSet->numOfSubSet) {
      pSupporter->meterIdx = pSupporter->pSidSet->numOfSids;
      return;
    }
  }

  SQueryRuntimeEnv *pRuntimeEnv = &pSupporter->runtimeEnv;
  char * pStart = pSupporter->meterOutputMMapBuf + DEFAULT_INTERN_BUF_SIZE * (pSupporter->lastPageId + 1) +
                 pSupporter->groupResultSize * pSupporter->offset;

  uint64_t numOfElem = ((tFilePage *)pStart)->numOfElems;
  assert(numOfElem <= pQuery->pointsToRead);

  for (int32_t i = 0; i < pQuery->numOfOutputCols; ++i) {
    memcpy(pQuery->sdata[i], pStart, pRuntimeEnv->pCtx[i].outputBytes * numOfElem + sizeof(tFilePage));
    pStart += pRuntimeEnv->pCtx[i].outputBytes * pQuery->pointsToRead + sizeof(tFilePage);
  }

  pQuery->pointsRead += numOfElem;
  pSupporter->offset += 1;
}
