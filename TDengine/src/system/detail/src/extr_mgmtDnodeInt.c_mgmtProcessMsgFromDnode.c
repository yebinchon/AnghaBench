
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SIntMsg ;
typedef int SDnodeObj ;


 int TSDB_MSG_TYPE_ALTER_STREAM_RSP ;
 int TSDB_MSG_TYPE_CFG_PNODE_RSP ;
 int TSDB_MSG_TYPE_CREATE_RSP ;
 int TSDB_MSG_TYPE_FREE_VNODE_RSP ;
 int TSDB_MSG_TYPE_METER_CFG ;
 int TSDB_MSG_TYPE_REMOVE_RSP ;
 int TSDB_MSG_TYPE_VPEERS_RSP ;
 int TSDB_MSG_TYPE_VPEER_CFG ;
 int mError (char*,int ) ;
 int mgmtProcessCreateRsp (char*,int,int *) ;
 int mgmtProcessFreeVnodeRsp (char*,int,int *) ;
 int mgmtProcessMeterCfgMsg (char*,int,int *) ;
 int mgmtProcessVPeersRsp (char*,int,int *) ;
 int mgmtProcessVpeerCfgMsg (char*,int,int *) ;
 int * taosMsg ;

void mgmtProcessMsgFromDnode(char *content, int msgLen, int msgType, SDnodeObj *pObj) {
  if (msgType == TSDB_MSG_TYPE_METER_CFG) {
    mgmtProcessMeterCfgMsg(content, msgLen - sizeof(SIntMsg), pObj);
  } else if (msgType == TSDB_MSG_TYPE_VPEER_CFG) {
    mgmtProcessVpeerCfgMsg(content, msgLen - sizeof(SIntMsg), pObj);
  } else if (msgType == TSDB_MSG_TYPE_CREATE_RSP) {
    mgmtProcessCreateRsp(content, msgLen - sizeof(SIntMsg), pObj);
  } else if (msgType == TSDB_MSG_TYPE_REMOVE_RSP) {

  } else if (msgType == TSDB_MSG_TYPE_VPEERS_RSP) {
    mgmtProcessVPeersRsp(content, msgLen - sizeof(SIntMsg), pObj);
  } else if (msgType == TSDB_MSG_TYPE_FREE_VNODE_RSP) {
    mgmtProcessFreeVnodeRsp(content, msgLen - sizeof(SIntMsg), pObj);
  } else if (msgType == TSDB_MSG_TYPE_CFG_PNODE_RSP) {

  } else if (msgType == TSDB_MSG_TYPE_ALTER_STREAM_RSP) {

  } else {
    mError("%s from dnode is not processed", taosMsg[msgType]);
  }
}
