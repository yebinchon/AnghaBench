
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ sqlLen; int vnode; scalar_t__ pStream; int lastKey; int pSql; int meterId; int sid; } ;
struct TYPE_7__ {scalar_t__ streamRole; int numOfStreams; int * dbConn; int * streamTimer; } ;
typedef TYPE_1__ SVnodeObj ;
typedef TYPE_2__ SMeterObj ;


 int dTrace (char*,int,int ,int ,int ) ;
 int taosTmrReset (int ,int,TYPE_1__*,int ,int **) ;
 scalar_t__ taos_open_stream (int *,int ,int ,int ,TYPE_2__*,int ) ;
 int vnodeCloseStreamCallback ;
 TYPE_1__* vnodeList ;
 int vnodeOpenStreams ;
 int vnodeProcessStreamRes ;
 int vnodeTmrCtrl ;

void vnodeCreateStream(SMeterObj *pObj) {
  if (pObj->sqlLen <= 0) return;

  SVnodeObj *pVnode = vnodeList + pObj->vnode;

  if (pVnode->streamRole == 0) return;
  if (pObj->pStream) return;

  dTrace("vid:%d sid:%d id:%s stream:%s is created", pObj->vnode, pObj->sid, pObj->meterId, pObj->pSql);
  if (pVnode->dbConn == ((void*)0)) {
    if (pVnode->streamTimer == ((void*)0)) taosTmrReset(vnodeOpenStreams, 1000, pVnode, vnodeTmrCtrl, &pVnode->streamTimer);
  } else {
    pObj->pStream = taos_open_stream(pVnode->dbConn, pObj->pSql, vnodeProcessStreamRes, pObj->lastKey, pObj,
                                     vnodeCloseStreamCallback);
    if (pObj->pStream) pVnode->numOfStreams++;
  }
}
