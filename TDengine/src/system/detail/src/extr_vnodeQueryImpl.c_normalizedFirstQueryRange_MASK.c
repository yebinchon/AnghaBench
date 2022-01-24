#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  __block_search_fn_t ;
struct TYPE_21__ {scalar_t__ numOfBlocks; int /*<<< orphan*/ * cacheBlocks; } ;
struct TYPE_20__ {size_t searchAlgorithm; scalar_t__ pCache; } ;
struct TYPE_17__ {TYPE_4__* pMeterObj; TYPE_2__* pQuery; } ;
struct TYPE_19__ {TYPE_1__ runtimeEnv; } ;
struct TYPE_18__ {scalar_t__ skey; int fileId; scalar_t__ ekey; int /*<<< orphan*/  pos; int /*<<< orphan*/  slot; } ;
typedef  scalar_t__ TSKEY ;
typedef  TYPE_1__ SQueryRuntimeEnv ;
typedef  TYPE_2__ SQuery ;
typedef  int /*<<< orphan*/  SPointInterpoSupporter ;
typedef  TYPE_3__ SMeterQuerySupportObj ;
typedef  TYPE_4__ SMeterObj ;
typedef  TYPE_5__ SCacheInfo ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  QUERY_RANGE_GREATER_EQUAL ; 
 int /*<<< orphan*/  QUERY_RANGE_LESS_EQUAL ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (scalar_t__,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,scalar_t__,scalar_t__,scalar_t__) ; 
 int FUNC4 (TYPE_3__*,TYPE_4__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (TYPE_4__*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/ * vnodeSearchKeyFunc ; 

bool FUNC9(bool dataInDisk, bool dataInCache, SMeterQuerySupportObj *pSupporter,
                               SPointInterpoSupporter *pPointInterpSupporter) {
  SQueryRuntimeEnv *  pRuntimeEnv = &pSupporter->runtimeEnv;
  SQuery *            pQuery = pRuntimeEnv->pQuery;
  SMeterObj *         pMeterObj = pRuntimeEnv->pMeterObj;
  __block_search_fn_t searchFn = vnodeSearchKeyFunc[pMeterObj->searchAlgorithm];

  if (FUNC0(pQuery)) {
    // todo: the action return as the getQueryStartPositionInCache function
    if (dataInDisk && FUNC5(pMeterObj, pRuntimeEnv, QUERY_RANGE_GREATER_EQUAL, searchFn)) {
      TSKEY key = FUNC7(pRuntimeEnv, pQuery->pos);
      FUNC1(key >= pQuery->skey);

      return FUNC2(key, pSupporter, pPointInterpSupporter);
    }

    // set no data in file
    pQuery->fileId = -1;
    SCacheInfo *pCacheInfo = (SCacheInfo *)pMeterObj->pCache;

    /* if it is a interpolation query, the any points in cache that is greater than the query range is required */
    if (pCacheInfo == NULL || pCacheInfo->cacheBlocks == NULL || pCacheInfo->numOfBlocks == 0 || !dataInCache) {
      return false;
    }

    TSKEY nextKey = FUNC6(pRuntimeEnv, &pQuery->slot, &pQuery->pos, false);
    return FUNC2(nextKey, pSupporter, pPointInterpSupporter);

  } else {              // descending order
    if (dataInCache) {  // todo handle error
      TSKEY nextKey = FUNC6(pRuntimeEnv, &pQuery->slot, &pQuery->pos, false);
      FUNC1(nextKey == -1 || nextKey <= pQuery->skey);

      // valid data in cache
      if (nextKey != -1) {
        if (nextKey >= pQuery->ekey) {
          if (FUNC8(pQuery)) {
            return FUNC4(pSupporter, pMeterObj, pPointInterpSupporter);
          } else {
            FUNC3(pQuery, nextKey, pQuery->skey, pQuery->ekey);
            return true;
          }
        } else {
          /*
           * nextKey < pQuery->ekey && nextKey < pQuery->lastKey, query range is
           * larger than all data, abort NOTE: Interp query does not reach here, since for all interp query,
           * the query order is ascending order.
           */
          return false;
        }
      } else {  // all data in cache are greater than pQuery->lastKey, try file
      }
    }

    if (dataInDisk && FUNC5(pMeterObj, pRuntimeEnv, QUERY_RANGE_LESS_EQUAL, searchFn)) {
      TSKEY key = FUNC7(pRuntimeEnv, pQuery->pos);
      FUNC1(key <= pQuery->skey);

      /* key in query range. If not, no qualified in disk file */
      if (key >= pQuery->ekey) {
        if (FUNC8(pQuery)) { /* no qualified data in this query range */
          return FUNC4(pSupporter, pMeterObj, pPointInterpSupporter);
        } else {
          FUNC3(pQuery, key, pQuery->skey, pQuery->ekey);
          return true;
        }
      } else {  // Goes on in case of key in file less than pMeterObj->lastKey,
                // which is also the pQuery->skey
        if (FUNC8(pQuery)) {
          return FUNC4(pSupporter, pMeterObj, pPointInterpSupporter);
        }
      }
    }
  }

  return false;
}