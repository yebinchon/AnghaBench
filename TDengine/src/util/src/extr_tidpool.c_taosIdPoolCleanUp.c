
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int mutex; struct TYPE_5__* freeList; } ;
typedef TYPE_1__ id_pool_t ;


 int free (TYPE_1__*) ;
 int memset (TYPE_1__*,int ,int) ;
 int pTrace (char*,TYPE_1__*) ;
 int pthread_mutex_destroy (int *) ;

void taosIdPoolCleanUp(void *handle) {
  id_pool_t *pIdPool;

  if (handle == ((void*)0)) return;
  pIdPool = (id_pool_t *)handle;

  pTrace("pool:%p is cleaned", pIdPool);

  if (pIdPool->freeList) free(pIdPool->freeList);

  pthread_mutex_destroy(&pIdPool->mutex);

  memset(pIdPool, 0, sizeof(id_pool_t));

  free(pIdPool);
}
