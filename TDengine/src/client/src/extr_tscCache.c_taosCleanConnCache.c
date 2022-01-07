
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_4__ {int maxSessions; void* pTimer; int keepTimer; int tmrCtrl; int mutex; int ** connHashList; } ;
typedef int SConnHash ;
typedef TYPE_1__ SConnCache ;


 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int taosGetTimestampMs () ;
 int taosRemoveExpiredNodes (TYPE_1__*,int *,int,int ) ;
 int taosTmrReset (void (*) (void*,void*),int,TYPE_1__*,int ,void**) ;

void taosCleanConnCache(void *handle, void *tmrId) {
  int hash;
  SConnHash * pNode;
  SConnCache *pObj;

  pObj = (SConnCache *)handle;
  if (pObj == ((void*)0) || pObj->maxSessions == 0) return;
  if (pObj->pTimer != tmrId) return;

  uint64_t time = taosGetTimestampMs();

  for (hash = 0; hash < pObj->maxSessions; ++hash) {
    pthread_mutex_lock(&pObj->mutex);
    pNode = pObj->connHashList[hash];
    taosRemoveExpiredNodes(pObj, pNode, hash, time);
    pthread_mutex_unlock(&pObj->mutex);
  }


  taosTmrReset(taosCleanConnCache, pObj->keepTimer * 2, pObj, pObj->tmrCtrl, &pObj->pTimer);
}
