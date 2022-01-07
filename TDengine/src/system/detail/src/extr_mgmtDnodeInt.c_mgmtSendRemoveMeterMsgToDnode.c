
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_17__ {int status; } ;
struct TYPE_16__ {int meterId; int sid; int vnode; } ;
struct TYPE_13__ {int sid; } ;
struct TYPE_15__ {TYPE_2__ gid; int meterId; } ;
struct TYPE_14__ {int numOfVnodes; int lastRemove; TYPE_1__* vnodeGid; } ;
struct TYPE_12__ {int vnode; int ip; } ;
typedef TYPE_3__ SVgObj ;
typedef TYPE_4__ STabObj ;
typedef TYPE_5__ SRemoveMeterMsg ;
typedef TYPE_6__ SDnodeObj ;


 int TSDB_METER_ID_LEN ;
 int TSDB_MSG_TYPE_REMOVE ;
 int htonl (int ) ;
 int htons (int ) ;
 int mTrace (char*,char*,int ,int ,int ) ;
 int memcpy (int ,int ,int ) ;
 TYPE_6__* mgmtGetDnode (int ) ;
 char* taosBuildReqMsgToDnode (TYPE_6__*,int ) ;
 int taosGetTimestampMs () ;
 int taosSendMsgToDnode (TYPE_6__*,char*,int) ;
 int tinet_ntoa (char*,int ) ;

int mgmtSendRemoveMeterMsgToDnode(STabObj *pMeter, SVgObj *pVgroup) {
  SRemoveMeterMsg *pRemove;
  char * pMsg, *pStart;
  int i, msgLen = 0;
  SDnodeObj * pObj;
  char ipstr[20];
  uint64_t timeStamp;

  timeStamp = taosGetTimestampMs();

  for (i = 0; i < pVgroup->numOfVnodes; ++i) {


    pObj = mgmtGetDnode(pVgroup->vnodeGid[i].ip);
    if (pObj == ((void*)0)) continue;

    pStart = taosBuildReqMsgToDnode(pObj, TSDB_MSG_TYPE_REMOVE);
    if (pStart == ((void*)0)) continue;
    pMsg = pStart;

    pRemove = (SRemoveMeterMsg *)pMsg;
    pRemove->vnode = htons(pVgroup->vnodeGid[i].vnode);
    pRemove->sid = htonl(pMeter->gid.sid);
    memcpy(pRemove->meterId, pMeter->meterId, TSDB_METER_ID_LEN);

    pMsg += sizeof(SRemoveMeterMsg);
    msgLen = pMsg - pStart;

    taosSendMsgToDnode(pObj, pStart, msgLen);

    tinet_ntoa(ipstr, pVgroup->vnodeGid[i].ip);
    mTrace("dnode:%s vid:%d, send remove meter msg, sid:%d status:%d", ipstr, pVgroup->vnodeGid[i].vnode,
           pMeter->gid.sid, pObj->status);
  }

  pVgroup->lastRemove = timeStamp;

  return 0;
}
