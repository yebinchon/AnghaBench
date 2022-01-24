#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  vmutex; int /*<<< orphan*/  notFreeSlots; int /*<<< orphan*/  vnode; scalar_t__ commitInProcess; } ;
struct TYPE_6__ {int commitTime; } ;
struct TYPE_7__ {int /*<<< orphan*/  commitTimer; TYPE_1__ cfg; scalar_t__ pCachePool; } ;
typedef  TYPE_2__ SVnodeObj ;
typedef  TYPE_3__ SCachePool ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vnodeProcessCommitTimer ; 
 int /*<<< orphan*/  vnodeTmrCtrl ; 

void FUNC4(SVnodeObj *pVnode) {
  SCachePool *pPool = (SCachePool *)(pVnode->pCachePool);

  FUNC3(vnodeProcessCommitTimer, pVnode->cfg.commitTime * 1000, pVnode, vnodeTmrCtrl, &pVnode->commitTimer);

  FUNC1(&pPool->vmutex);

  pPool->commitInProcess = 0;
  FUNC0("vid:%d, commit is over, notFreeSlots:%d", pPool->vnode, pPool->notFreeSlots);

  FUNC2(&pPool->vmutex);
}