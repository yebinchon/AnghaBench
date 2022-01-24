#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_7__ ;
typedef  struct TYPE_22__   TYPE_6__ ;
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ int32_t ;
typedef  scalar_t__ (* __block_search_fn_t ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ;
struct TYPE_23__ {scalar_t__ keyLast; scalar_t__ keyFirst; } ;
struct TYPE_22__ {int /*<<< orphan*/  numOfPoints; } ;
struct TYPE_21__ {int /*<<< orphan*/  data; } ;
struct TYPE_20__ {int /*<<< orphan*/  vnode; } ;
struct TYPE_17__ {int /*<<< orphan*/  order; } ;
struct TYPE_19__ {int slot; scalar_t__ lastKey; scalar_t__ fileId; scalar_t__ numOfBlocks; scalar_t__ pos; TYPE_1__ order; int /*<<< orphan*/ * pFields; TYPE_7__* pBlock; } ;
struct TYPE_18__ {int /*<<< orphan*/  blockStatus; TYPE_5__* primaryColBuffer; TYPE_3__* pQuery; } ;
typedef  scalar_t__ TSKEY ;
typedef  TYPE_2__ SQueryRuntimeEnv ;
typedef  TYPE_3__ SQuery ;
typedef  TYPE_4__ SMeterObj ;
typedef  TYPE_5__ SData ;
typedef  TYPE_6__ SCompBlock ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 scalar_t__ QUERY_ASC_FORWARD_STEP ; 
 scalar_t__ QUERY_DESC_FORWARD_STEP ; 
 scalar_t__ QUERY_RANGE_GREATER_EQUAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (TYPE_3__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__) ; 
 TYPE_6__* FUNC5 (TYPE_3__*,scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC7 (TYPE_2__*,TYPE_4__*,scalar_t__) ; 
 scalar_t__ FUNC8 (TYPE_7__*,int /*<<< orphan*/ *,TYPE_2__*,scalar_t__,int,int) ; 

__attribute__((used)) static bool FUNC9(SMeterObj *pMeterObj, SQueryRuntimeEnv *pRuntimeEnv, int32_t type,
                                  __block_search_fn_t searchFn) {
  int32_t blkIdx = -1;
  int32_t fid = -1;
  int32_t step = (type == QUERY_RANGE_GREATER_EQUAL) ? QUERY_ASC_FORWARD_STEP : QUERY_DESC_FORWARD_STEP;

  SQuery *pQuery = pRuntimeEnv->pQuery;
  pQuery->slot = -1;

  TSKEY key = pQuery->lastKey;

  SData *primaryColBuffer = pRuntimeEnv->primaryColBuffer;
  pQuery->fileId = FUNC6(pMeterObj->vnode, key) - step;

  while (1) {
    if ((fid = FUNC7(pRuntimeEnv, pMeterObj, step)) < 0) {
      break;
    }

    blkIdx = FUNC3(pQuery, key);

    if (type == QUERY_RANGE_GREATER_EQUAL) {
      if (key <= pQuery->pBlock[blkIdx].keyLast) {
        break;
      } else {
        blkIdx = -1;
      }
    } else {
      if (key >= pQuery->pBlock[blkIdx].keyFirst) {
        break;
      } else {
        blkIdx = -1;
      }
    }
  }

  /* failed to find qualified point in file, abort */
  if (blkIdx == -1) {
    return false;
  }

  FUNC2(blkIdx >= 0 && blkIdx < pQuery->numOfBlocks);

  // load first data block into memory failed, caused by disk block error
  bool blockLoaded = false;
  while (blkIdx < pQuery->numOfBlocks) {
    pQuery->slot = blkIdx;
    if (FUNC8(&pQuery->pBlock[pQuery->slot], &pQuery->pFields[pQuery->slot], pRuntimeEnv, fid, true,
                             true) == 0) {
      FUNC1(pRuntimeEnv->blockStatus);
      blockLoaded = true;
      break;
    }

    FUNC4("QInfo:%p fileId:%d total numOfBlks:%d blockId:%d into memory failed due to error in disk files",
           FUNC0(pQuery), pQuery->fileId, pQuery->numOfBlocks, blkIdx);
    blkIdx += step;
  }

  // failed to load data from disk, abort current query
  if (blockLoaded == false) {
    return false;
  }

  SCompBlock *pBlocks = FUNC5(pQuery, blkIdx);

  // search qualified points in blk, according to primary key (timestamp) column
  pQuery->pos = searchFn(primaryColBuffer->data, pBlocks->numOfPoints, key, pQuery->order.order);
  FUNC2(pQuery->pos >= 0 && pQuery->fileId >= 0 && pQuery->slot >= 0);

  return true;
}