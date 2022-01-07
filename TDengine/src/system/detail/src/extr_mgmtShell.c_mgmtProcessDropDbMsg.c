
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int thandle; TYPE_1__* pUser; int pAcct; int writeAuth; } ;
struct TYPE_7__ {int db; } ;
struct TYPE_6__ {int user; } ;
typedef TYPE_2__ SDropDbMsg ;
typedef TYPE_3__ SConnObj ;


 int TSDB_CODE_NO_RIGHTS ;
 int TSDB_MSG_TYPE_DROP_DB_RSP ;
 int mLPrint (char*,int ,int ) ;
 scalar_t__ mgmtCheckRedirectMsg (TYPE_3__*,int ) ;
 int mgmtDropDbByName (int ,int ) ;
 int taosSendSimpleRsp (int ,int ,int) ;

int mgmtProcessDropDbMsg(char *pMsg, int msgLen, SConnObj *pConn) {
  SDropDbMsg *pDrop = (SDropDbMsg *)pMsg;
  int code;

  if (mgmtCheckRedirectMsg(pConn, TSDB_MSG_TYPE_DROP_DB_RSP) != 0) {
    return 0;
  }

  if (!pConn->writeAuth) {
    code = TSDB_CODE_NO_RIGHTS;
  } else {
    code = mgmtDropDbByName(pConn->pAcct, pDrop->db);
    if (code == 0) {
      mLPrint("DB:%s is dropped by %s", pDrop->db, pConn->pUser->user);
    }
  }
  taosSendSimpleRsp(pConn->thandle, TSDB_MSG_TYPE_DROP_DB_RSP, code);

  return 0;
}
