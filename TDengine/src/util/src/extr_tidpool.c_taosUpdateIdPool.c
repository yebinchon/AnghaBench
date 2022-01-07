
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int maxId; int* freeList; int mutex; int numOfFree; } ;
typedef TYPE_1__ id_pool_t ;


 int free (int*) ;
 scalar_t__ malloc (int) ;
 int memcpy (int*,int*,int) ;
 int perror (char*) ;
 scalar_t__ pthread_mutex_lock (int *) ;
 scalar_t__ pthread_mutex_unlock (int *) ;

int taosUpdateIdPool(id_pool_t *handle, int maxId) {
  id_pool_t *pIdPool = (id_pool_t*)handle;
  if (maxId <= pIdPool->maxId) {
    return -1;
  }

  int *idList, i;
  idList = (int *)malloc(sizeof(int) * (size_t)maxId);
  if (idList == ((void*)0)) {
    return -1;
  }
  for (i = 1; i < maxId; ++i) {
    idList[i - 1] = i;
  }

  if (pthread_mutex_lock(&pIdPool->mutex) != 0) perror("lock pIdPool Mutex");

  memcpy(idList, pIdPool->freeList, sizeof(int) * (size_t)pIdPool->maxId);
  pIdPool->numOfFree += (maxId - pIdPool->maxId);
  pIdPool->maxId = maxId;

  int *oldIdList = pIdPool->freeList;
  pIdPool->freeList = idList;
  free(oldIdList);

  if (pthread_mutex_unlock(&pIdPool->mutex) != 0) perror("unlock pIdPool Mutex");

  return 0;
}
