
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_5__ {scalar_t__ maxSessions; int (* hashFp ) (TYPE_2__*,int ) ;int mutex; TYPE_1__** longHashList; int longHashMemPool; } ;
struct TYPE_4__ {unsigned int id; struct TYPE_4__* prev; struct TYPE_4__* next; int cont; } ;
typedef TYPE_1__ SLongHash ;
typedef TYPE_2__ SHashObj ;


 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int stub1 (TYPE_2__*,int ) ;
 scalar_t__ taosMemPoolMalloc (int ) ;

int taosAddHash(void *handle, uint64_t cont, unsigned int id) {
  int hash;
  SLongHash *pNode;
  SHashObj * pObj;

  pObj = (SHashObj *)handle;
  if (pObj == ((void*)0) || pObj->maxSessions == 0) return -1;

  pthread_mutex_lock(&pObj->mutex);

  hash = (*pObj->hashFp)(pObj, cont);

  pNode = (SLongHash *)taosMemPoolMalloc(pObj->longHashMemPool);
  pNode->cont = cont;
  pNode->id = id;
  pNode->prev = 0;
  pNode->next = pObj->longHashList[hash];

  if (pObj->longHashList[hash] != 0) (pObj->longHashList[hash])->prev = pNode;
  pObj->longHashList[hash] = pNode;

  pthread_mutex_unlock(&pObj->mutex);

  return 0;
}
