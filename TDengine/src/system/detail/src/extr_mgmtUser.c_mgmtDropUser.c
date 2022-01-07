
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int user; } ;
struct TYPE_5__ {int acct; } ;
typedef TYPE_1__ SUserObj ;
typedef TYPE_2__ SAcctObj ;


 int TSDB_CODE_INVALID_USER ;
 int TSDB_CODE_NO_RIGHTS ;
 int mWarn (char*,char*) ;
 int sdbDeleteRow (int ,TYPE_1__*) ;
 scalar_t__ sdbGetRow (int ,char*) ;
 scalar_t__ strcmp (int ,int ) ;
 int userSdb ;

int mgmtDropUser(SAcctObj *pAcct, char *name) {
  SUserObj *pUser;

  pUser = (SUserObj *)sdbGetRow(userSdb, name);
  if (pUser == ((void*)0)) {
    mWarn("user:%s is not there", name);
    return TSDB_CODE_INVALID_USER;
  }

  if (strcmp(pAcct->user, pUser->acct) != 0) return TSDB_CODE_NO_RIGHTS;


  sdbDeleteRow(userSdb, pUser);

  return 0;
}
