#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int commitInProcess; int /*<<< orphan*/  vmutex; } ;
struct TYPE_9__ {int vnode; int /*<<< orphan*/  sid; int /*<<< orphan*/  meterId; } ;
struct TYPE_8__ {scalar_t__ pCachePool; int /*<<< orphan*/ * meterList; } ;
typedef  TYPE_1__ SVnodeObj ;
typedef  TYPE_2__ SMeterObj ;
typedef  TYPE_3__ SCachePool ;

/* Variables and functions */
 int /*<<< orphan*/  TSDB_METER_STATE_UPDATING ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (void (*) (void*,void*),int,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* vnodeList ; 
 int /*<<< orphan*/  vnodeTmrCtrl ; 

void FUNC6(void *param, void *tmrId) {
  SMeterObj * pObj = (SMeterObj *)param;
  SVnodeObj * pVnode = vnodeList + pObj->vnode;

  /*
   * vnode may have been dropped, check it in the first place
   * if the vnode is freed, the pObj is not valid any more, the pObj->vnode is meanless
   * so may be the vid should be passed into this function as a parameter?
   */
  if (pVnode->meterList == NULL) {
    FUNC0("vnode is deleted, abort update schema");
    return;
  }

  SCachePool *pPool = (SCachePool *)pVnode->pCachePool;

  FUNC1(&pPool->vmutex);
  if (pPool->commitInProcess) {
    FUNC0("vid:%d sid:%d mid:%s, committing in process, commit later", pObj->vnode, pObj->sid, pObj->meterId);
    if (FUNC3(vnodeProcessUpdateSchemaTimer, 10, pObj, vnodeTmrCtrl) == NULL) {
      FUNC4(pObj, TSDB_METER_STATE_UPDATING);
    }

    FUNC2(&pPool->vmutex);
    return;
  }

  pPool->commitInProcess = 1;
  FUNC2(&pPool->vmutex);

  FUNC5(pVnode, pObj->sid, pObj->sid);
}