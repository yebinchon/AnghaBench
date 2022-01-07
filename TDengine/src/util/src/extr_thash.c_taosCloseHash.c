
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ maxSessions; int mutex; struct TYPE_4__* longHashList; scalar_t__ longHashMemPool; } ;
typedef TYPE_1__ SHashObj ;


 int free (TYPE_1__*) ;
 int memset (TYPE_1__*,int ,int) ;
 int pthread_mutex_destroy (int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int taosMemPoolCleanUp (scalar_t__) ;

void taosCloseHash(void *handle) {
  SHashObj *pObj;

  pObj = (SHashObj *)handle;
  if (pObj == ((void*)0) || pObj->maxSessions == 0) return;

  pthread_mutex_lock(&pObj->mutex);

  if (pObj->longHashMemPool) taosMemPoolCleanUp(pObj->longHashMemPool);

  if (pObj->longHashList) free(pObj->longHashList);

  pthread_mutex_unlock(&pObj->mutex);

  pthread_mutex_destroy(&pObj->mutex);

  memset(pObj, 0, sizeof(SHashObj));
  free(pObj);
}
