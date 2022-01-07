
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* freeList; struct TYPE_4__* pool; int mutex; } ;
typedef TYPE_1__ pool_t ;
typedef scalar_t__ mpool_h ;


 int free (TYPE_1__*) ;
 int memset (TYPE_1__*,int ,int) ;
 int pthread_mutex_destroy (int *) ;

void taosMemPoolCleanUp(mpool_h handle) {
  pool_t *pool_p = (pool_t *)handle;

  pthread_mutex_destroy(&pool_p->mutex);
  if (pool_p->pool) free(pool_p->pool);
  if (pool_p->freeList) free(pool_p->freeList);
  memset(pool_p, 0, sizeof(*pool_p));
  free(pool_p);
}
