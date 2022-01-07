
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int ip; } ;
struct TYPE_9__ {TYPE_1__* pUser; int thandle; TYPE_2__* pAcct; } ;
struct TYPE_8__ {int user; } ;
struct TYPE_7__ {int user; } ;
typedef TYPE_3__ SConnObj ;
typedef TYPE_4__ SCfgMsg ;


 int TSDB_CODE_NO_RIGHTS ;
 int TSDB_MSG_TYPE_CFG_MNODE_RSP ;
 int TSDB_MSG_TYPE_CFG_PNODE_RSP ;
 int mTrace (char*,int ,int ) ;
 scalar_t__ mgmtCheckRedirectMsg (TYPE_3__*,int ) ;
 int mgmtSendCfgDnodeMsg (char*) ;
 scalar_t__ strcmp (int ,char*) ;
 int taosSendSimpleRsp (int ,int ,int) ;

int mgmtProcessCfgDnodeMsg(char *pMsg, int msgLen, SConnObj *pConn) {
  int code = 0;
  SCfgMsg *pCfg = (SCfgMsg *)pMsg;

  if (mgmtCheckRedirectMsg(pConn, TSDB_MSG_TYPE_CFG_MNODE_RSP) != 0) {
    return 0;
  }

  if (strcmp(pConn->pAcct->user, "root") != 0) {
    code = TSDB_CODE_NO_RIGHTS;
  } else {
    code = mgmtSendCfgDnodeMsg(pMsg);
  }

  taosSendSimpleRsp(pConn->thandle, TSDB_MSG_TYPE_CFG_PNODE_RSP, code);

  if (code == 0) mTrace("dnode:%s is configured by %s", pCfg->ip, pConn->pUser->user);

  return 0;
}
