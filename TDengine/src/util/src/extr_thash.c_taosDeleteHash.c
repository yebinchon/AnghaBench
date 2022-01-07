
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_7__ {scalar_t__ maxSessions; int (* hashFp ) (TYPE_3__*,int ) ;int mutex; int longHashMemPool; TYPE_2__** longHashList; } ;
struct TYPE_6__ {TYPE_1__* prev; struct TYPE_6__* next; int cont; } ;
struct TYPE_5__ {TYPE_2__* next; } ;
typedef TYPE_2__ SLongHash ;
typedef TYPE_3__ SHashObj ;


 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int stub1 (TYPE_3__*,int ) ;
 int taosMemPoolFree (int ,char*) ;

void taosDeleteHash(void *handle, uint64_t cont) {
  int hash;
  SLongHash *pNode;
  SHashObj * pObj;

  pObj = (SHashObj *)handle;
  if (pObj == ((void*)0) || pObj->maxSessions == 0) return;

  hash = (*pObj->hashFp)(pObj, cont);

  pthread_mutex_lock(&pObj->mutex);

  pNode = pObj->longHashList[hash];
  while (pNode) {
    if (pNode->cont == cont) break;

    pNode = pNode->next;
  }

  if (pNode) {
    if (pNode->prev) {
      pNode->prev->next = pNode->next;
    } else {
      pObj->longHashList[hash] = pNode->next;
    }

    if (pNode->next) {
      pNode->next->prev = pNode->prev;
    }

    taosMemPoolFree(pObj->longHashMemPool, (char *)pNode);
  }

  pthread_mutex_unlock(&pObj->mutex);
}
