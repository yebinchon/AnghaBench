
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef size_t int32_t ;
struct TYPE_13__ {scalar_t__ pCachePool; } ;
struct TYPE_12__ {size_t numOfBlocks; size_t currentSlot; TYPE_1__** cacheBlocks; } ;
struct TYPE_11__ {int vmutex; } ;
struct TYPE_10__ {size_t currentSlot; size_t numOfBlocks; int blockId; int firstSlot; } ;
struct TYPE_9__ {int blockId; } ;
typedef TYPE_2__ SQuery ;
typedef TYPE_3__ SCachePool ;
typedef TYPE_4__ SCacheInfo ;


 int getFirstCacheSlot (size_t,size_t,TYPE_4__*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 TYPE_5__* vnodeList ;

void getBasicCacheInfoSnapshot(SQuery *pQuery, SCacheInfo *pCacheInfo, int32_t vid) {

  int32_t numOfBlocks = 0;
  int32_t lastSlot = 0;

  SCachePool *pPool = (SCachePool *)vnodeList[vid].pCachePool;
  pthread_mutex_lock(&pPool->vmutex);
  numOfBlocks = pCacheInfo->numOfBlocks;
  lastSlot = pCacheInfo->currentSlot;
  pthread_mutex_unlock(&pPool->vmutex);


  pQuery->currentSlot = lastSlot;
  pQuery->numOfBlocks = numOfBlocks;
  pQuery->firstSlot = getFirstCacheSlot(numOfBlocks, lastSlot, pCacheInfo);
  ;
  if (pQuery->numOfBlocks > 0) {
    pQuery->blockId = pCacheInfo->cacheBlocks[pQuery->currentSlot]->blockId;
  }
}
