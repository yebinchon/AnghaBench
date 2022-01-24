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
typedef  scalar_t__ int32_t ;
struct TYPE_5__ {scalar_t__ commitInProcess; int /*<<< orphan*/  vmutex; } ;
struct TYPE_4__ {int /*<<< orphan*/  vnode; scalar_t__ pCachePool; } ;
typedef  TYPE_1__ SVnodeObj ;
typedef  TYPE_2__ SCachePool ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(SVnodeObj *pVnode) {
  SCachePool *pPool = (SCachePool *)(pVnode->pCachePool);

  // wait for 100s at most
  const int32_t totalCount = 1000;
  int32_t count = 0;

  // all meter is marked as dropped, so the commit will abort very quickly
  while(count++ < totalCount) {
    int32_t commitInProcess = 0;

    FUNC1(&pPool->vmutex);
    commitInProcess = pPool->commitInProcess;
    FUNC2(&pPool->vmutex);

    if (commitInProcess) {
      FUNC0("vid:%d still in commit, wait for completed", pVnode->vnode);
      FUNC3(10);
    }
  }
}