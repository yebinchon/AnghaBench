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
struct TYPE_5__ {char* logFn; char* logOFn; int logFd; int /*<<< orphan*/  logMutex; int /*<<< orphan*/  version; TYPE_1__ cfg; int /*<<< orphan*/  mappingSize; int /*<<< orphan*/  pMem; } ;
typedef  TYPE_2__ SVnodeObj ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 TYPE_2__* vnodeList ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 

int FUNC7(int vnode) {
  SVnodeObj *pVnode = vnodeList + vnode;
  char *     fileName = pVnode->logFn;
  char *     oldName = pVnode->logOFn;

  FUNC3(&(pVnode->logMutex));

  if (FUNC0(pVnode->logFd)) {
    FUNC2(pVnode->pMem, pVnode->mappingSize);
    FUNC1(pVnode->logFd);
    FUNC5(fileName, oldName);
  }

  if (pVnode->cfg.commitLog) FUNC6(vnode, vnodeList[vnode].version);

  FUNC4(&(pVnode->logMutex));

  return pVnode->logFd;
}