
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
typedef size_t int32_t ;
struct TYPE_5__ {scalar_t__ data; struct TYPE_5__* prev; struct TYPE_5__* next; int key; } ;
struct TYPE_4__ {scalar_t__ maxSessions; size_t (* hashFp ) (TYPE_1__*,int ) ;int mutex; TYPE_2__** hashList; scalar_t__ dataSize; } ;
typedef TYPE_1__ IHashObj ;
typedef TYPE_2__ IHashNode ;


 scalar_t__ malloc (int) ;
 int memcpy (scalar_t__,char*,size_t) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 size_t stub1 (TYPE_1__*,int ) ;

char *taosAddIntHash(void *handle, uint64_t key, char *pData) {
  int32_t hash;
  IHashNode *pNode;
  IHashObj * pObj;

  pObj = (IHashObj *)handle;
  if (pObj == ((void*)0) || pObj->maxSessions == 0) return ((void*)0);

  hash = (*pObj->hashFp)(pObj, key);

  pNode = (IHashNode *)malloc(sizeof(IHashNode) + (size_t)pObj->dataSize);
  if (pNode == ((void*)0))
    return ((void*)0);

  pthread_mutex_lock(&pObj->mutex);

  pNode->key = key;
  if (pData != ((void*)0)) {
    memcpy(pNode->data, pData, (size_t)pObj->dataSize);
  }
  pNode->prev = 0;
  pNode->next = pObj->hashList[hash];

  if (pObj->hashList[hash] != 0) (pObj->hashList[hash])->prev = pNode;
  pObj->hashList[hash] = pNode;

  pthread_mutex_unlock(&pObj->mutex);

  return (char *)pNode->data;
}
