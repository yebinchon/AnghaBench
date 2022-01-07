
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_9__ {void* data; TYPE_1__* prev; struct TYPE_9__* next; int string; } ;
struct TYPE_8__ {scalar_t__ maxSessions; size_t (* hashFp ) (TYPE_2__*,char*) ;int mutex; TYPE_3__** hashList; } ;
struct TYPE_7__ {TYPE_3__* next; } ;
typedef TYPE_2__ SHashObj ;
typedef TYPE_3__ SHashNode ;


 int free (TYPE_3__*) ;
 int pTrace (char*,size_t,char*,TYPE_3__*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 scalar_t__ strcmp (int ,char*) ;
 size_t stub1 (TYPE_2__*,char*) ;

void taosDeleteStrHashNode(void *handle, char *string, void *pDeleteNode) {
  uint32_t hash;
  SHashNode *pNode;
  SHashObj * pObj;
  bool find = 0;

  pObj = (SHashObj *)handle;
  if (pObj == ((void*)0) || pObj->maxSessions == 0) return;
  if (string == ((void*)0) || string[0] == 0) return;

  hash = (*(pObj->hashFp))(pObj, string);

  pthread_mutex_lock(&pObj->mutex);

  pNode = pObj->hashList[hash];

  while (pNode) {
    if (strcmp(pNode->string, string) != 0) continue;
    if (pNode->data == pDeleteNode) {
      find = 1;
      break;
    }

    pNode = pNode->next;
  }

  if (find) {
    if (pNode->prev) {
      pNode->prev->next = pNode->next;
    } else {
      pObj->hashList[hash] = pNode->next;
    }

    if (pNode->next) {
      pNode->next->prev = pNode->prev;
    }

    pTrace("hash:%d:%s:%p is removed", hash, string, pNode);

    free(pNode);
  }

  pthread_mutex_unlock(&pObj->mutex);
}
