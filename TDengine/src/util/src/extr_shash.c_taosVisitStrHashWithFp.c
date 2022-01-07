
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {char* data; struct TYPE_4__* next; } ;
struct TYPE_3__ {scalar_t__ maxSessions; int mutex; TYPE_2__** hashList; } ;
typedef TYPE_1__ SHashObj ;
typedef TYPE_2__ SHashNode ;


 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

char *taosVisitStrHashWithFp(void *handle, int (*fp)(char *)) {
  SHashObj * pObj;
  SHashNode *pNode, *pNext;
  char * pData = ((void*)0);

  pObj = (SHashObj *)handle;
  if (pObj == ((void*)0) || pObj->maxSessions <= 0) return ((void*)0);

  pthread_mutex_lock(&pObj->mutex);

  if (pObj->hashList) {
    for (int i = 0; i < pObj->maxSessions; ++i) {
      pNode = pObj->hashList[i];
      while (pNode) {
        pNext = pNode->next;
        int flag = fp(pNode->data);
        if (flag) {
          pData = pNode->data;
          goto VisitEnd;
        }

        pNode = pNext;
      }
    }
  }

VisitEnd:

  pthread_mutex_unlock(&pObj->mutex);
  return pData;
}
