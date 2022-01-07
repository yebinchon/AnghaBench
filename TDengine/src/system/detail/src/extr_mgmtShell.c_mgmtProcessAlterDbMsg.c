
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int db; void* maxSessions; void* daysToKeep; void* daysPerFile; } ;
struct TYPE_8__ {int thandle; TYPE_1__* pUser; int pAcct; int writeAuth; } ;
struct TYPE_7__ {int user; } ;
typedef TYPE_2__ SConnObj ;
typedef TYPE_3__ SAlterDbMsg ;


 int TSDB_CODE_NO_RIGHTS ;
 int TSDB_CODE_SUCCESS ;
 int TSDB_MSG_TYPE_ALTER_DB_RSP ;
 void* htonl (void*) ;
 int mLPrint (char*,int ,int ) ;
 int mgmtAlterDb (int ,TYPE_3__*) ;
 scalar_t__ mgmtCheckRedirectMsg (TYPE_2__*,int ) ;
 int taosSendSimpleRsp (int ,int ,int) ;

int mgmtProcessAlterDbMsg(char *pMsg, int msgLen, SConnObj *pConn) {
  SAlterDbMsg *pAlter = (SAlterDbMsg *)pMsg;
  int code = 0;

  if (mgmtCheckRedirectMsg(pConn, TSDB_MSG_TYPE_ALTER_DB_RSP) != 0) {
    return 0;
  }

  pAlter->daysPerFile = htonl(pAlter->daysPerFile);
  pAlter->daysToKeep = htonl(pAlter->daysToKeep);
  pAlter->maxSessions = htonl(pAlter->maxSessions) + 1;

  if (!pConn->writeAuth) {
    code = TSDB_CODE_NO_RIGHTS;
  } else {
    code = mgmtAlterDb(pConn->pAcct, pAlter);
    if (code == TSDB_CODE_SUCCESS) {
      mLPrint("DB:%s is altered by %s", pAlter->db, pConn->pUser->user);
    }
  }

  taosSendSimpleRsp(pConn->thandle, TSDB_MSG_TYPE_ALTER_DB_RSP, code);

  return 0;
}
