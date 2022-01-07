
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef int __block_search_fn_t ;
struct TYPE_21__ {scalar_t__ numOfBlocks; int * cacheBlocks; } ;
struct TYPE_20__ {size_t searchAlgorithm; scalar_t__ pCache; } ;
struct TYPE_17__ {TYPE_4__* pMeterObj; TYPE_2__* pQuery; } ;
struct TYPE_19__ {TYPE_1__ runtimeEnv; } ;
struct TYPE_18__ {scalar_t__ skey; int fileId; scalar_t__ ekey; int pos; int slot; } ;
typedef scalar_t__ TSKEY ;
typedef TYPE_1__ SQueryRuntimeEnv ;
typedef TYPE_2__ SQuery ;
typedef int SPointInterpoSupporter ;
typedef TYPE_3__ SMeterQuerySupportObj ;
typedef TYPE_4__ SMeterObj ;
typedef TYPE_5__ SCacheInfo ;


 scalar_t__ QUERY_IS_ASC_QUERY (TYPE_2__*) ;
 int QUERY_RANGE_GREATER_EQUAL ;
 int QUERY_RANGE_LESS_EQUAL ;
 int assert (int) ;
 int doGetQueryPos (scalar_t__,TYPE_3__*,int *) ;
 int getAlignedIntervalQueryRange (TYPE_2__*,scalar_t__,scalar_t__,scalar_t__) ;
 int getNeighborPoints (TYPE_3__*,TYPE_4__*,int *) ;
 scalar_t__ getQualifiedDataBlock (TYPE_4__*,TYPE_1__*,int ,int ) ;
 scalar_t__ getQueryStartPositionInCache (TYPE_1__*,int *,int *,int) ;
 scalar_t__ getTimestampInDiskBlock (TYPE_1__*,int ) ;
 scalar_t__ isFirstLastRowQuery (TYPE_2__*) ;
 int * vnodeSearchKeyFunc ;

bool normalizedFirstQueryRange(bool dataInDisk, bool dataInCache, SMeterQuerySupportObj *pSupporter,
                               SPointInterpoSupporter *pPointInterpSupporter) {
  SQueryRuntimeEnv * pRuntimeEnv = &pSupporter->runtimeEnv;
  SQuery * pQuery = pRuntimeEnv->pQuery;
  SMeterObj * pMeterObj = pRuntimeEnv->pMeterObj;
  __block_search_fn_t searchFn = vnodeSearchKeyFunc[pMeterObj->searchAlgorithm];

  if (QUERY_IS_ASC_QUERY(pQuery)) {

    if (dataInDisk && getQualifiedDataBlock(pMeterObj, pRuntimeEnv, QUERY_RANGE_GREATER_EQUAL, searchFn)) {
      TSKEY key = getTimestampInDiskBlock(pRuntimeEnv, pQuery->pos);
      assert(key >= pQuery->skey);

      return doGetQueryPos(key, pSupporter, pPointInterpSupporter);
    }


    pQuery->fileId = -1;
    SCacheInfo *pCacheInfo = (SCacheInfo *)pMeterObj->pCache;


    if (pCacheInfo == ((void*)0) || pCacheInfo->cacheBlocks == ((void*)0) || pCacheInfo->numOfBlocks == 0 || !dataInCache) {
      return 0;
    }

    TSKEY nextKey = getQueryStartPositionInCache(pRuntimeEnv, &pQuery->slot, &pQuery->pos, 0);
    return doGetQueryPos(nextKey, pSupporter, pPointInterpSupporter);

  } else {
    if (dataInCache) {
      TSKEY nextKey = getQueryStartPositionInCache(pRuntimeEnv, &pQuery->slot, &pQuery->pos, 0);
      assert(nextKey == -1 || nextKey <= pQuery->skey);


      if (nextKey != -1) {
        if (nextKey >= pQuery->ekey) {
          if (isFirstLastRowQuery(pQuery)) {
            return getNeighborPoints(pSupporter, pMeterObj, pPointInterpSupporter);
          } else {
            getAlignedIntervalQueryRange(pQuery, nextKey, pQuery->skey, pQuery->ekey);
            return 1;
          }
        } else {





          return 0;
        }
      } else {
      }
    }

    if (dataInDisk && getQualifiedDataBlock(pMeterObj, pRuntimeEnv, QUERY_RANGE_LESS_EQUAL, searchFn)) {
      TSKEY key = getTimestampInDiskBlock(pRuntimeEnv, pQuery->pos);
      assert(key <= pQuery->skey);


      if (key >= pQuery->ekey) {
        if (isFirstLastRowQuery(pQuery)) {
          return getNeighborPoints(pSupporter, pMeterObj, pPointInterpSupporter);
        } else {
          getAlignedIntervalQueryRange(pQuery, key, pQuery->skey, pQuery->ekey);
          return 1;
        }
      } else {

        if (isFirstLastRowQuery(pQuery)) {
          return getNeighborPoints(pSupporter, pMeterObj, pPointInterpSupporter);
        }
      }
    }
  }

  return 0;
}
