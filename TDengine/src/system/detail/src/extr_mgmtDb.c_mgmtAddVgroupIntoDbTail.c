
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int numOfVgroups; TYPE_1__* pTail; TYPE_1__* pHead; } ;
struct TYPE_5__ {struct TYPE_5__* next; struct TYPE_5__* prev; } ;
typedef TYPE_1__ SVgObj ;
typedef TYPE_2__ SDbObj ;



int mgmtAddVgroupIntoDbTail(SDbObj *pDb, SVgObj *pVgroup) {
  pVgroup->next = ((void*)0);
  pVgroup->prev = pDb->pTail;

  if (pDb->pTail) pDb->pTail->next = pVgroup;

  if (pDb->pHead == ((void*)0)) pDb->pHead = pVgroup;

  pDb->pTail = pVgroup;
  pDb->numOfVgroups++;

  return 0;
}
