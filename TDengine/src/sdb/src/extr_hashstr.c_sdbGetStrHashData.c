
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {void* data; struct TYPE_5__* next; int string; } ;
struct TYPE_4__ {scalar_t__ maxSessions; TYPE_2__** hashList; } ;
typedef TYPE_1__ SHashObj ;
typedef TYPE_2__ SHashNode ;


 int sdbHashString (TYPE_1__*,char*) ;
 scalar_t__ strcmp (int ,char*) ;

void *sdbGetStrHashData(void *handle, void *key) {
  int hash;
  SHashNode *pNode;
  SHashObj * pObj;
  char * string = (char *)key;

  pObj = (SHashObj *)handle;
  if (pObj == ((void*)0) || pObj->maxSessions == 0) return ((void*)0);

  hash = sdbHashString(pObj, string);
  pNode = pObj->hashList[hash];

  while (pNode) {
    if (strcmp(pNode->string, string) == 0) {
      break;
    }
    pNode = pNode->next;
  }

  if (pNode) return pNode->data;

  return ((void*)0);
}
