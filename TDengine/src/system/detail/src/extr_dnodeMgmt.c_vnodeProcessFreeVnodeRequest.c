
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ int32_t ;
struct TYPE_2__ {scalar_t__ vnode; } ;
typedef int SMgmtObj ;
typedef TYPE_1__ SFreeVnodeMsg ;


 scalar_t__ TSDB_CODE_ACTION_IN_PROGRESS ;
 scalar_t__ TSDB_CODE_SUCCESS ;
 scalar_t__ TSDB_MAX_VNODES ;
 int TSDB_MSG_TYPE_FREE_VNODE_RSP ;
 int assert (int) ;
 int dTrace (char*,scalar_t__) ;
 int dWarn (char*,scalar_t__) ;
 scalar_t__ htons (scalar_t__) ;
 int taosSendSimpleRspToMnode (int *,int ,scalar_t__) ;
 scalar_t__ vnodeRemoveVnode (scalar_t__) ;

int vnodeProcessFreeVnodeRequest(char *pMsg, int msgLen, SMgmtObj *pMgmtObj) {
  SFreeVnodeMsg *pFree;

  pFree = (SFreeVnodeMsg *)pMsg;
  pFree->vnode = htons(pFree->vnode);

  if (pFree->vnode < 0 || pFree->vnode >= TSDB_MAX_VNODES) {
    dWarn("vid:%d out of range", pFree->vnode);
    return -1;
  }

  dTrace("vid:%d receive free vnode message", pFree->vnode);
  int32_t code = vnodeRemoveVnode(pFree->vnode);
  assert(code == TSDB_CODE_SUCCESS || code == TSDB_CODE_ACTION_IN_PROGRESS);

  taosSendSimpleRspToMnode(pMgmtObj, TSDB_MSG_TYPE_FREE_VNODE_RSP, code);
  return 0;
}
