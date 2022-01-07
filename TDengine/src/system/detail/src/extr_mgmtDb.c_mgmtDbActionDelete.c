
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int acct; } ;
struct TYPE_5__ {TYPE_1__ cfg; } ;
typedef TYPE_2__ SDbObj ;
typedef int SAcctObj ;


 int * mgmtGetAcct (int ) ;
 int mgmtRemoveDbFromAcct (int *,TYPE_2__*) ;

void *mgmtDbActionDelete(void *row, char *str, int size, int *ssize) {
  SDbObj * pDb = (SDbObj *)row;
  SAcctObj *pAcct = mgmtGetAcct(pDb->cfg.acct);
  mgmtRemoveDbFromAcct(pAcct, pDb);

  return ((void*)0);
}
