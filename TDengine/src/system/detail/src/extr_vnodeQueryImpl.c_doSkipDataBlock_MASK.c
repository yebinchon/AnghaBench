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
typedef  scalar_t__ int32_t ;
typedef  int /*<<< orphan*/  __block_search_fn_t ;
struct TYPE_22__ {scalar_t__ size; scalar_t__ keyLast; scalar_t__ keyFirst; } ;
struct TYPE_21__ {size_t searchAlgorithm; } ;
struct TYPE_18__ {scalar_t__ offset; } ;
struct TYPE_17__ {int /*<<< orphan*/  order; } ;
struct TYPE_20__ {scalar_t__ pos; scalar_t__ ekey; scalar_t__ lastKey; TYPE_2__ limit; int /*<<< orphan*/  slot; int /*<<< orphan*/  over; TYPE_1__ order; } ;
struct TYPE_19__ {TYPE_4__* pQuery; TYPE_5__* pMeterObj; } ;
typedef  TYPE_3__ SQueryRuntimeEnv ;
typedef  TYPE_4__ SQuery ;
typedef  TYPE_5__ SMeterObj ;
typedef  TYPE_6__ SBlockInfo ;

/* Variables and functions */
 scalar_t__ BLK_CACHE_BLOCK ; 
 scalar_t__ BLK_FILE_BLOCK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 scalar_t__ FUNC2 (TYPE_4__*) ; 
 scalar_t__ FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  QUERY_NO_DATA_TO_CHECK ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 TYPE_6__ FUNC6 (void*,scalar_t__) ; 
 void* FUNC7 (TYPE_5__*,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,TYPE_6__*,void*) ; 
 int /*<<< orphan*/ * vnodeSearchKeyFunc ; 

__attribute__((used)) static int32_t FUNC11(SQueryRuntimeEnv *pRuntimeEnv) {
  SMeterObj *         pMeterObj = pRuntimeEnv->pMeterObj;
  SQuery *            pQuery = pRuntimeEnv->pQuery;
  int32_t             step = FUNC0(pQuery->order.order);
  __block_search_fn_t searchFn = vnodeSearchKeyFunc[pMeterObj->searchAlgorithm];

  while (1) {
    FUNC8(pRuntimeEnv, step, searchFn, false);
    if (FUNC4(pQuery->over, QUERY_NO_DATA_TO_CHECK)) {
      break;
    }

    void *pBlock = FUNC7(pMeterObj, pQuery, pQuery->slot);
    FUNC5(pBlock != NULL);

    int32_t    blockType = FUNC2(pQuery) ? BLK_FILE_BLOCK : BLK_CACHE_BLOCK;
    SBlockInfo blockInfo = FUNC6(pBlock, blockType);

    int32_t maxReads = (FUNC3(pQuery)) ? blockInfo.size - pQuery->pos : pQuery->pos + 1;
    FUNC5(maxReads >= 0);

    if (pQuery->limit.offset < maxReads || (pQuery->ekey <= blockInfo.keyLast && FUNC3(pQuery)) ||
        (pQuery->ekey >= blockInfo.keyFirst && !FUNC3(pQuery))) {  // start position in current block
      FUNC10(pRuntimeEnv, &blockInfo, pBlock);
      break;
    } else {
      pQuery->limit.offset -= maxReads;
      pQuery->lastKey = (FUNC3(pQuery)) ? blockInfo.keyLast : blockInfo.keyFirst;
      pQuery->lastKey += step;

      FUNC9("QInfo:%p skip rows:%d, offset:%lld", FUNC1(pQuery), maxReads, pQuery->limit.offset);
    }
  }

  return 0;
}