
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ maxSessions; struct TYPE_4__* ipHashList; scalar_t__ ipHashMemPool; } ;
typedef TYPE_1__ SHashObj ;


 int free (TYPE_1__*) ;
 int memset (TYPE_1__*,int ,int) ;
 int taosMemPoolCleanUp (scalar_t__) ;

void taosCloseIpHash(void *handle) {
  SHashObj *pObj;

  pObj = (SHashObj *)handle;
  if (pObj == ((void*)0) || pObj->maxSessions == 0) return;

  if (pObj->ipHashMemPool) taosMemPoolCleanUp(pObj->ipHashMemPool);

  if (pObj->ipHashList) free(pObj->ipHashList);

  memset(pObj, 0, sizeof(SHashObj));
  free(pObj);
}
