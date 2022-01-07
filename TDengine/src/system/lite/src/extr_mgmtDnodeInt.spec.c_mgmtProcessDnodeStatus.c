
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_15__ {int numOfVnodes; int privateIp; TYPE_4__* vload; int diskAvailable; int status; int openVnodes; } ;
struct TYPE_14__ {int dbName; } ;
struct TYPE_13__ {scalar_t__ dropStatus; int vnode; scalar_t__ vgId; int pointsWritten; int compStorage; int totalStorage; void* status; } ;
struct TYPE_11__ {scalar_t__ maxSessions; int vgId; } ;
struct TYPE_10__ {int pointsWritten; int compStorage; int totalStorage; } ;
struct TYPE_12__ {TYPE_2__ cfg; TYPE_1__ vnodeStatistic; } ;
typedef TYPE_3__ SVnodeObj ;
typedef TYPE_4__ SVnodeLoad ;
typedef TYPE_5__ SVgObj ;
typedef TYPE_6__ SDnodeObj ;
typedef int SDbObj ;


 int TSDB_STATUS_READY ;
 scalar_t__ TSDB_VN_STATUS_DROPPING ;
 void* TSDB_VN_STATUS_READY ;
 TYPE_6__ dnodeObj ;
 int mError (char*,...) ;
 int mPrint (char*,int ,int) ;
 int * mgmtGetDb (int ) ;
 TYPE_5__* mgmtGetVgroup (int ) ;
 int mgmtMonitorDbDrop ;
 int * mgmtStatusTimer ;
 int mgmtTmr ;
 int taosGetSysMemory (float*) ;
 int taosTmrReset (void (*) (void*,void*),int,int *,int ,int **) ;
 int taosTmrStart (int ,int,int *,int ) ;
 int tsAvailDataDirGB ;
 int tsOpenVnodes ;
 int tsStatusInterval ;
 TYPE_3__* vnodeList ;

void mgmtProcessDnodeStatus(void *handle, void *tmrId) {
  SDnodeObj *pObj = &dnodeObj;
  pObj->openVnodes = tsOpenVnodes;
  pObj->status = TSDB_STATUS_READY;

  float memoryUsedMB = 0;
  taosGetSysMemory(&memoryUsedMB);
  pObj->diskAvailable = tsAvailDataDirGB;

  for (int vnode = 0; vnode < pObj->numOfVnodes; ++vnode) {
    SVnodeLoad *pVload = &(pObj->vload[vnode]);
    SVnodeObj * pVnode = vnodeList + vnode;


    if (pVload->dropStatus == TSDB_VN_STATUS_DROPPING) {
      if (vnodeList[vnode].cfg.maxSessions <= 0) {
        pVload->dropStatus = TSDB_VN_STATUS_READY;
        pVload->status = TSDB_VN_STATUS_READY;
        mPrint("vid:%d, drop finished", pObj->privateIp, vnode);
        taosTmrStart(mgmtMonitorDbDrop, 10000, ((void*)0), mgmtTmr);
      }
    }

    if (vnodeList[vnode].cfg.maxSessions <= 0) {
      continue;
    }

    pVload->vnode = vnode;
    pVload->status = TSDB_VN_STATUS_READY;
    pVload->totalStorage = pVnode->vnodeStatistic.totalStorage;
    pVload->compStorage = pVnode->vnodeStatistic.compStorage;
    pVload->pointsWritten = pVnode->vnodeStatistic.pointsWritten;
    uint32_t vgId = pVnode->cfg.vgId;

    SVgObj *pVgroup = mgmtGetVgroup(vgId);
    if (pVgroup == ((void*)0)) {
      mError("vgroup:%d is not there, but associated with vnode %d", vgId, vnode);
      pVload->dropStatus = TSDB_VN_STATUS_DROPPING;
      continue;
    }

    SDbObj *pDb = mgmtGetDb(pVgroup->dbName);
    if (pDb == ((void*)0)) {
      mError("vgroup:%d not belongs to any database, vnode:%d", vgId, vnode);
      continue;
    }

    if (pVload->vgId == 0 || pVload->dropStatus == TSDB_VN_STATUS_DROPPING) {
      mError("vid:%d, mgmt not exist, drop it", vnode);
      pVload->dropStatus = TSDB_VN_STATUS_DROPPING;
    }
  }

  taosTmrReset(mgmtProcessDnodeStatus, tsStatusInterval * 1000, ((void*)0), mgmtTmr, &mgmtStatusTimer);
  if (mgmtStatusTimer == ((void*)0)) {
    mError("Failed to start status timer");
  }
}
