#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ maxSessions; } ;
struct TYPE_9__ {int /*<<< orphan*/  meterIndex; int /*<<< orphan*/  vmutex; TYPE_1__ cfg; } ;
typedef  TYPE_2__ SVnodeObj ;

/* Variables and functions */
 int TSDB_CODE_ACTION_IN_PROGRESS ; 
 int TSDB_CODE_SUCCESS ; 
 int /*<<< orphan*/  dmutex ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int tsMaxVnode ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 
 TYPE_2__* vnodeList ; 
 int FUNC13 (TYPE_2__*) ; 

int FUNC14(int vnode) {
  if (vnodeList == NULL) return TSDB_CODE_SUCCESS;

  SVnodeObj* pVnode = &vnodeList[vnode];

  FUNC2(&dmutex);
  if (pVnode->cfg.maxSessions == 0) {
    FUNC3(&dmutex);
    return TSDB_CODE_SUCCESS;
  }

  // set the meter is dropped flag 
  if (FUNC13(pVnode) != TSDB_CODE_SUCCESS) {
    FUNC3(&dmutex);
    return TSDB_CODE_ACTION_IN_PROGRESS;
  }

  FUNC12(vnodeList + vnode);
  FUNC6(vnodeList + vnode);
  FUNC10(vnode);
  FUNC9(vnode);
  FUNC11(vnode);
  FUNC8(vnode);
  FUNC7(vnode);

  FUNC1(&(vnodeList[vnode].vmutex));

  if (tsMaxVnode == vnode) tsMaxVnode = vnode - 1;

  FUNC4(vnodeList[vnode].meterIndex);
  FUNC0(vnodeList + vnode, 0, sizeof(SVnodeObj));

  FUNC5();

  FUNC3(&dmutex);
  return TSDB_CODE_SUCCESS;
}