
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int numOfVgroups; TYPE_1__* pTail; TYPE_2__* pHead; } ;
struct TYPE_9__ {TYPE_1__* prev; TYPE_2__* next; } ;
struct TYPE_8__ {TYPE_1__* prev; } ;
struct TYPE_7__ {TYPE_2__* next; } ;
typedef TYPE_3__ SVgObj ;
typedef TYPE_4__ SDbObj ;



int mgmtRemoveVgroupFromDb(SDbObj *pDb, SVgObj *pVgroup) {
  if (pVgroup->prev) pVgroup->prev->next = pVgroup->next;

  if (pVgroup->next) pVgroup->next->prev = pVgroup->prev;

  if (pVgroup->prev == ((void*)0)) pDb->pHead = pVgroup->next;

  if (pVgroup->next == ((void*)0)) pDb->pTail = pVgroup->prev;

  pDb->numOfVgroups--;

  return 0;
}
