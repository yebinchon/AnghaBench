#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_15__ {int numOfVnodes; int /*<<< orphan*/  privateIp; TYPE_4__* vload; int /*<<< orphan*/  diskAvailable; int /*<<< orphan*/  status; int /*<<< orphan*/  openVnodes; } ;
struct TYPE_14__ {int /*<<< orphan*/  dbName; } ;
struct TYPE_13__ {scalar_t__ dropStatus; int vnode; scalar_t__ vgId; int /*<<< orphan*/  pointsWritten; int /*<<< orphan*/  compStorage; int /*<<< orphan*/  totalStorage; void* status; } ;
struct TYPE_11__ {scalar_t__ maxSessions; int /*<<< orphan*/  vgId; } ;
struct TYPE_10__ {int /*<<< orphan*/  pointsWritten; int /*<<< orphan*/  compStorage; int /*<<< orphan*/  totalStorage; } ;
struct TYPE_12__ {TYPE_2__ cfg; TYPE_1__ vnodeStatistic; } ;
typedef  TYPE_3__ SVnodeObj ;
typedef  TYPE_4__ SVnodeLoad ;
typedef  TYPE_5__ SVgObj ;
typedef  TYPE_6__ SDnodeObj ;
typedef  int /*<<< orphan*/  SDbObj ;

/* Variables and functions */
 int /*<<< orphan*/  TSDB_STATUS_READY ; 
 scalar_t__ TSDB_VN_STATUS_DROPPING ; 
 void* TSDB_VN_STATUS_READY ; 
 TYPE_6__ dnodeObj ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mgmtMonitorDbDrop ; 
 int /*<<< orphan*/ * mgmtStatusTimer ; 
 int /*<<< orphan*/  mgmtTmr ; 
 int /*<<< orphan*/  FUNC4 (float*) ; 
 int /*<<< orphan*/  FUNC5 (void (*) (void*,void*),int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tsAvailDataDirGB ; 
 int /*<<< orphan*/  tsOpenVnodes ; 
 int tsStatusInterval ; 
 TYPE_3__* vnodeList ; 

void FUNC7(void *handle, void *tmrId) {
  SDnodeObj *pObj = &dnodeObj;
  pObj->openVnodes = tsOpenVnodes;
  pObj->status = TSDB_STATUS_READY;

  float memoryUsedMB = 0;
  FUNC4(&memoryUsedMB);
  pObj->diskAvailable = tsAvailDataDirGB;

  for (int vnode = 0; vnode < pObj->numOfVnodes; ++vnode) {
    SVnodeLoad *pVload = &(pObj->vload[vnode]);
    SVnodeObj * pVnode = vnodeList + vnode;

    // wait vnode dropped
    if (pVload->dropStatus == TSDB_VN_STATUS_DROPPING) {
      if (vnodeList[vnode].cfg.maxSessions <= 0) {
        pVload->dropStatus = TSDB_VN_STATUS_READY;
        pVload->status = TSDB_VN_STATUS_READY;
        FUNC1("vid:%d, drop finished", pObj->privateIp, vnode);
        FUNC6(mgmtMonitorDbDrop, 10000, NULL, mgmtTmr);
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

    SVgObj *pVgroup = FUNC3(vgId);
    if (pVgroup == NULL) {
      FUNC0("vgroup:%d is not there, but associated with vnode %d", vgId, vnode);
      pVload->dropStatus = TSDB_VN_STATUS_DROPPING;
      continue;
    }

    SDbObj *pDb = FUNC2(pVgroup->dbName);
    if (pDb == NULL) {
      FUNC0("vgroup:%d not belongs to any database, vnode:%d", vgId, vnode);
      continue;
    }

    if (pVload->vgId == 0 || pVload->dropStatus == TSDB_VN_STATUS_DROPPING) {
      FUNC0("vid:%d, mgmt not exist, drop it", vnode);
      pVload->dropStatus = TSDB_VN_STATUS_DROPPING;
    }
  }

  FUNC5(mgmtProcessDnodeStatus, tsStatusInterval * 1000, NULL, mgmtTmr, &mgmtStatusTimer);
  if (mgmtStatusTimer == NULL) {
    FUNC0("Failed to start status timer");
  }
}