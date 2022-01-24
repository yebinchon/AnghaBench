#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ int32_t ;
struct TYPE_18__ {scalar_t__ commitInProcess; int /*<<< orphan*/  vmutex; } ;
struct TYPE_17__ {void* signature; int retry; struct TYPE_17__* opayload; TYPE_2__* pShell; scalar_t__ importedRows; TYPE_3__* pObj; } ;
struct TYPE_16__ {size_t vnode; scalar_t__ numOfQueries; int /*<<< orphan*/  meterId; int /*<<< orphan*/  sid; } ;
struct TYPE_15__ {int code; scalar_t__ count; int /*<<< orphan*/  numOfTotalPoints; } ;
struct TYPE_14__ {int /*<<< orphan*/  version; int /*<<< orphan*/  vmutex; scalar_t__ pCachePool; } ;
typedef  TYPE_1__ SVnodeObj ;
typedef  TYPE_2__ SShellObj ;
typedef  TYPE_3__ SMeterObj ;
typedef  TYPE_4__ SImportInfo ;
typedef  TYPE_5__ SCachePool ;

/* Variables and functions */
 int TSDB_CODE_TOO_SLOW ; 
 scalar_t__ TSDB_METER_STATE_DELETING ; 
 int /*<<< orphan*/  TSDB_METER_STATE_IMPORTING ; 
 scalar_t__ TSDB_METER_STATE_READY ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (void (*) (void*,void*),int,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_3__*,TYPE_4__*) ; 
 TYPE_1__* vnodeList ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vnodeTmrCtrl ; 

void FUNC10(void *param, void *tmrId) {
  SImportInfo *pImport = (SImportInfo *)param;
  if (pImport == NULL || pImport->signature != param) {
    FUNC0("import timer is messed up, signature:%p", pImport);
    return;
  }

  SMeterObj  *pObj = pImport->pObj;
  SVnodeObj  *pVnode = &vnodeList[pObj->vnode];
  SCachePool *pPool = (SCachePool *)pVnode->pCachePool;
  SShellObj  *pShell = pImport->pShell;

  pImport->retry++;

  //slow query will block the import operation
  int32_t state = FUNC9(pObj, TSDB_METER_STATE_IMPORTING);
  if (state >= TSDB_METER_STATE_DELETING) {
    FUNC0("vid:%d sid:%d id:%s, meter is deleted, failed to import, state:%d",
           pObj->vnode, pObj->sid, pObj->meterId, state);
    return;
  }

  int32_t num = 0;
  FUNC3(&pVnode->vmutex);
  num = pObj->numOfQueries;
  FUNC4(&pVnode->vmutex);

  //if the num == 0, it will never be increased before state is set to TSDB_METER_STATE_READY
  int32_t commitInProcess = 0;
  FUNC3(&pPool->vmutex);
  if (((commitInProcess = pPool->commitInProcess) == 1) || num > 0 || state != TSDB_METER_STATE_READY) {
    FUNC4(&pPool->vmutex);
    FUNC6(pObj, TSDB_METER_STATE_IMPORTING);

    if (pImport->retry < 1000) {
      FUNC1("vid:%d sid:%d id:%s, import failed, retry later. commit in process or queries on it, or not ready."
             "commitInProcess:%d, numOfQueries:%d, state:%d", pObj->vnode, pObj->sid, pObj->meterId,
             commitInProcess, num, state);

      FUNC5(vnodeProcessImportTimer, 10, pImport, vnodeTmrCtrl);
      return;
    } else {
      pShell->code = TSDB_CODE_TOO_SLOW;
    }
  } else {
    pPool->commitInProcess = 1;
    FUNC4(&pPool->vmutex);
    int code = FUNC7(pObj, pImport);
    if (pShell) {
      pShell->code = code;
      pShell->numOfTotalPoints += pImport->importedRows;
    }
  }

  FUNC6(pObj, TSDB_METER_STATE_IMPORTING);

  pVnode->version++;

  // send response back to shell
  if (pShell) {
    pShell->count--;
    if (pShell->count <= 0) FUNC8(pImport->pShell, pShell->code, pShell->numOfTotalPoints);
  }

  pImport->signature = NULL;
  FUNC2(pImport->opayload);
  FUNC2(pImport);
}