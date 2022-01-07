
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int thandle; int superAuth; } ;
struct TYPE_5__ {int queryId; } ;
typedef TYPE_1__ SKillConnection ;
typedef TYPE_2__ SConnObj ;


 int TSDB_CODE_NO_RIGHTS ;
 int TSDB_MSG_TYPE_KILL_CONNECTION_RSP ;
 int mgmtKillConnection (int ,TYPE_2__*) ;
 int taosSendSimpleRsp (int ,int ,int) ;

int mgmtProcessKillConnectionMsg(char *pMsg, int msgLen, SConnObj *pConn) {
  int code = 0;
  SKillConnection *pKill = (SKillConnection *)pMsg;

  if (!pConn->superAuth) {
    code = TSDB_CODE_NO_RIGHTS;
  } else {
    code = mgmtKillConnection(pKill->queryId, pConn);
  }

  taosSendSimpleRsp(pConn->thandle, TSDB_MSG_TYPE_KILL_CONNECTION_RSP, code);

  return 0;
}
