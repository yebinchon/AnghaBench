
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int maxId; scalar_t__* freeList; scalar_t__ freeSlot; scalar_t__ numOfFree; } ;
typedef TYPE_1__ id_pool_t ;



void taosIdPoolReinit(void *handle) {
  id_pool_t *pIdPool;

  pIdPool = (id_pool_t *)handle;
  pIdPool->numOfFree = 0;
  pIdPool->freeSlot = 0;

  for (int i = 0; i < pIdPool->maxId; ++i) pIdPool->freeList[i] = 0;
}
