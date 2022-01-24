#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int int32_t ;
struct TYPE_5__ {scalar_t__ maxSessions; } ;
struct TYPE_6__ {int vnode; TYPE_1__ cfg; int /*<<< orphan*/  accessState; } ;
typedef  TYPE_2__ SVnodeObj ;

/* Variables and functions */
 int TSDB_CODE_SUCCESS ; 
 int /*<<< orphan*/  TSDB_VN_ALL_ACCCESS ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dmutex ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int tsMaxVnode ; 
 int /*<<< orphan*/  tsOpenVnodes ; 
 int /*<<< orphan*/  FUNC3 () ; 
 TYPE_2__* vnodeList ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ *) ; 

int FUNC7(int vnode) {
  int32_t code = TSDB_CODE_SUCCESS;

  SVnodeObj *pVnode = vnodeList + vnode;

  pVnode->vnode = vnode;
  pVnode->accessState = TSDB_VN_ALL_ACCCESS;

  // vnode is empty
  if (pVnode->cfg.maxSessions == 0) return 0;

  FUNC1(&dmutex);
  // vnodeOpenMeterMgmtVnode(vnode);

  // not enough memory, abort
  if ((code = FUNC5(vnode)) != TSDB_CODE_SUCCESS) {
    FUNC2(&dmutex);
    return code;
  }

  FUNC4(vnode);

  if (vnode > tsMaxVnode) tsMaxVnode = vnode;

  FUNC3();

  FUNC2(&dmutex);

#ifndef CLUSTER
  FUNC6(pVnode, NULL);
#endif

  FUNC0("vid:%d, vnode is opened, openVnodes:%d", vnode, tsOpenVnodes);

  return 0;
}