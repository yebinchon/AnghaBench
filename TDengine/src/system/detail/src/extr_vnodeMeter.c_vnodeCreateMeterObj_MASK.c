#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ lastCreate; TYPE_1__** meterList; } ;
struct TYPE_9__ {size_t vnode; size_t sid; scalar_t__ uid; scalar_t__ sversion; scalar_t__ timeStamp; int /*<<< orphan*/  meterId; int /*<<< orphan*/  state; int /*<<< orphan*/ * pCache; } ;
typedef  TYPE_1__ SMeterObj ;
typedef  int /*<<< orphan*/  SConnSec ;

/* Variables and functions */
 int TSDB_CODE_NO_RESOURCE ; 
 int TSDB_CODE_SUCCESS ; 
 int /*<<< orphan*/  TSDB_METER_STATE_READY ; 
 int /*<<< orphan*/  TSDB_METER_STATE_UPDATING ; 
 int /*<<< orphan*/  FUNC0 (char*,size_t,size_t,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_4__* vnodeList ; 
 int /*<<< orphan*/  FUNC5 (size_t,size_t) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ *) ; 

int FUNC8(SMeterObj *pNew, SConnSec *pSec) {
  SMeterObj *pObj;
  int        code;

  pObj = vnodeList[pNew->vnode].meterList[pNew->sid];
  code = TSDB_CODE_SUCCESS;

  if (pObj && pObj->uid == pNew->uid) {
    if (pObj->sversion == pNew->sversion) {
      FUNC0("vid:%d sid:%d id:%s sversion:%d, identical meterObj, ignore create", pNew->vnode, pNew->sid,
             pNew->meterId, pNew->sversion);
      return -1;
    }

    FUNC0("vid:%d sid:%d id:%s, update schema", pNew->vnode, pNew->sid, pNew->meterId);
    if (!FUNC4(pObj, TSDB_METER_STATE_UPDATING)) FUNC7(pNew, NULL);
    return TSDB_CODE_SUCCESS;
  }

  if (pObj) {
    FUNC1("vid:%d sid:%d id:%s, old meter is there, remove it", pNew->vnode, pNew->sid, pNew->meterId);
    FUNC5(pNew->vnode, pNew->sid);
  }

  pNew->pCache = FUNC2(pNew);
  if (pNew->pCache == NULL) {
    code = TSDB_CODE_NO_RESOURCE;
  } else {
    vnodeList[pNew->vnode].meterList[pNew->sid] = pNew;
    pNew->state = TSDB_METER_STATE_READY;
    if (pNew->timeStamp > vnodeList[pNew->vnode].lastCreate) vnodeList[pNew->vnode].lastCreate = pNew->timeStamp;
    FUNC6(pNew);
    // vnodeCreateMeterMgmt(pNew, pSec);
    FUNC3(pNew);
    FUNC0("vid:%d sid:%d id:%s, meterObj is created, uid:%ld", pNew->vnode, pNew->sid, pNew->meterId, pNew->uid);
  }

  return code;
}