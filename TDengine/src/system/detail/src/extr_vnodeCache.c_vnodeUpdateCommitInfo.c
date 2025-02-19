
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_11__ {scalar_t__ pCachePool; } ;
struct TYPE_10__ {int index; int slot; scalar_t__ notFree; } ;
struct TYPE_9__ {int commitPoint; int commitSlot; int maxBlocks; int unCommittedBlocks; TYPE_4__** cacheBlocks; } ;
struct TYPE_8__ {int notFreeSlots; int vmutex; } ;
struct TYPE_7__ {size_t vnode; int pointsPerBlock; int commitCount; int freePoints; int meterId; int sid; scalar_t__ pCache; } ;
typedef TYPE_1__ SMeterObj ;
typedef TYPE_2__ SCachePool ;
typedef TYPE_3__ SCacheInfo ;
typedef TYPE_4__ SCacheBlock ;


 int assert (scalar_t__) ;
 int atomic_fetch_add_32 (int *,int) ;
 int dTrace (char*,size_t,int ,int ,int ,int ,int ,int ) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 TYPE_6__* vnodeList ;

void vnodeUpdateCommitInfo(SMeterObj *pObj, int slot, int pos, uint64_t count) {
  SCacheInfo * pInfo;
  SCacheBlock *pBlock;
  SCachePool * pPool;

  pInfo = (SCacheInfo *)pObj->pCache;
  pPool = (SCachePool *)vnodeList[pObj->vnode].pCachePool;

  int tslot =
      (pInfo->commitPoint == pObj->pointsPerBlock) ? (pInfo->commitSlot + 1) % pInfo->maxBlocks : pInfo->commitSlot;
  int slots = 0;

  while (tslot != slot || ((tslot == slot) && (pos == pObj->pointsPerBlock))) {
    slots++;
    pthread_mutex_lock(&pPool->vmutex);
    pBlock = pInfo->cacheBlocks[tslot];
    assert(pBlock->notFree);
    pBlock->notFree = 0;
    pInfo->unCommittedBlocks--;
    pPool->notFreeSlots--;
    pthread_mutex_unlock(&pPool->vmutex);

    dTrace("vid:%d sid:%d id:%s, cache block is committed, slot:%d, index:%d notFreeSlots:%d, unCommittedBlocks:%d",
           pObj->vnode, pObj->sid, pObj->meterId, pBlock->slot, pBlock->index, pPool->notFreeSlots,
           pInfo->unCommittedBlocks);
    if (tslot == slot) break;
    tslot = (tslot + 1) % pInfo->maxBlocks;
  }

  atomic_fetch_add_32(&pObj->freePoints, pObj->pointsPerBlock * slots);
  pInfo->commitSlot = slot;
  pInfo->commitPoint = pos;
  pObj->commitCount = count;
}
