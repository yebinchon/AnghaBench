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
struct TYPE_4__ {scalar_t__ commitLog; } ;
struct TYPE_5__ {scalar_t__ logFd; int /*<<< orphan*/  logMutex; int /*<<< orphan*/  logFn; TYPE_1__ cfg; } ;
typedef  TYPE_2__ SVnodeObj ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int /*<<< orphan*/ ) ; 
 TYPE_2__* vnodeList ; 

void FUNC6(int vnode) {
  SVnodeObj *pVnode = vnodeList + vnode;

  if (FUNC0(pVnode->logFd)) FUNC1(pVnode->logFd);

  if (pVnode->cfg.commitLog && (pVnode->logFd > 0 && FUNC4(pVnode->logFn) < 0)) {
    FUNC2("vid:%d, failed to remove:%s", vnode, pVnode->logFn);
    FUNC5("vid:%d, failed to remove:%s", vnode, pVnode->logFn);
  }

  FUNC3(&(pVnode->logMutex));
}