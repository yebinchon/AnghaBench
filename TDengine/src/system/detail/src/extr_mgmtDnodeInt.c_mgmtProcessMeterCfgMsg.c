
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef void* int32_t ;
struct TYPE_13__ {int numOfVnodes; int privateIp; TYPE_1__* vload; } ;
struct TYPE_12__ {int vnode; int sid; } ;
struct TYPE_11__ {int ** meterList; } ;
struct TYPE_10__ {int vgId; } ;
typedef TYPE_2__ SVgObj ;
typedef int STabObj ;
typedef TYPE_3__ SMeterCfgMsg ;
typedef TYPE_4__ SDnodeObj ;


 char TSDB_CODE_INVALID_METER_ID ;
 int TSDB_CODE_SERV_OUT_OF_MEMORY ;
 int TSDB_MSG_TYPE_METER_CFG_RSP ;
 void* htonl (int) ;
 int mTrace (char*,int ,int,int) ;
 char* mgmtBuildCreateMeterIe (int *,char*,int) ;
 TYPE_2__* mgmtGetVgroup (int) ;
 char* taosBuildRspMsgToDnodeWithSize (TYPE_4__*,int ,int) ;
 int taosIpStr (int ) ;
 int taosSendMsgToDnode (TYPE_4__*,char*,int) ;
 int taosSendSimpleRspToDnode (TYPE_4__*,int ,int ) ;

int mgmtProcessMeterCfgMsg(char *cont, int contLen, SDnodeObj *pObj) {
  char * pMsg, *pStart;
  int msgLen = 0;
  STabObj * pMeter = ((void*)0);
  SMeterCfgMsg *pCfg = (SMeterCfgMsg *)cont;
  SVgObj * pVgroup;

  int vnode = htonl(pCfg->vnode);
  int sid = htonl(pCfg->sid);

  pStart = taosBuildRspMsgToDnodeWithSize(pObj, TSDB_MSG_TYPE_METER_CFG_RSP, 64000);
  if (pStart == ((void*)0)) {
    taosSendSimpleRspToDnode(pObj, TSDB_MSG_TYPE_METER_CFG_RSP, TSDB_CODE_SERV_OUT_OF_MEMORY);
    return 0;
  }
  pMsg = pStart;

  if (vnode < pObj->numOfVnodes) {
    int vgId = pObj->vload[vnode].vgId;

    pVgroup = mgmtGetVgroup(vgId);
    if (pVgroup) pMeter = pVgroup->meterList[sid];
  }

  if (pMeter) {
    *pMsg = 0;
    pMsg++;
    pMsg = mgmtBuildCreateMeterIe(pMeter, pMsg, vnode);
  } else {
    mTrace("dnode:%s, vnode:%d sid:%d, meter not there", taosIpStr(pObj->privateIp), vnode, sid);
    *pMsg = TSDB_CODE_INVALID_METER_ID;
    pMsg++;

    *(int32_t *)pMsg = htonl(vnode);
    pMsg += sizeof(int32_t);
    *(int32_t *)pMsg = htonl(sid);
    pMsg += sizeof(int32_t);
  }

  msgLen = pMsg - pStart;
  taosSendMsgToDnode(pObj, pStart, msgLen);

  return 0;
}
