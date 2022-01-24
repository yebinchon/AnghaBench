#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int int32_t ;
struct TYPE_7__ {int numOfBlocks; int currentSlot; } ;
struct TYPE_6__ {scalar_t__ lastKey; scalar_t__ pCache; } ;
typedef  scalar_t__ TSKEY ;
typedef  int /*<<< orphan*/  SQuery ;
typedef  TYPE_1__ SMeterObj ;
typedef  TYPE_2__ SCacheInfo ;
typedef  int /*<<< orphan*/  SCacheBlock ;

/* Variables and functions */
 int /*<<< orphan*/  QUERY_NO_DATA_TO_CHECK ; 
 int /*<<< orphan*/ * FUNC0 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int,int,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__*,scalar_t__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC5(SQuery *pQuery, SMeterObj *pMeterObj) {
  /*
   * here we get the first slot from the meter cache, not from the cache snapshot from pQuery, since the
   * snapshot value in pQuery may have been expired now.
   */
  SCacheInfo * pCacheInfo = (SCacheInfo *)pMeterObj->pCache;
  SCacheBlock *pBlock = NULL;

  // earliest key in cache
  TSKEY keyFirst = 0;
  TSKEY keyLast = pMeterObj->lastKey;

  while (1) {
    // keep the value in local variable, since it may be changed by other thread any time
    int32_t numOfBlocks = pCacheInfo->numOfBlocks;
    int32_t currentSlot = pCacheInfo->currentSlot;

    // no data in cache, return false directly
    if (numOfBlocks == 0) {
      return false;
    }

    int32_t first = FUNC1(numOfBlocks, currentSlot, pCacheInfo);

    /*
     * pBlock may be null value since this block is flushed to disk, and re-distributes to
     * other meter, so go on until we get the first not flushed cache block.
     */
    if ((pBlock = FUNC0(pMeterObj, pQuery, first)) != NULL) {
      keyFirst = FUNC3(pBlock, 0);
      break;
    } else {
      /*
       * there may be only one empty cache block existed caused by import.
       */
      if (numOfBlocks == 1) {
        return false;
      }
    }
  }

  TSKEY min, max;
  FUNC2(pQuery, &min, &max);

  /*
   * The query time range is earlier than the first element or later than the last elements in cache.
   * If the query window overlaps with the time range of disk files, the flag needs to be reset.
   * Otherwise, this flag will cause error in following processing.
   */
  if (max < keyFirst || min > keyLast) {
    FUNC4(pQuery, QUERY_NO_DATA_TO_CHECK);
    return false;
  }

  return true;
}