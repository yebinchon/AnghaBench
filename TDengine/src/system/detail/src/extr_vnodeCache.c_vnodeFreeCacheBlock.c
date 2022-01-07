
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ pCachePool; } ;
struct TYPE_11__ {scalar_t__ blockId; int index; int slot; scalar_t__ notFree; TYPE_1__* pMeterObj; } ;
struct TYPE_10__ {scalar_t__ numOfBlocks; } ;
struct TYPE_9__ {int notFreeSlots; } ;
struct TYPE_8__ {size_t vnode; int meterId; int sid; scalar_t__ pCache; } ;
typedef TYPE_1__ SMeterObj ;
typedef TYPE_2__ SCachePool ;
typedef TYPE_3__ SCacheInfo ;
typedef TYPE_4__ SCacheBlock ;


 int dError (char*,...) ;
 int dTrace (char*,size_t,int ,int ,scalar_t__,int ,int ,...) ;
 int memset (TYPE_4__*,int ,int) ;
 TYPE_5__* vnodeList ;

int vnodeFreeCacheBlock(SCacheBlock *pCacheBlock) {
  SMeterObj * pObj;
  SCacheInfo *pInfo;

  if (pCacheBlock == ((void*)0)) return -1;

  pObj = pCacheBlock->pMeterObj;
  pInfo = (SCacheInfo *)pObj->pCache;

  if (pObj) {
    pInfo->numOfBlocks--;

    if (pInfo->numOfBlocks < 0) {
      dError("vid:%d sid:%d id:%s, numOfBlocks:%d shall never be negative", pObj->vnode, pObj->sid, pObj->meterId,
           pInfo->numOfBlocks);
    }

    if (pCacheBlock->blockId == 0) {
      dError("vid:%d sid:%d id:%s, double free", pObj->vnode, pObj->sid, pObj->meterId);
    }

    SCachePool *pPool = (SCachePool *)vnodeList[pObj->vnode].pCachePool;
    if (pCacheBlock->notFree) {
      pPool->notFreeSlots--;
      dTrace("vid:%d sid:%d id:%s, cache block is not free, slot:%d, index:%d notFreeSlots:%d",
             pObj->vnode, pObj->sid, pObj->meterId, pCacheBlock->slot, pCacheBlock->index, pPool->notFreeSlots);
    }

    dTrace("vid:%d sid:%d id:%s, free a cache block, numOfBlocks:%d, slot:%d, index:%d notFreeSlots:%d",
           pObj->vnode, pObj->sid, pObj->meterId, pInfo->numOfBlocks, pCacheBlock->slot, pCacheBlock->index,
           pPool->notFreeSlots);

    memset(pCacheBlock, 0, sizeof(SCacheBlock));

  } else {
    dError("BUG, pObj is null");
  }

  return 0;
}
