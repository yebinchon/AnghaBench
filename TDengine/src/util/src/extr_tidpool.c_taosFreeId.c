
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* freeList; int maxId; int freeSlot; int numOfFree; int mutex; } ;
typedef TYPE_1__ id_pool_t ;


 int perror (char*) ;
 scalar_t__ pthread_mutex_lock (int *) ;
 scalar_t__ pthread_mutex_unlock (int *) ;

void taosFreeId(void *handle, int id) {
  id_pool_t *pIdPool;
  int slot;

  pIdPool = (id_pool_t *)handle;
  if (pIdPool->freeList == ((void*)0) || pIdPool->maxId == 0) return;
  if (id <= 0 || id >= pIdPool->maxId) return;
  if (pthread_mutex_lock(&pIdPool->mutex) != 0) perror("lock pIdPool Mutex");

  slot = (pIdPool->freeSlot + pIdPool->numOfFree) % pIdPool->maxId;
  pIdPool->freeList[slot] = id;
  pIdPool->numOfFree++;

  if (pthread_mutex_unlock(&pIdPool->mutex) != 0) perror("unlock pIdPool Mutex");
}
