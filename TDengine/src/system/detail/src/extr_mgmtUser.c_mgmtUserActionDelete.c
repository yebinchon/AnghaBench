
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int acct; } ;
typedef TYPE_1__ SUserObj ;
typedef int SAcctObj ;


 int * mgmtGetAcct (int ) ;
 int mgmtRemoveUserFromAcct (int *,TYPE_1__*) ;

void *mgmtUserActionDelete(void *row, char *str, int size, int *ssize) {
  SUserObj *pUser = (SUserObj *)row;
  SAcctObj *pAcct = mgmtGetAcct(pUser->acct);
  mgmtRemoveUserFromAcct(pAcct, pUser);

  return ((void*)0);
}
