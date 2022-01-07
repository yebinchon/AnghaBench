
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ sqlLen; int vnode; int * pStream; int * pSql; } ;
struct TYPE_5__ {scalar_t__ numOfStreams; int * dbConn; } ;
typedef TYPE_1__ SVnodeObj ;
typedef TYPE_2__ SMeterObj ;


 int taos_close (int *) ;
 TYPE_1__* vnodeList ;
 int vnodeSaveMeterObjToFile (TYPE_2__*) ;

void vnodeCloseStreamCallback(void *param) {
  SMeterObj *pMeter = (SMeterObj *)param;
  SVnodeObj *pVnode = ((void*)0);

  if (pMeter == ((void*)0) || pMeter->sqlLen == 0) return;
  pVnode = vnodeList + pMeter->vnode;

  pMeter->sqlLen = 0;
  pMeter->pSql = ((void*)0);
  pMeter->pStream = ((void*)0);

  pVnode->numOfStreams--;

  if (pVnode->numOfStreams == 0) {
    taos_close(pVnode->dbConn);
    pVnode->dbConn = ((void*)0);
  }

  vnodeSaveMeterObjToFile(pMeter);
}
