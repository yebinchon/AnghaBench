
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int user; scalar_t__ acctId; } ;
typedef TYPE_1__ SAcctObj ;


 TYPE_1__ acctObj ;
 int mgmtCreateUser (TYPE_1__*,char*,char*) ;
 int strcpy (int ,char*) ;
 char* tsInternalPass ;

void mgmtCheckAcct() {
  SAcctObj *pAcct = &acctObj;
  pAcct->acctId = 0;
  strcpy(pAcct->user, "root");

  mgmtCreateUser(pAcct, "root", "taosdata");
  mgmtCreateUser(pAcct, "monitor", tsInternalPass);
  mgmtCreateUser(pAcct, "_root", tsInternalPass);
}
