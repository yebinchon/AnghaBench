
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int thandle; TYPE_1__* pUser; int pAcct; int writeAuth; } ;
struct TYPE_8__ {int db; void* rowsInFileBlock; int blocksPerMeter; void* commitTime; void* daysToKeep2; void* daysToKeep1; void* daysToKeep; void* daysPerFile; void* cacheBlockSize; void* maxSessions; } ;
struct TYPE_7__ {int user; } ;
typedef TYPE_2__ SCreateDbMsg ;
typedef TYPE_3__ SConnObj ;


 int TSDB_CODE_GRANT_EXPIRED ;
 int TSDB_CODE_NO_RIGHTS ;
 int TSDB_CODE_SUCCESS ;
 int TSDB_MSG_TYPE_CREATE_DB_RSP ;
 scalar_t__ grantCheckExpired () ;
 void* htonl (void*) ;
 int htons (int ) ;
 int mLPrint (char*,int ,int ) ;
 scalar_t__ mgmtCheckRedirectMsg (TYPE_3__*,int ) ;
 int mgmtCreateDb (int ,TYPE_2__*) ;
 int taosSendSimpleRsp (int ,int ,int) ;

int mgmtProcessCreateDbMsg(char *pMsg, int msgLen, SConnObj *pConn) {
  SCreateDbMsg *pCreate = (SCreateDbMsg *)pMsg;
  int code = 0;

  if (mgmtCheckRedirectMsg(pConn, TSDB_MSG_TYPE_CREATE_DB_RSP) != 0) {
    return 0;
  }

  pCreate->maxSessions = htonl(pCreate->maxSessions);
  pCreate->cacheBlockSize = htonl(pCreate->cacheBlockSize);

  pCreate->daysPerFile = htonl(pCreate->daysPerFile);
  pCreate->daysToKeep = htonl(pCreate->daysToKeep);
  pCreate->daysToKeep1 = htonl(pCreate->daysToKeep1);
  pCreate->daysToKeep2 = htonl(pCreate->daysToKeep2);
  pCreate->commitTime = htonl(pCreate->commitTime);
  pCreate->blocksPerMeter = htons(pCreate->blocksPerMeter);
  pCreate->rowsInFileBlock = htonl(pCreate->rowsInFileBlock);

  if (grantCheckExpired()) {
    code = TSDB_CODE_GRANT_EXPIRED;
  } else if (!pConn->writeAuth) {
    code = TSDB_CODE_NO_RIGHTS;
  } else {
    code = mgmtCreateDb(pConn->pAcct, pCreate);
    if (code == TSDB_CODE_SUCCESS) {
      mLPrint("DB:%s is created by %s", pCreate->db, pConn->pUser->user);
    }
  }

  taosSendSimpleRsp(pConn->thandle, TSDB_MSG_TYPE_CREATE_DB_RSP, code);

  return 0;
}
