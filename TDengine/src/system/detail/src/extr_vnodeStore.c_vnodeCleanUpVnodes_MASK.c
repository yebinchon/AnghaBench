#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ commitThread; scalar_t__ pCachePool; int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int TSDB_MAX_VNODES ; 
 int /*<<< orphan*/  TSDB_STATUS_OFFLINE ; 
 int /*<<< orphan*/  dmutex ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 TYPE_1__* vnodeList ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ *) ; 

void FUNC6() {
  static int again = 0;
  if (vnodeList == NULL) return;

  FUNC0(&dmutex);

  if (again) {
    FUNC1(&dmutex);
    return;
  }
  again = 1;

  for (int vnode = 0; vnode < TSDB_MAX_VNODES; ++vnode) {
    if (vnodeList[vnode].pCachePool) {
      vnodeList[vnode].status = TSDB_STATUS_OFFLINE;
      FUNC4(vnode);
    }
  }

  FUNC1(&dmutex);

  for (int vnode = 0; vnode < TSDB_MAX_VNODES; ++vnode) {
    if (vnodeList[vnode].pCachePool) {
      FUNC5(vnodeList + vnode, NULL);
      while (vnodeList[vnode].commitThread != 0) {
        FUNC2(10);
      }
      FUNC3(vnode);
    }
  }
}