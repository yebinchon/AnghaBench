
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint64_t ;
typedef size_t int32_t ;
struct TYPE_8__ {TYPE_1__* prev; struct TYPE_8__* next; int key; } ;
struct TYPE_7__ {scalar_t__ maxSessions; size_t (* hashFp ) (TYPE_2__*,int ) ;int mutex; TYPE_3__** hashList; } ;
struct TYPE_6__ {TYPE_3__* next; } ;
typedef TYPE_2__ IHashObj ;
typedef TYPE_3__ IHashNode ;


 int free (TYPE_3__*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 size_t stub1 (TYPE_2__*,int ) ;

void taosDeleteIntHash(void *handle, uint64_t key) {
  int32_t hash;
  IHashNode *pNode;
  IHashObj * pObj;

  pObj = (IHashObj *)handle;
  if (pObj == ((void*)0) || pObj->maxSessions == 0) return;

  hash = (*(pObj->hashFp))(pObj, key);

  pthread_mutex_lock(&pObj->mutex);

  pNode = pObj->hashList[hash];
  while (pNode) {
    if (pNode->key == key) break;

    pNode = pNode->next;
  }

  if (pNode) {
    if (pNode->prev) {
      pNode->prev->next = pNode->next;
    } else {
      pObj->hashList[hash] = pNode->next;
    }

    if (pNode->next) {
      pNode->next->prev = pNode->prev;
    }

    free(pNode);
  }

  pthread_mutex_unlock(&pObj->mutex);
}
