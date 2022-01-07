
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int vnode; scalar_t__ sqlLen; int meterId; int sid; int * pStream; } ;
struct TYPE_5__ {scalar_t__ numOfStreams; int * dbConn; } ;
typedef TYPE_1__ SVnodeObj ;
typedef TYPE_2__ SMeterObj ;


 int dTrace (char*,int,int ,int ) ;
 int taos_close (int *) ;
 int taos_close_stream (int *) ;
 TYPE_1__* vnodeList ;

void vnodeRemoveStream(SMeterObj *pObj) {
  SVnodeObj *pVnode = vnodeList + pObj->vnode;
  if (pObj->sqlLen <= 0) return;

  if (pObj->pStream) {
    taos_close_stream(pObj->pStream);
    pVnode->numOfStreams--;
  }

  pObj->pStream = ((void*)0);
  if (pVnode->numOfStreams == 0) {
    taos_close(pVnode->dbConn);
    pVnode->dbConn = ((void*)0);
  }

  dTrace("vid:%d sid:%d id:%d stream is removed", pObj->vnode, pObj->sid, pObj->meterId);
}
