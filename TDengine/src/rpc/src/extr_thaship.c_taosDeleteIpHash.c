
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_7__ {scalar_t__ maxSessions; int ipHashMemPool; TYPE_2__** ipHashList; } ;
struct TYPE_6__ {short port; TYPE_1__* prev; struct TYPE_6__* next; int ip; } ;
struct TYPE_5__ {TYPE_2__* next; } ;
typedef TYPE_2__ SIpHash ;
typedef TYPE_3__ SHashObj ;


 int taosHashIp (TYPE_3__*,int ,short) ;
 int taosMemPoolFree (int ,char*) ;

void taosDeleteIpHash(void *handle, uint32_t ip, short port) {
  int hash;
  SIpHash * pNode;
  SHashObj *pObj;

  pObj = (SHashObj *)handle;
  if (pObj == ((void*)0) || pObj->maxSessions == 0) return;

  hash = taosHashIp(pObj, ip, port);

  pNode = pObj->ipHashList[hash];
  while (pNode) {
    if (pNode->ip == ip && pNode->port == port) break;

    pNode = pNode->next;
  }

  if (pNode) {
    if (pNode->prev) {
      pNode->prev->next = pNode->next;
    } else {
      pObj->ipHashList[hash] = pNode->next;
    }

    if (pNode->next) {
      pNode->next->prev = pNode->prev;
    }

    taosMemPoolFree(pObj->ipHashMemPool, (char *)pNode);
  }
}
