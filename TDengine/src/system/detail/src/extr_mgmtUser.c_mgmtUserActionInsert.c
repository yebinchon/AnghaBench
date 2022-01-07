
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int acct; } ;
typedef TYPE_1__ SUserObj ;
typedef int SAcctObj ;


 int mgmtAddUserIntoAcct (int *,TYPE_1__*) ;
 int * mgmtGetAcct (int ) ;

void *mgmtUserActionInsert(void *row, char *str, int size, int *ssize) {
  SUserObj *pUser = (SUserObj *)row;
  SAcctObj *pAcct = mgmtGetAcct(pUser->acct);
  mgmtAddUserIntoAcct(pAcct, pUser);

  return ((void*)0);
}
