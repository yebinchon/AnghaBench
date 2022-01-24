#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_6__ ;
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  int int64_t ;
typedef  scalar_t__ int32_t ;
struct TYPE_22__ {scalar_t__ numOfBlocks; int /*<<< orphan*/ * cacheBlocks; } ;
struct TYPE_21__ {scalar_t__ pCache; } ;
struct TYPE_20__ {int fileId; int /*<<< orphan*/  pos; int /*<<< orphan*/  slot; } ;
struct TYPE_17__ {int /*<<< orphan*/  order; } ;
struct TYPE_19__ {int fileId; int /*<<< orphan*/  pos; TYPE_1__ order; int /*<<< orphan*/  slot; } ;
struct TYPE_18__ {int /*<<< orphan*/  blockStatus; TYPE_5__* pMeterObj; TYPE_3__* pQuery; } ;
typedef  int TSKEY ;
typedef  TYPE_2__ SQueryRuntimeEnv ;
typedef  TYPE_3__ SQuery ;
typedef  TYPE_4__ SPositionInfo ;
typedef  TYPE_5__ SMeterObj ;
typedef  TYPE_6__ SCacheInfo ;
typedef  int /*<<< orphan*/  SCacheBlock ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  QUERY_NO_DATA_TO_CHECK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_5__*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (TYPE_5__*,TYPE_2__*,scalar_t__) ; 
 scalar_t__ FUNC9 (int*,TYPE_2__*,int /*<<< orphan*/ ) ; 

int64_t FUNC10(SQueryRuntimeEnv *pRuntimeEnv, SPositionInfo *position) {
  TSKEY nextTimestamp = -1;

  SQuery *   pQuery = pRuntimeEnv->pQuery;
  SMeterObj *pMeterObj = pRuntimeEnv->pMeterObj;

  pQuery->fileId = position->fileId;
  pQuery->slot = position->slot;
  pQuery->pos = position->pos;

  if (position->fileId == -1) {
    SCacheInfo *pCacheInfo = (SCacheInfo *)pMeterObj->pCache;
    if (pCacheInfo == NULL || pCacheInfo->numOfBlocks == 0 || pCacheInfo->cacheBlocks == NULL) {
      FUNC7(pQuery, QUERY_NO_DATA_TO_CHECK);
      return -1;
    }

    SCacheBlock *pBlock = FUNC4(pMeterObj, pQuery, pQuery->slot);
    if (pBlock != NULL) {
      nextTimestamp = FUNC5(pBlock, position->pos);
    } else {
      // todo fix it
    }

    FUNC1(pRuntimeEnv->blockStatus);
  } else {
    // todo handle the file broken situation
    /*
     * load the file metadata into buffer first, then the specific data block.
     * currently opened file is not the start file, reset to the start file
     */
    int32_t fileIdx = FUNC9(&pQuery->fileId, pRuntimeEnv, pQuery->order.order);
    if (fileIdx < 0) {
      FUNC3("QInfo:%p failed to get data file:%d", FUNC0(pQuery), pQuery->fileId);
      // ignore the files on disk
      position->fileId = -1;
      return -1;
    }

    /*
     * NOTE: the compblock information may not be loaded yet, here loaded it firstly
     * If the compBlock info is loaded, it wont be loaded again.
     */
    int32_t numOfBlocks = FUNC8(pMeterObj, pRuntimeEnv, fileIdx);
    FUNC2(numOfBlocks > 0);

    nextTimestamp = FUNC6(pRuntimeEnv, pQuery->pos);
  }

  return nextTimestamp;
}