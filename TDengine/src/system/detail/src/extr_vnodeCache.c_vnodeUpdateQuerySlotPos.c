
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int numOfPoints; } ;
struct TYPE_8__ {int maxBlocks; TYPE_3__** cacheBlocks; } ;
struct TYPE_7__ {int slot; int currentSlot; int firstSlot; int over; int pos; } ;
typedef TYPE_1__ SQuery ;
typedef TYPE_2__ SCacheInfo ;
typedef TYPE_3__ SCacheBlock ;


 scalar_t__ QUERY_IS_ASC_QUERY (TYPE_1__*) ;

void vnodeUpdateQuerySlotPos(SCacheInfo *pInfo, SQuery *pQuery) {
  SCacheBlock *pCacheBlock;

  int step = QUERY_IS_ASC_QUERY(pQuery) ? -1 : 1;

  if ((QUERY_IS_ASC_QUERY(pQuery) && (pQuery->slot == pQuery->currentSlot)) ||
      (!QUERY_IS_ASC_QUERY(pQuery) && (pQuery->slot == pQuery->firstSlot))) {
    pQuery->over = 1;

  } else {
    pQuery->slot = (pQuery->slot - step + pInfo->maxBlocks) % pInfo->maxBlocks;
    pCacheBlock = pInfo->cacheBlocks[pQuery->slot];
    pQuery->pos = QUERY_IS_ASC_QUERY(pQuery) ? 0 : pCacheBlock->numOfPoints - 1;
  }
}
