
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ sqlLen; int * pStream; int lastKey; int pSql; int meterId; int vnode; } ;
struct TYPE_7__ {int maxSessions; char* acct; } ;
struct TYPE_8__ {scalar_t__ streamRole; int numOfStreams; int * dbConn; int * streamTimer; int vnode; TYPE_1__ cfg; TYPE_3__** meterList; } ;
typedef TYPE_2__ SVnodeObj ;
typedef TYPE_3__ SMeterObj ;


 int TSDB_METER_STATE_DELETING ;
 int dError (char*,int ) ;
 int dTrace (char*,int ,int,int ,int ) ;
 int sprintf (char*,char*,char*) ;
 int taosTmrReset (void (*) (void*,void*),int,void*,int ,int **) ;
 int taosTmrStopA (int **) ;
 int * taos_connect (int *,char*,int ,char*,int ) ;
 int * taos_open_stream (int *,int ,int ,int ,TYPE_3__*,int ) ;
 int tsInternalPass ;
 int vnodeCloseStreamCallback ;
 int vnodeGetDBFromMeterId (TYPE_3__*,char*) ;
 scalar_t__ vnodeIsMeterState (TYPE_3__*,int ) ;
 int vnodeProcessStreamRes ;
 int vnodeTmrCtrl ;

void vnodeOpenStreams(void *param, void *tmrId) {
  SVnodeObj *pVnode = (SVnodeObj *)param;
  SMeterObj *pObj;

  if (pVnode->streamRole == 0) return;
  if (pVnode->meterList == ((void*)0)) return;

  taosTmrStopA(&pVnode->streamTimer);
  pVnode->streamTimer = ((void*)0);

  for (int sid = 0; sid < pVnode->cfg.maxSessions; ++sid) {
    pObj = pVnode->meterList[sid];
    if (pObj == ((void*)0) || pObj->sqlLen == 0 || vnodeIsMeterState(pObj, TSDB_METER_STATE_DELETING)) continue;

    dTrace("vid:%d sid:%d id:%s, open stream:%s", pObj->vnode, sid, pObj->meterId, pObj->pSql);

    if (pVnode->dbConn == ((void*)0)) {
      char db[64] = {0};
      char user[64] = {0};
      vnodeGetDBFromMeterId(pObj, db);
      sprintf(user, "_%s", pVnode->cfg.acct);
      pVnode->dbConn = taos_connect(((void*)0), user, tsInternalPass, db, 0);
    }

    if (pVnode->dbConn == ((void*)0)) {
      dError("vid:%d, failed to connect to mgmt node", pVnode->vnode);
      taosTmrReset(vnodeOpenStreams, 1000, param, vnodeTmrCtrl, &pVnode->streamTimer);
      return;
    }

    if (pObj->pStream == ((void*)0)) {
      pObj->pStream = taos_open_stream(pVnode->dbConn, pObj->pSql, vnodeProcessStreamRes, pObj->lastKey, pObj,
                                       vnodeCloseStreamCallback);
      if (pObj->pStream) pVnode->numOfStreams++;
    }
  }
}
