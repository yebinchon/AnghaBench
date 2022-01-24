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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  double int64_t ;
struct TYPE_6__ {double totalBlocks; } ;
struct TYPE_7__ {scalar_t__ commitLog; TYPE_1__ cacheNumOfBlocks; scalar_t__ cacheBlockSize; } ;
struct TYPE_8__ {double mappingSize; double mappingThreshold; scalar_t__ commitInProcess; size_t pWrite; int /*<<< orphan*/  version; TYPE_2__ cfg; int /*<<< orphan*/  logFn; int /*<<< orphan*/  logOFn; int /*<<< orphan*/  logMutex; } ;
typedef  TYPE_3__ SVnodeObj ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*,int,int) ; 
 char* tsDirectory ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 TYPE_3__* vnodeList ; 
 scalar_t__ FUNC6 (int,int /*<<< orphan*/ ) ; 
 size_t FUNC7 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC8(int vnode) {
  size_t     size = 0;
  uint64_t   firstV = 0;
  SVnodeObj *pVnode = vnodeList + vnode;

  FUNC2(&(pVnode->logMutex), NULL);

  FUNC4(pVnode->logFn, "%s/vnode%d/db/submit%d.log", tsDirectory, vnode, vnode);
  FUNC4(pVnode->logOFn, "%s/vnode%d/db/submit%d.olog", tsDirectory, vnode, vnode);
  pVnode->mappingSize = ((int64_t)pVnode->cfg.cacheBlockSize) * pVnode->cfg.cacheNumOfBlocks.totalBlocks * 1.5;
  pVnode->mappingThreshold = pVnode->mappingSize * 0.7;

  // restore from .olog file and commit to file
  size = FUNC7(vnode, pVnode->logOFn, &firstV);
  if (size < 0) return -1;
  if (size > 0) {
    if (pVnode->commitInProcess == 0) FUNC5(pVnode);
    FUNC3(pVnode->logOFn);
  }

  // restore from .log file to cache
  size = FUNC7(vnode, pVnode->logFn, &firstV);
  if (size < 0) return -1;

  if (pVnode->cfg.commitLog == 0) return 0;

  if (size == 0) firstV = pVnode->version;
  if (FUNC6(vnode, firstV) < 0) {
    FUNC0("vid:%d, commit log init failed", vnode);
    return -1;
  }

  pVnode->pWrite += size;
  FUNC1("vid:%d, commit log is initialized", vnode);

  return 0;
}