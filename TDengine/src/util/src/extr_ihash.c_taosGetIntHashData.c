
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
typedef size_t int32_t ;
struct TYPE_5__ {char* data; struct TYPE_5__* next; int key; } ;
struct TYPE_4__ {scalar_t__ maxSessions; size_t (* hashFp ) (TYPE_1__*,int ) ;int mutex; TYPE_2__** hashList; } ;
typedef TYPE_1__ IHashObj ;
typedef TYPE_2__ IHashNode ;


 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 size_t stub1 (TYPE_1__*,int ) ;

char *taosGetIntHashData(void *handle, uint64_t key) {
  int32_t hash;
  IHashNode *pNode;
  IHashObj * pObj;

  pObj = (IHashObj *)handle;
  if (pObj == ((void*)0) || pObj->maxSessions == 0) return ((void*)0);

  hash = (*pObj->hashFp)(pObj, key);

  pthread_mutex_lock(&pObj->mutex);

  pNode = pObj->hashList[hash];

  while (pNode) {
    if (pNode->key == key) {
      break;
    }

    pNode = pNode->next;
  }

  pthread_mutex_unlock(&pObj->mutex);

  if (pNode) return pNode->data;

  return ((void*)0);
}
