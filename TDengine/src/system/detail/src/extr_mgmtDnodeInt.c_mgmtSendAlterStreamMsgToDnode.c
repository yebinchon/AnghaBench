
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_12__ {int status; int uid; int sid; int vnode; } ;
struct TYPE_9__ {int sid; } ;
struct TYPE_11__ {int status; int uid; TYPE_2__ gid; } ;
struct TYPE_10__ {int numOfVnodes; TYPE_1__* vnodeGid; } ;
struct TYPE_8__ {scalar_t__ ip; int vnode; } ;
typedef TYPE_3__ SVgObj ;
typedef TYPE_4__ STabObj ;
typedef int SDnodeObj ;
typedef TYPE_5__ SAlterStreamMsg ;


 int TSDB_MSG_TYPE_ALTER_STREAM ;
 int htonl (int ) ;
 int htons (int ) ;
 int * mgmtGetDnode (scalar_t__) ;
 char* taosBuildReqMsgToDnode (int *,int ) ;
 int taosSendMsgToDnode (int *,char*,int) ;

int mgmtSendAlterStreamMsgToDnode(STabObj *pMeter, SVgObj *pVgroup) {
  SAlterStreamMsg *pAlter;
  char * pMsg, *pStart;
  int i, msgLen = 0;
  SDnodeObj * pObj;

  for (i = 0; i < pVgroup->numOfVnodes; ++i) {
    if (pVgroup->vnodeGid[i].ip == 0) continue;

    pObj = mgmtGetDnode(pVgroup->vnodeGid[i].ip);
    if (pObj == ((void*)0)) continue;

    pStart = taosBuildReqMsgToDnode(pObj, TSDB_MSG_TYPE_ALTER_STREAM);
    if (pStart == ((void*)0)) continue;
    pMsg = pStart;

    pAlter = (SAlterStreamMsg *)pMsg;
    pAlter->vnode = htons(pVgroup->vnodeGid[i].vnode);
    pAlter->sid = htonl(pMeter->gid.sid);
    pAlter->uid = pMeter->uid;
    pAlter->status = pMeter->status;

    pMsg += sizeof(SAlterStreamMsg);
    msgLen = pMsg - pStart;

    taosSendMsgToDnode(pObj, pStart, msgLen);
  }

  return 0;
}
