#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ maxSessions; int /*<<< orphan*/  precision; } ;
struct TYPE_5__ {int vnode; int /*<<< orphan*/  numOfFiles; int /*<<< orphan*/  fileId; int /*<<< orphan*/  version; int /*<<< orphan*/  vmutex; int /*<<< orphan*/ * pCachePool; TYPE_1__ cfg; int /*<<< orphan*/  firstKey; } ;
typedef  TYPE_2__ SVnodeObj ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int) ; 
 scalar_t__ FUNC5 (int) ; 
 TYPE_2__* vnodeList ; 
 int /*<<< orphan*/ * FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

int FUNC8(int vnode) {
  SVnodeObj *pVnode = vnodeList + vnode;

  pVnode->vnode = vnode;
  FUNC7(vnode);
  if (pVnode->cfg.maxSessions == 0) return 0;

  pVnode->firstKey = FUNC3(pVnode->cfg.precision);

  pVnode->pCachePool = FUNC6(vnode);
  if (pVnode->pCachePool == NULL) {
    FUNC0("vid:%d, cache pool init failed.", pVnode->vnode);
    return -1;
  }

  if (FUNC5(vnode) < 0) return -1;

  // vnodeOpenMeterMgmtStoreVnode(vnode);

  if (FUNC4(vnode) < 0) {
    FUNC0("vid:%d, commit init failed.", pVnode->vnode);
    return -1;
  }

  FUNC2(&(pVnode->vmutex), NULL);
  FUNC1("vid:%d, storage initialized, version:%ld fileId:%d numOfFiles:%d", vnode, pVnode->version, pVnode->fileId,
         pVnode->numOfFiles);

  return 0;
}