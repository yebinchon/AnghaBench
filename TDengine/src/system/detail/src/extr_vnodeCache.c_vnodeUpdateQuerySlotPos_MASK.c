#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int numOfPoints; } ;
struct TYPE_8__ {int maxBlocks; TYPE_3__** cacheBlocks; } ;
struct TYPE_7__ {int slot; int currentSlot; int firstSlot; int over; int pos; } ;
typedef  TYPE_1__ SQuery ;
typedef  TYPE_2__ SCacheInfo ;
typedef  TYPE_3__ SCacheBlock ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 

void FUNC1(SCacheInfo *pInfo, SQuery *pQuery) {
  SCacheBlock *pCacheBlock;

  int step = FUNC0(pQuery) ? -1 : 1;

  if ((FUNC0(pQuery) && (pQuery->slot == pQuery->currentSlot)) ||
      (!FUNC0(pQuery) && (pQuery->slot == pQuery->firstSlot))) {
    pQuery->over = 1;

  } else {
    pQuery->slot = (pQuery->slot - step + pInfo->maxBlocks) % pInfo->maxBlocks;
    pCacheBlock = pInfo->cacheBlocks[pQuery->slot];
    pQuery->pos = FUNC0(pQuery) ? 0 : pCacheBlock->numOfPoints - 1;
  }
}