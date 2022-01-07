
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_5__ {void* data; void* string; struct TYPE_5__* prev; struct TYPE_5__* next; } ;
struct TYPE_4__ {scalar_t__ maxSessions; size_t (* hashFp ) (TYPE_1__*,char*) ;int mutex; TYPE_2__** hashList; } ;
typedef TYPE_1__ SHashObj ;
typedef TYPE_2__ SHashNode ;


 scalar_t__ malloc (scalar_t__) ;
 int memcpy (void*,char*,size_t) ;
 int pTrace (char*,size_t,char*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int strcpy (void*,char*) ;
 scalar_t__ strlen (char*) ;
 size_t stub1 (TYPE_1__*,char*) ;

void *taosAddStrHashWithSize(void *handle, char *string, char *pData, int dataSize) {
  uint32_t hash;
  SHashNode *pNode;
  SHashObj * pObj;

  pObj = (SHashObj *)handle;
  if (pObj == ((void*)0) || pObj->maxSessions == 0) return ((void*)0);
  if (string == ((void*)0) || string[0] == 0) return ((void*)0);

  hash = (*pObj->hashFp)(pObj, string);

  pthread_mutex_lock(&pObj->mutex);

  pNode = (SHashNode *)malloc(sizeof(SHashNode) + (size_t)dataSize + strlen(string) + 1);
  memcpy(pNode->data, pData, (size_t)dataSize);
  pNode->prev = 0;
  pNode->next = pObj->hashList[hash];
  pNode->string = pNode->data + dataSize;
  strcpy(pNode->string, string);

  if (pObj->hashList[hash] != 0) (pObj->hashList[hash])->prev = pNode;
  pObj->hashList[hash] = pNode;

  pthread_mutex_unlock(&pObj->mutex);

  pTrace("hash:%d:%s is added", hash, string);

  return pNode->data;
}
