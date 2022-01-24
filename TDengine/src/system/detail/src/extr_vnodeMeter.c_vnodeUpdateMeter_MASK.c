#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ int32_t ;
struct TYPE_15__ {size_t vnode; size_t sid; scalar_t__ numOfQueries; scalar_t__ timeStamp; int /*<<< orphan*/  state; int /*<<< orphan*/  meterId; int /*<<< orphan*/  sversion; int /*<<< orphan*/  pCache; struct TYPE_15__* schema; int /*<<< orphan*/  maxBytes; int /*<<< orphan*/  bytesPerPoint; int /*<<< orphan*/  numOfColumns; } ;
struct TYPE_14__ {scalar_t__ lastCreate; int /*<<< orphan*/  vmutex; TYPE_2__** meterList; } ;
typedef  TYPE_1__ SVnodeObj ;
typedef  TYPE_2__ SMeterObj ;

/* Variables and functions */
 scalar_t__ TSDB_METER_STATE_DELETING ; 
 scalar_t__ TSDB_METER_STATE_READY ; 
 int /*<<< orphan*/  TSDB_METER_STATE_UPDATING ; 
 int /*<<< orphan*/  FUNC0 (char*,size_t,size_t,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t,size_t,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (void (*) (void*,void*),int,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 scalar_t__ FUNC12 (TYPE_2__*,scalar_t__) ; 
 TYPE_1__* vnodeList ; 
 void FUNC13 (void*,void*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*) ; 
 scalar_t__ FUNC15 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vnodeTmrCtrl ; 

void FUNC16(void *param, void *tmrId) {
  SMeterObj *pNew = (SMeterObj *)param;
  if (pNew == NULL || pNew->vnode < 0 || pNew->sid < 0) return;

  SVnodeObj* pVnode = &vnodeList[pNew->vnode];

  if (pVnode->meterList == NULL) {
    FUNC1("vid:%d sid:%d id:%s, vnode is deleted, abort update schema", pNew->vnode, pNew->sid, pNew->meterId);
    FUNC2(pNew->schema);
    FUNC2(pNew);
    return;
  }

  SMeterObj *pObj = pVnode->meterList[pNew->sid];
  if (pObj == NULL || FUNC12(pObj, TSDB_METER_STATE_DELETING)) {
    FUNC1("vid:%d sid:%d id:%s, meter is deleted, abort update schema", pNew->vnode, pNew->sid, pNew->meterId);
    FUNC2(pNew->schema);
    FUNC2(pNew);
    return;
  }

  int32_t state = FUNC15(pObj, TSDB_METER_STATE_UPDATING);
  if (state >= TSDB_METER_STATE_DELETING) {
    FUNC0("vid:%d sid:%d id:%s, meter is deleted, failed to update, state:%d",
           pObj->vnode, pObj->sid, pObj->meterId, state);
    return;
  }

  int32_t num = 0;
  FUNC3(&pVnode->vmutex);
  num = pObj->numOfQueries;
  FUNC4(&pVnode->vmutex);

  if (num > 0 || state != TSDB_METER_STATE_READY) {
    // the state may have been changed by vnodeSetMeterState, recover it in the first place
    FUNC9(pObj, TSDB_METER_STATE_UPDATING);
    FUNC1("vid:%d sid:%d id:%s, update failed, retry later, numOfQueries:%d, state:%d",
           pNew->vnode, pNew->sid, pNew->meterId, num, state);

    // retry update meter in 50ms
    if (FUNC6(vnodeUpdateMeter, 50, pNew, vnodeTmrCtrl) == NULL) {
      FUNC0("vid:%d sid:%d id:%s, failed to start update timer, no retry", pNew->vnode, pNew->sid, pNew->meterId);
      FUNC2(pNew->schema);
      FUNC2(pNew);
    }
    return;
  }

  // commit first
  if (!FUNC11(pObj)) {
    // commit data first
    if (FUNC6(vnodeProcessUpdateSchemaTimer, 0, pObj, vnodeTmrCtrl) == NULL) {
      FUNC0("vid:%d sid:%d id:%s, failed to start commit timer", pObj->vnode, pObj->sid, pObj->meterId);
      FUNC9(pObj, TSDB_METER_STATE_UPDATING);
      FUNC2(pNew->schema);
      FUNC2(pNew);
      return;
    }

    if (FUNC6(vnodeUpdateMeter, 50, pNew, vnodeTmrCtrl) == NULL) {
      FUNC0("vid:%d sid:%d id:%s, failed to start update timer", pNew->vnode, pNew->sid, pNew->meterId);
      FUNC9(pObj, TSDB_METER_STATE_UPDATING);
      FUNC2(pNew->schema);
      FUNC2(pNew);
    }

    FUNC1("vid:%d sid:%d meterId:%s, there are data in cache, commit first, update later",
           pNew->vnode, pNew->sid, pNew->meterId);
    FUNC9(pObj, TSDB_METER_STATE_UPDATING);
    return;
  }

  FUNC5(pObj->meterId, pNew->meterId);
  pObj->numOfColumns = pNew->numOfColumns;
  pObj->timeStamp = pNew->timeStamp;
  pObj->bytesPerPoint = pNew->bytesPerPoint;
  pObj->maxBytes = pNew->maxBytes;
  if (pObj->timeStamp > vnodeList[pObj->vnode].lastCreate) vnodeList[pObj->vnode].lastCreate = pObj->timeStamp;

  FUNC7(pObj->schema);
  pObj->schema = pNew->schema;

  FUNC10(pObj);
  pObj->pCache = FUNC8(pObj);

  pObj->sversion = pNew->sversion;
  FUNC14(pObj);
  FUNC9(pObj, TSDB_METER_STATE_UPDATING);

  FUNC1("vid:%d sid:%d id:%s, schema is updated, state:%d", pObj->vnode, pObj->sid, pObj->meterId, pObj->state);
  FUNC2(pNew);
}