
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SMgmtObj ;


 int TSDB_MSG_TYPE_ALTER_STREAM ;
 int TSDB_MSG_TYPE_CFG_PNODE ;
 int TSDB_MSG_TYPE_CREATE ;
 int TSDB_MSG_TYPE_FREE_VNODE ;
 int TSDB_MSG_TYPE_GRANT_RSP ;
 int TSDB_MSG_TYPE_METER_CFG_RSP ;
 int TSDB_MSG_TYPE_REMOVE ;
 int TSDB_MSG_TYPE_VPEERS ;
 int TSDB_MSG_TYPE_VPEER_CFG_RSP ;
 int dError (char*,int ) ;
 int * taosMsg ;
 int vnodeProcessAlterStreamRequest (char*,int,int *) ;
 int vnodeProcessCfgDnodeRequest (char*,int,int *) ;
 int vnodeProcessCreateMeterRequest (char*,int,int *) ;
 int vnodeProcessFreeVnodeRequest (char*,int,int *) ;
 int vnodeProcessMeterCfgRsp (char*,int,int *) ;
 int vnodeProcessRemoveMeterRequest (char*,int,int *) ;
 int vnodeProcessVPeerCfgRsp (char*,int,int *) ;
 int vnodeProcessVPeersMsg (char*,int,int *) ;

void vnodeProcessMsgFromMgmt(char *content, int msgLen, int msgType, SMgmtObj *pObj) {
  if (msgType == TSDB_MSG_TYPE_CREATE) {
    vnodeProcessCreateMeterRequest(content, msgLen, pObj);
  } else if (msgType == TSDB_MSG_TYPE_VPEERS) {
    vnodeProcessVPeersMsg(content, msgLen, pObj);
  } else if (msgType == TSDB_MSG_TYPE_VPEER_CFG_RSP) {
    vnodeProcessVPeerCfgRsp(content, msgLen, pObj);
  } else if (msgType == TSDB_MSG_TYPE_METER_CFG_RSP) {
    vnodeProcessMeterCfgRsp(content, msgLen, pObj);
  } else if (msgType == TSDB_MSG_TYPE_REMOVE) {
    vnodeProcessRemoveMeterRequest(content, msgLen, pObj);
  } else if (msgType == TSDB_MSG_TYPE_FREE_VNODE) {
    vnodeProcessFreeVnodeRequest(content, msgLen, pObj);
  } else if (msgType == TSDB_MSG_TYPE_CFG_PNODE) {
    vnodeProcessCfgDnodeRequest(content, msgLen, pObj);
  } else if (msgType == TSDB_MSG_TYPE_ALTER_STREAM) {
    vnodeProcessAlterStreamRequest(content, msgLen, pObj);
  } else if (msgType == TSDB_MSG_TYPE_GRANT_RSP) {

  } else {
    dError("%s is not processed", taosMsg[msgType]);
  }
}
