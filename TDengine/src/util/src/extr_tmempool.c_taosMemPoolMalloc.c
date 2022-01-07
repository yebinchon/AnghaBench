
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ numOfFree; char* pool; int blockSize; int* freeList; size_t first; int numOfBlock; int mutex; } ;
typedef TYPE_1__ pool_t ;
typedef scalar_t__ mpool_h ;


 int pTrace (char*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

char *taosMemPoolMalloc(mpool_h handle) {
  char * pos = ((void*)0);
  pool_t *pool_p = (pool_t *)handle;

  pthread_mutex_lock(&(pool_p->mutex));

  if (pool_p->numOfFree > 0) {
    pos = pool_p->pool + pool_p->blockSize * (pool_p->freeList[pool_p->first]);
    pool_p->first++;
    pool_p->first = pool_p->first % pool_p->numOfBlock;
    pool_p->numOfFree--;
  }

  pthread_mutex_unlock(&(pool_p->mutex));

  if (pos == ((void*)0)) pTrace("mempool: out of memory");
  return pos;
}
