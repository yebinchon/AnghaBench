
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ sqlLen; int * pStream; } ;
struct TYPE_5__ {int maxSessions; } ;
struct TYPE_6__ {int numOfStreams; TYPE_3__** meterList; TYPE_1__ cfg; int streamRole; int vnode; } ;
typedef TYPE_2__ SVnodeObj ;
typedef TYPE_3__ SMeterObj ;


 int dTrace (char*,int ,int ) ;
 int taos_close_stream (int *) ;

void vnodeCloseStream(SVnodeObj *pVnode) {
  SMeterObj *pObj;
  dTrace("vid:%d, stream is closed, old role:%d", pVnode->vnode, pVnode->streamRole);


  for (int sid = 0; sid < pVnode->cfg.maxSessions; ++sid) {
    pObj = pVnode->meterList[sid];
    if (pObj == ((void*)0)) continue;
    if (pObj->sqlLen > 0 && pObj->pStream) {
      taos_close_stream(pObj->pStream);
      pVnode->numOfStreams--;
    }
    pObj->pStream = ((void*)0);
  }
}
