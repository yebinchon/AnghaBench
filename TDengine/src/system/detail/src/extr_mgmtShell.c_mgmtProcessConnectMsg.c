
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_20__ {int numOfIps; } ;
struct TYPE_19__ {int acctId; } ;
struct TYPE_18__ {int user; int ip; int thandle; TYPE_1__* pUser; TYPE_6__* pAcct; int superAuth; int writeAuth; int * pDb; } ;
struct TYPE_17__ {scalar_t__* db; } ;
struct TYPE_16__ {int superAuth; int writeAuth; int version; int acctId; } ;
struct TYPE_15__ {int code; scalar_t__ more; } ;
struct TYPE_14__ {int acct; } ;
typedef TYPE_1__ SUserObj ;
typedef TYPE_2__ STaosRsp ;
typedef int SIpList ;
typedef int SDbObj ;
typedef TYPE_3__ SConnectRsp ;
typedef TYPE_4__ SConnectMsg ;
typedef TYPE_5__ SConnObj ;
typedef TYPE_6__ SAcctObj ;


 int TSDB_CODE_GRANT_EXPIRED ;
 int TSDB_CODE_INVALID_DB ;
 int TSDB_CODE_INVALID_USER ;
 int TSDB_MSG_TYPE_CONNECT_RSP ;
 char* TS_PATH_DELIMITER ;
 int atomic_fetch_sub_32 (int *,int) ;
 scalar_t__ grantCheckExpired () ;
 int mLPrint (char*,int ,char*,int) ;
 int memcpy (char*,TYPE_7__*,int) ;
 int mgmtEstablishConn (TYPE_5__*) ;
 TYPE_6__* mgmtGetAcct (int ) ;
 int * mgmtGetDb (char*) ;
 TYPE_1__* mgmtGetUser (int ) ;
 int mgmtRemoveConnFromAcct (TYPE_5__*) ;
 int mgmtShellConns ;
 TYPE_7__* pSdbPublicIpList ;
 int sdbExtConns ;
 int sprintf (char*,char*,int,...) ;
 int strcpy (int ,int ) ;
 char* taosBuildRspMsgWithSize (int ,int ,int) ;
 int taosSendMsgToPeer (int ,char*,int) ;
 int tinet_ntoa (char*,int ) ;
 int tsTimePrecision ;
 int version ;

int mgmtProcessConnectMsg(char *pMsg, int msgLen, SConnObj *pConn) {
  STaosRsp * pRsp;
  SConnectRsp *pConnectRsp;
  SConnectMsg *pConnectMsg;
  char * pStart;
  int code = TSDB_CODE_INVALID_USER;
  SAcctObj * pAcct = ((void*)0);
  SUserObj * pUser = ((void*)0);
  SDbObj * pDb = ((void*)0);
  char dbName[256] = {0};

  pConnectMsg = (SConnectMsg *)pMsg;

  pUser = mgmtGetUser(pConn->user);
  if (pUser == ((void*)0)) {
    code = TSDB_CODE_INVALID_USER;
    goto _rsp;
  }

  if (grantCheckExpired()) {
    code = TSDB_CODE_GRANT_EXPIRED;
    goto _rsp;
  }

  pAcct = mgmtGetAcct(pUser->acct);

  if (pConnectMsg->db[0]) {
    sprintf(dbName, "%x%s%s", pAcct->acctId, TS_PATH_DELIMITER, pConnectMsg->db);
    pDb = mgmtGetDb(dbName);
    if (pDb == ((void*)0)) {
      code = TSDB_CODE_INVALID_DB;
      goto _rsp;
    }
  }

  if (pConn->pAcct) {
    mgmtRemoveConnFromAcct(pConn);
    atomic_fetch_sub_32(&mgmtShellConns, 1);
    atomic_fetch_sub_32(&sdbExtConns, 1);
  }

  code = 0;
  pConn->pAcct = pAcct;
  pConn->pDb = pDb;
  pConn->pUser = pUser;
  mgmtEstablishConn(pConn);

_rsp:
  pStart = taosBuildRspMsgWithSize(pConn->thandle, TSDB_MSG_TYPE_CONNECT_RSP, 128);
  if (pStart == ((void*)0)) return 0;

  pMsg = pStart;
  pRsp = (STaosRsp *)pMsg;
  pRsp->code = code;
  pMsg += sizeof(STaosRsp);

  if (code == 0) {
    pConnectRsp = (SConnectRsp *)pRsp->more;
    sprintf(pConnectRsp->acctId, "%x", pConn->pAcct->acctId);
    strcpy(pConnectRsp->version, version);
    pConnectRsp->writeAuth = pConn->writeAuth;
    pConnectRsp->superAuth = pConn->superAuth;
    pMsg += sizeof(SConnectRsp);
    *((uint32_t *)pMsg) = tsTimePrecision;
    pMsg += sizeof(uint32_t);

  } else {
    pConn->pAcct = ((void*)0);
    pConn->pUser = ((void*)0);
  }

  msgLen = pMsg - pStart;
  taosSendMsgToPeer(pConn->thandle, pStart, msgLen);

  char ipstr[24];
  tinet_ntoa(ipstr, pConn->ip);
  mLPrint("user:%s login from %s, code:%d", pConn->user, ipstr, code);

  return code;
}
