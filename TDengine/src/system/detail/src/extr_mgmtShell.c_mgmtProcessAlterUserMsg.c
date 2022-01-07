
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_14__ {int flag; int privilege; int user; int pass; } ;
struct TYPE_13__ {int thandle; TYPE_2__* pUser; scalar_t__ superAuth; TYPE_1__* pAcct; } ;
struct TYPE_12__ {char* user; char* acct; int superAuth; int writeAuth; int pass; } ;
struct TYPE_11__ {char* user; } ;
struct TYPE_10__ {char* user; } ;
typedef TYPE_3__ SUserObj ;
typedef TYPE_4__ SConnObj ;
typedef TYPE_5__ SAlterUserMsg ;


 int TSDB_ALTER_USER_PASSWD ;
 int TSDB_ALTER_USER_PRIVILEGES ;
 int TSDB_CODE_INVALID_USER ;
 int TSDB_CODE_NO_RIGHTS ;
 int TSDB_MSG_TYPE_ALTER_USER_RSP ;
 int mLPrint (char*,int ,char*) ;
 int memset (int ,int ,int) ;
 scalar_t__ mgmtCheckRedirectMsg (TYPE_4__*,int ) ;
 TYPE_3__* mgmtGetUser (int ) ;
 int mgmtUpdateUser (TYPE_3__*) ;
 scalar_t__ strcmp (char*,char*) ;
 int strlen (int ) ;
 int taosEncryptPass (int ,int ,int ) ;
 int taosSendSimpleRsp (int ,int ,int) ;

int mgmtProcessAlterUserMsg(char *pMsg, int msgLen, SConnObj *pConn) {
  SAlterUserMsg *pAlter = (SAlterUserMsg *)pMsg;
  int code = 0;
  SUserObj * pUser;

  if (mgmtCheckRedirectMsg(pConn, TSDB_MSG_TYPE_ALTER_USER_RSP) != 0) {
    return 0;
  }

  pUser = mgmtGetUser(pAlter->user);
  if (pUser == ((void*)0)) {
    taosSendSimpleRsp(pConn->thandle, TSDB_MSG_TYPE_ALTER_USER_RSP, TSDB_CODE_INVALID_USER);
    return 0;
  }

  if (strcmp(pUser->user, "monitor") == 0 || strcmp(pUser->user, "stream") == 0) {
    code = TSDB_CODE_NO_RIGHTS;
  } else if ((strcmp(pUser->user, pConn->pUser->user) == 0) ||
             ((strcmp(pUser->acct, pConn->pAcct->user) == 0) && pConn->superAuth) ||
             (strcmp(pConn->pUser->user, "root") == 0)) {
    if ((pAlter->flag & TSDB_ALTER_USER_PASSWD) != 0) {
      memset(pUser->pass, 0, sizeof(pUser->pass));
      taosEncryptPass(pAlter->pass, strlen(pAlter->pass), pUser->pass);
    }
    if ((pAlter->flag & TSDB_ALTER_USER_PRIVILEGES) != 0) {
      if (pAlter->privilege == 1) {
        pUser->superAuth = 1;
        pUser->writeAuth = 1;
      }
      if (pAlter->privilege == 2) {
        pUser->superAuth = 0;
        pUser->writeAuth = 0;
      }
      if (pAlter->privilege == 3) {
        pUser->superAuth = 0;
        pUser->writeAuth = 1;
      }
    }

    code = mgmtUpdateUser(pUser);
    mLPrint("user:%s is altered by %s", pAlter->user, pConn->pUser->user);
  } else {
    code = TSDB_CODE_NO_RIGHTS;
  }

  taosSendSimpleRsp(pConn->thandle, TSDB_MSG_TYPE_ALTER_USER_RSP, code);

  return 0;
}
