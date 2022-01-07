
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int acct; } ;
struct TYPE_5__ {int * pMetric; int * vgTimer; scalar_t__ numOfTables; scalar_t__ numOfVgroups; int * pTail; int * pHead; TYPE_1__ cfg; } ;
typedef TYPE_2__ SDbObj ;
typedef int SAcctObj ;


 int mgmtAddDbIntoAcct (int *,TYPE_2__*) ;
 int * mgmtGetAcct (int ) ;

void *mgmtDbActionInsert(void *row, char *str, int size, int *ssize) {
  SDbObj * pDb = (SDbObj *)row;
  SAcctObj *pAcct = mgmtGetAcct(pDb->cfg.acct);

  pDb->pHead = ((void*)0);
  pDb->pTail = ((void*)0);
  pDb->numOfVgroups = 0;
  pDb->numOfTables = 0;
  pDb->vgTimer = ((void*)0);
  pDb->pMetric = ((void*)0);
  mgmtAddDbIntoAcct(pAcct, pDb);

  return ((void*)0);
}
