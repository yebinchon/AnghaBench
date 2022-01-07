
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_10__ {char* user; } ;
struct TYPE_9__ {char* user; char* acct; int superAuth; int writeAuth; int createdTime; int pass; } ;
typedef TYPE_1__ SUserObj ;
typedef TYPE_2__ SAcctObj ;


 int TSDB_CODE_SDB_ERROR ;
 int TSDB_CODE_SUCCESS ;
 int TSDB_CODE_USER_ALREADY_EXIST ;
 int mWarn (char*,char*) ;
 TYPE_1__* malloc (int) ;
 int memset (TYPE_1__*,int ,int) ;
 int mgmtCheckUserGrant () ;
 int mgmtCheckUserLimit (TYPE_2__*) ;
 scalar_t__ sdbGetRow (int ,char*) ;
 scalar_t__ sdbInsertRow (int ,TYPE_1__*,int ) ;
 scalar_t__ strcmp (char*,char*) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;
 int taosEncryptPass (int *,int ,int ) ;
 int taosGetTimestampMs () ;
 int tfree (TYPE_1__*) ;
 int userSdb ;

int mgmtCreateUser(SAcctObj *pAcct, char *name, char *pass) {
  SUserObj *pUser;
  int code;

  code = mgmtCheckUserLimit(pAcct);
  if (code != 0) {
    return code;
  }

  pUser = (SUserObj *)sdbGetRow(userSdb, name);
  if (pUser != ((void*)0)) {
    mWarn("user:%s is already there", name);
    return TSDB_CODE_USER_ALREADY_EXIST;
  }

  code = mgmtCheckUserGrant();
  if (code != 0) {
    return code;
  }

  pUser = malloc(sizeof(SUserObj));
  memset(pUser, 0, sizeof(SUserObj));
  strcpy(pUser->user, name);
  taosEncryptPass((uint8_t*) pass, strlen(pass), pUser->pass);
  strcpy(pUser->acct, pAcct->user);
  pUser->createdTime = taosGetTimestampMs();
  pUser->superAuth = 0;
  pUser->writeAuth = 1;
  if (strcmp(pUser->user, "root") == 0 || strcmp(pUser->user, pUser->acct) == 0) {
    pUser->superAuth = 1;
  }

  code = TSDB_CODE_SUCCESS;
  if (sdbInsertRow(userSdb, pUser, 0) < 0) {
    tfree(pUser);
    code = TSDB_CODE_SDB_ERROR;
  }



  return code;
}
