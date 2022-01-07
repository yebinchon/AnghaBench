
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_7__ {scalar_t__ keepTimer; int ** connHashList; int connHashMemPool; int * count; int total; int (* cleanFp ) (int ) ;} ;
struct TYPE_6__ {scalar_t__ time; struct TYPE_6__* next; int port; int ip; int data; struct TYPE_6__* prev; } ;
typedef TYPE_1__ SConnHash ;
typedef TYPE_2__ SConnCache ;


 int stub1 (int ) ;
 int taosMemPoolFree (int ,char*) ;
 int tscTrace (char*,int ,int ,int ,int,TYPE_1__*,int ) ;

void taosRemoveExpiredNodes(SConnCache *pObj, SConnHash *pNode, int hash, uint64_t time) {
  if (pNode == ((void*)0)) return;
  if (time < pObj->keepTimer + pNode->time) return;

  SConnHash *pPrev = pNode->prev, *pNext;

  while (pNode) {
    (*pObj->cleanFp)(pNode->data);
    pNext = pNode->next;
    pObj->total--;
    pObj->count[hash]--;
    tscTrace("%p ip:0x%x:%d:%d:%p removed, connections in cache:%d", pNode->data, pNode->ip, pNode->port, hash, pNode,
             pObj->count[hash]);
    taosMemPoolFree(pObj->connHashMemPool, (char *)pNode);
    pNode = pNext;
  }

  if (pPrev)
    pPrev->next = ((void*)0);
  else
    pObj->connHashList[hash] = ((void*)0);
}
