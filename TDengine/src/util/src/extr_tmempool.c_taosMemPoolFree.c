
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* pool; int blockSize; int numOfBlock; int* freeList; size_t first; size_t numOfFree; int mutex; } ;
typedef TYPE_1__ pool_t ;
typedef scalar_t__ mpool_h ;


 int memset (char*,int ,size_t) ;
 int pError (char*,char*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

void taosMemPoolFree(mpool_h handle, char *pMem) {
  int index;
  pool_t *pool_p = (pool_t *)handle;

  if (pMem == ((void*)0)) return;

  index = (int)(pMem - pool_p->pool) % pool_p->blockSize;
  if (index != 0) {
    pError("invalid free address:%p\n", pMem);
    return;
  }

  index = (int)((pMem - pool_p->pool) / pool_p->blockSize);
  if (index < 0 || index >= pool_p->numOfBlock) {
    pError("mempool: error, invalid address:%p\n", pMem);
    return;
  }

  memset(pMem, 0, (size_t)pool_p->blockSize);

  pthread_mutex_lock(&pool_p->mutex);

  pool_p->freeList[(pool_p->first + pool_p->numOfFree) % pool_p->numOfBlock] = index;
  pool_p->numOfFree++;

  pthread_mutex_unlock(&pool_p->mutex);
}
