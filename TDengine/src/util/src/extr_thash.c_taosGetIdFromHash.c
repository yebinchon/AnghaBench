
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
typedef int int32_t ;
struct TYPE_5__ {scalar_t__ maxSessions; int (* hashFp ) (TYPE_2__*,int ) ;int mutex; TYPE_1__** longHashList; } ;
struct TYPE_4__ {int id; struct TYPE_4__* next; int cont; } ;
typedef TYPE_1__ SLongHash ;
typedef TYPE_2__ SHashObj ;


 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int stub1 (TYPE_2__*,int ) ;

int32_t taosGetIdFromHash(void *handle, uint64_t cont) {
  int hash;
  SLongHash *pNode;
  SHashObj * pObj;

  pObj = (SHashObj *)handle;
  if (pObj == ((void*)0) || pObj->maxSessions == 0) return -1;

  hash = (*pObj->hashFp)(pObj, cont);

  pthread_mutex_lock(&pObj->mutex);

  pNode = pObj->longHashList[hash];

  while (pNode) {
    if (pNode->cont == cont) {
      break;
    }

    pNode = pNode->next;
  }

  pthread_mutex_unlock(&pObj->mutex);

  if (pNode) return (int32_t)pNode->id;

  return -1;
}
