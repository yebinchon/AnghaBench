#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int int32_t ;
struct TYPE_6__ {int /*<<< orphan*/  qhandle; } ;
struct TYPE_4__ {int maxSessions; } ;
struct TYPE_5__ {TYPE_1__ cfg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int* FUNC1 (int) ; 
 TYPE_3__** shellList ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vnodeDelayedFreeResource ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 TYPE_2__* vnodeList ; 
 int /*<<< orphan*/  vnodeTmrCtrl ; 

void FUNC4(int vnode) {
  if (shellList[vnode] == NULL) return;

  for (int i = 0; i < vnodeList[vnode].cfg.maxSessions; ++i) {
    FUNC3(shellList[vnode][i].qhandle, true);
  }

  int32_t* v = FUNC1(sizeof(int32_t));
  *v = vnode;

  /*
   * free the connection related resource after 5sec.
   * 1. The msg, as well as SRpcConn may be in the task queue, free it immediate will cause crash
   * 2. Free connection may cause *(SRpcConn*)pObj->thandle to be invalid to access.
   */
  FUNC0("vid:%d, free resources in 500ms", vnode);
  FUNC2(vnodeDelayedFreeResource, 500, v, vnodeTmrCtrl);
}