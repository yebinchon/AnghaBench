
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int maxId; scalar_t__ numOfFree; int* freeList; size_t freeSlot; int mutex; } ;
typedef TYPE_1__ id_pool_t ;


 int pError (char*,TYPE_1__*,int) ;
 int perror (char*) ;
 scalar_t__ pthread_mutex_lock (int *) ;
 scalar_t__ pthread_mutex_unlock (int *) ;

int taosAllocateId(void *handle) {
  id_pool_t *pIdPool;
  int id = -1;
  if (handle == ((void*)0)) return id;

  pIdPool = (id_pool_t *)handle;

  if (pIdPool->maxId < 3) pError("pool:%p is messed up, maxId:%d", pIdPool, pIdPool->maxId);

  if (pthread_mutex_lock(&pIdPool->mutex) != 0) perror("lock pIdPool Mutex");

  if (pIdPool->numOfFree > 0) {
    id = pIdPool->freeList[pIdPool->freeSlot];
    pIdPool->freeSlot = (pIdPool->freeSlot + 1) % pIdPool->maxId;
    pIdPool->numOfFree--;
  }

  if (pthread_mutex_unlock(&pIdPool->mutex) != 0) perror("unlock pIdPool Mutex");

  return id;
}
