#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {char* pool; int blockSize; int numOfBlock; int* freeList; size_t first; size_t numOfFree; int /*<<< orphan*/  mutex; } ;
typedef  TYPE_1__ pool_t ;
typedef  scalar_t__ mpool_h ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(mpool_h handle, char *pMem) {
  int     index;
  pool_t *pool_p = (pool_t *)handle;

  if (pMem == NULL) return;

  index = (int)(pMem - pool_p->pool) % pool_p->blockSize;
  if (index != 0) {
    FUNC1("invalid free address:%p\n", pMem);
    return;
  }

  index = (int)((pMem - pool_p->pool) / pool_p->blockSize);
  if (index < 0 || index >= pool_p->numOfBlock) {
    FUNC1("mempool: error, invalid address:%p\n", pMem);
    return;
  }

  FUNC0(pMem, 0, (size_t)pool_p->blockSize);

  FUNC2(&pool_p->mutex);

  pool_p->freeList[(pool_p->first + pool_p->numOfFree) % pool_p->numOfBlock] = index;
  pool_p->numOfFree++;

  FUNC3(&pool_p->mutex);
}