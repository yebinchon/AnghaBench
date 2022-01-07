
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {scalar_t__ maxSessions; TYPE_1__** ipHashList; } ;
struct TYPE_4__ {short port; void* data; struct TYPE_4__* next; int ip; } ;
typedef TYPE_1__ SIpHash ;
typedef TYPE_2__ SHashObj ;


 int taosHashIp (TYPE_2__*,int ,short) ;

void *taosGetIpHash(void *handle, uint32_t ip, short port) {
  int hash;
  SIpHash * pNode;
  SHashObj *pObj;

  pObj = (SHashObj *)handle;
  if (pObj == ((void*)0) || pObj->maxSessions == 0) return ((void*)0);

  hash = taosHashIp(pObj, ip, port);
  pNode = pObj->ipHashList[hash];

  while (pNode) {
    if (pNode->ip == ip && pNode->port == port) {
      break;
    }
    pNode = pNode->next;
  }

  if (pNode) {
    return pNode->data;
  }
  return ((void*)0);
}
