
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int thandle; int writeAuth; } ;
struct TYPE_5__ {int queryId; } ;
typedef TYPE_1__ SKillQuery ;
typedef TYPE_2__ SConnObj ;


 int TSDB_CODE_NO_RIGHTS ;
 int TSDB_MSG_TYPE_KILL_QUERY_RSP ;
 int mgmtKillQuery (int ,TYPE_2__*) ;
 int taosSendSimpleRsp (int ,int ,int) ;

int mgmtProcessKillQueryMsg(char *pMsg, int msgLen, SConnObj *pConn) {
  int code = 0;
  SKillQuery *pKill = (SKillQuery *)pMsg;

  if (!pConn->writeAuth) {
    code = TSDB_CODE_NO_RIGHTS;
  } else {
    code = mgmtKillQuery(pKill->queryId, pConn);
  }

  taosSendSimpleRsp(pConn->thandle, TSDB_MSG_TYPE_KILL_QUERY_RSP, code);

  return 0;
}
