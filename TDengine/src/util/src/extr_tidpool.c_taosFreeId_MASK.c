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
struct TYPE_2__ {int* freeList; int maxId; int freeSlot; int numOfFree; int /*<<< orphan*/  mutex; } ;
typedef  TYPE_1__ id_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(void *handle, int id) {
  id_pool_t *pIdPool;
  int        slot;

  pIdPool = (id_pool_t *)handle;
  if (pIdPool->freeList == NULL || pIdPool->maxId == 0) return;
  if (id <= 0 || id >= pIdPool->maxId) return;
  if (FUNC1(&pIdPool->mutex) != 0) FUNC0("lock pIdPool Mutex");

  slot = (pIdPool->freeSlot + pIdPool->numOfFree) % pIdPool->maxId;
  pIdPool->freeList[slot] = id;
  pIdPool->numOfFree++;

  if (FUNC2(&pIdPool->mutex) != 0) FUNC0("unlock pIdPool Mutex");
}