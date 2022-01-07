
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int maxId; int* freeList; scalar_t__ numOfFree; scalar_t__ freeSlot; } ;
typedef TYPE_1__ id_pool_t ;



void taosIdPoolSetFreeList(void *handle) {
  id_pool_t *pIdPool;
  int pos = 0;

  pIdPool = (id_pool_t *)handle;
  pIdPool->numOfFree = 0;
  pIdPool->freeSlot = 0;

  for (int i = 1; i < pIdPool->maxId; ++i) {
    if (pIdPool->freeList[i] == 0) {
      pIdPool->freeList[pos] = i;
      pIdPool->numOfFree++;
      pos++;
    }
  }
}
