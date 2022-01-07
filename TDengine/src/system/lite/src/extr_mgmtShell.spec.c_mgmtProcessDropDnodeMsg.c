
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int thandle; } ;
typedef TYPE_1__ SConnObj ;


 int TSDB_CODE_OPS_NOT_SUPPORT ;
 int TSDB_MSG_TYPE_DROP_PNODE_RSP ;
 int taosSendSimpleRsp (int ,int ,int ) ;

int mgmtProcessDropDnodeMsg(char *pMsg, int msgLen, SConnObj *pConn) {
  return taosSendSimpleRsp(pConn->thandle, TSDB_MSG_TYPE_DROP_PNODE_RSP, TSDB_CODE_OPS_NOT_SUPPORT);
}
