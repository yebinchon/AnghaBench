
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int maxId; int numOfFree; int* freeList; int mutex; scalar_t__ freeSlot; } ;
typedef TYPE_1__ id_pool_t ;


 int free (TYPE_1__*) ;
 scalar_t__ malloc (int) ;
 int memset (TYPE_1__*,int ,int) ;
 int pTrace (char*,TYPE_1__*,int) ;
 int pthread_mutex_init (int *,int *) ;

void *taosInitIdPool(int maxId) {
  id_pool_t *pIdPool;
  int * idList, i;

  if (maxId < 3) maxId = 3;

  pIdPool = (id_pool_t *)malloc(sizeof(id_pool_t));
  if (pIdPool == ((void*)0)) return ((void*)0);

  idList = (int *)malloc(sizeof(int) * (size_t)maxId);
  if (idList == ((void*)0)) {
    free(pIdPool);
    return ((void*)0);
  }

  memset(pIdPool, 0, sizeof(id_pool_t));
  pIdPool->maxId = maxId;
  pIdPool->numOfFree = maxId - 1;
  pIdPool->freeSlot = 0;
  pIdPool->freeList = idList;

  pthread_mutex_init(&pIdPool->mutex, ((void*)0));

  for (i = 1; i < maxId; ++i) idList[i - 1] = i;

  pTrace("pool:%p is setup, maxId:%d", pIdPool, pIdPool->maxId);

  return (void *)pIdPool;
}
