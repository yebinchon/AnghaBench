
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_5__ {int numOfVnodes; int lastCreate; TYPE_1__* vnodeGid; } ;
struct TYPE_4__ {int vnode; int ip; } ;
typedef TYPE_2__ SVgObj ;
typedef int STabObj ;
typedef int SDnodeObj ;


 int TSDB_MSG_TYPE_CREATE ;
 char* mgmtBuildCreateMeterIe (int *,char*,int ) ;
 int * mgmtGetDnode (int ) ;
 char* taosBuildReqMsgToDnodeWithSize (int *,int ,int) ;
 int taosGetTimestampMs () ;
 int taosSendMsgToDnode (int *,char*,int) ;

int mgmtSendCreateMsgToVgroup(STabObj *pMeter, SVgObj *pVgroup) {
  char * pMsg, *pStart;
  int i, msgLen = 0;
  SDnodeObj *pObj;
  uint64_t timeStamp;

  timeStamp = taosGetTimestampMs();

  for (i = 0; i < pVgroup->numOfVnodes; ++i) {


    pObj = mgmtGetDnode(pVgroup->vnodeGid[i].ip);
    if (pObj == ((void*)0)) continue;

    pStart = taosBuildReqMsgToDnodeWithSize(pObj, TSDB_MSG_TYPE_CREATE, 64000);
    if (pStart == ((void*)0)) continue;
    pMsg = mgmtBuildCreateMeterIe(pMeter, pStart, pVgroup->vnodeGid[i].vnode);
    msgLen = pMsg - pStart;

    taosSendMsgToDnode(pObj, pStart, msgLen);
  }

  pVgroup->lastCreate = timeStamp;

  return 0;
}
