
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef int int64_t ;
typedef scalar_t__ int32_t ;
struct TYPE_22__ {scalar_t__ numOfBlocks; int * cacheBlocks; } ;
struct TYPE_21__ {scalar_t__ pCache; } ;
struct TYPE_20__ {int fileId; int pos; int slot; } ;
struct TYPE_17__ {int order; } ;
struct TYPE_19__ {int fileId; int pos; TYPE_1__ order; int slot; } ;
struct TYPE_18__ {int blockStatus; TYPE_5__* pMeterObj; TYPE_3__* pQuery; } ;
typedef int TSKEY ;
typedef TYPE_2__ SQueryRuntimeEnv ;
typedef TYPE_3__ SQuery ;
typedef TYPE_4__ SPositionInfo ;
typedef TYPE_5__ SMeterObj ;
typedef TYPE_6__ SCacheInfo ;
typedef int SCacheBlock ;


 int GET_QINFO_ADDR (TYPE_3__*) ;
 int QUERY_NO_DATA_TO_CHECK ;
 int SET_CACHE_BLOCK_FLAG (int ) ;
 int assert (int) ;
 int dError (char*,int ,int) ;
 int * getCacheDataBlock (TYPE_5__*,TYPE_3__*,int ) ;
 int getTimestampInCacheBlock (int *,int ) ;
 int getTimestampInDiskBlock (TYPE_2__*,int ) ;
 int setQueryStatus (TYPE_3__*,int ) ;
 scalar_t__ vnodeGetCompBlockInfo (TYPE_5__*,TYPE_2__*,scalar_t__) ;
 scalar_t__ vnodeGetVnodeHeaderFileIdx (int*,TYPE_2__*,int ) ;

int64_t loadRequiredBlockIntoMem(SQueryRuntimeEnv *pRuntimeEnv, SPositionInfo *position) {
  TSKEY nextTimestamp = -1;

  SQuery * pQuery = pRuntimeEnv->pQuery;
  SMeterObj *pMeterObj = pRuntimeEnv->pMeterObj;

  pQuery->fileId = position->fileId;
  pQuery->slot = position->slot;
  pQuery->pos = position->pos;

  if (position->fileId == -1) {
    SCacheInfo *pCacheInfo = (SCacheInfo *)pMeterObj->pCache;
    if (pCacheInfo == ((void*)0) || pCacheInfo->numOfBlocks == 0 || pCacheInfo->cacheBlocks == ((void*)0)) {
      setQueryStatus(pQuery, QUERY_NO_DATA_TO_CHECK);
      return -1;
    }

    SCacheBlock *pBlock = getCacheDataBlock(pMeterObj, pQuery, pQuery->slot);
    if (pBlock != ((void*)0)) {
      nextTimestamp = getTimestampInCacheBlock(pBlock, position->pos);
    } else {

    }

    SET_CACHE_BLOCK_FLAG(pRuntimeEnv->blockStatus);
  } else {





    int32_t fileIdx = vnodeGetVnodeHeaderFileIdx(&pQuery->fileId, pRuntimeEnv, pQuery->order.order);
    if (fileIdx < 0) {
      dError("QInfo:%p failed to get data file:%d", GET_QINFO_ADDR(pQuery), pQuery->fileId);

      position->fileId = -1;
      return -1;
    }





    int32_t numOfBlocks = vnodeGetCompBlockInfo(pMeterObj, pRuntimeEnv, fileIdx);
    assert(numOfBlocks > 0);

    nextTimestamp = getTimestampInDiskBlock(pRuntimeEnv, pQuery->pos);
  }

  return nextTimestamp;
}
