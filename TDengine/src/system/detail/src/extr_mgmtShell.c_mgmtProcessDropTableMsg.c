
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int thandle; TYPE_1__* pUser; int pDb; int writeAuth; } ;
struct TYPE_7__ {int meterId; int igNotExists; } ;
struct TYPE_6__ {int user; } ;
typedef TYPE_2__ SDropTableMsg ;
typedef TYPE_3__ SConnObj ;


 int TSDB_CODE_NO_RIGHTS ;
 int TSDB_MSG_TYPE_DROP_TABLE_RSP ;
 int mTrace (char*,int ,int ) ;
 scalar_t__ mgmtCheckRedirectMsg (TYPE_3__*,int ) ;
 int mgmtDropMeter (int ,int ,int ) ;
 int taosSendSimpleRsp (int ,int ,int) ;

int mgmtProcessDropTableMsg(char *pMsg, int msgLen, SConnObj *pConn) {
  SDropTableMsg *pDrop = (SDropTableMsg *)pMsg;
  int code;

  if (mgmtCheckRedirectMsg(pConn, TSDB_MSG_TYPE_DROP_TABLE_RSP) != 0) {
    return 0;
  }

  if (!pConn->writeAuth) {
    code = TSDB_CODE_NO_RIGHTS;
  } else {
    code = mgmtDropMeter(pConn->pDb, pDrop->meterId, pDrop->igNotExists);
    if (code == 0) {
      mTrace("meter:%s is dropped by user:%s", pDrop->meterId, pConn->pUser->user);

    }

    taosSendSimpleRsp(pConn->thandle, TSDB_MSG_TYPE_DROP_TABLE_RSP, code);
  }

  return 0;
}
