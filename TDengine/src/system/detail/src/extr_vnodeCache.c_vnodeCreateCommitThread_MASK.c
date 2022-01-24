#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pthread_t ;
typedef  int /*<<< orphan*/  pthread_attr_t ;
struct TYPE_9__ {int commitInProcess; } ;
struct TYPE_7__ {int commitTime; } ;
struct TYPE_8__ {scalar_t__ status; int /*<<< orphan*/  commitThread; int /*<<< orphan*/  vnode; int /*<<< orphan*/  commitTimer; TYPE_1__ cfg; scalar_t__ pCachePool; } ;
typedef  TYPE_2__ SVnodeObj ;
typedef  TYPE_3__ SCachePool ;

/* Variables and functions */
 int /*<<< orphan*/  PTHREAD_CREATE_DETACHED ; 
 scalar_t__ TSDB_STATUS_UNSYNCED ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vnodeCommitToFile ; 
 int /*<<< orphan*/  vnodeProcessCommitTimer ; 
 int /*<<< orphan*/  vnodeTmrCtrl ; 

pthread_t FUNC9(SVnodeObj *pVnode) {
  // this function has to mutex locked before it is called

  pthread_attr_t thattr;
  SCachePool *   pPool = (SCachePool *)pVnode->pCachePool;

  if (pPool->commitInProcess) {
    FUNC1("vid:%d, commit is already in process", pVnode->vnode);
    return pVnode->commitThread;
  }

  FUNC8(&pVnode->commitTimer);

  if (pVnode->status == TSDB_STATUS_UNSYNCED) {
    FUNC7(vnodeProcessCommitTimer, pVnode->cfg.commitTime * 1000, pVnode, vnodeTmrCtrl, &pVnode->commitTimer);
    FUNC1("vid:%d, it is in unsyc state, commit later", pVnode->vnode);
    return pVnode->commitThread;
  }

  FUNC3(&thattr);
  FUNC4(&thattr, PTHREAD_CREATE_DETACHED);
  if (FUNC5(&(pVnode->commitThread), &thattr, vnodeCommitToFile, pVnode) != 0) {
    FUNC0("vid:%d, failed to create thread to commit file, reason:%s", pVnode->vnode, FUNC6(errno));
  } else {
    pPool->commitInProcess = 1;
    FUNC1("vid:%d, commit thread: 0x%lx is created", pVnode->vnode, pVnode->commitThread);
  }

  FUNC2(&thattr);

  return pVnode->commitThread;
}