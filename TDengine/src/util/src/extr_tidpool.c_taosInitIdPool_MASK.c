#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int maxId; int numOfFree; int* freeList; int /*<<< orphan*/  mutex; scalar_t__ freeSlot; } ;
typedef  TYPE_1__ id_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void *FUNC5(int maxId) {
  id_pool_t *pIdPool;
  int *      idList, i;

  if (maxId < 3) maxId = 3;

  pIdPool = (id_pool_t *)FUNC1(sizeof(id_pool_t));
  if (pIdPool == NULL) return NULL;

  idList = (int *)FUNC1(sizeof(int) * (size_t)maxId);
  if (idList == NULL) {
    FUNC0(pIdPool);
    return NULL;
  }

  FUNC2(pIdPool, 0, sizeof(id_pool_t));
  pIdPool->maxId = maxId;
  pIdPool->numOfFree = maxId - 1;
  pIdPool->freeSlot = 0;
  pIdPool->freeList = idList;

  FUNC4(&pIdPool->mutex, NULL);

  for (i = 1; i < maxId; ++i) idList[i - 1] = i;

  FUNC3("pool:%p is setup, maxId:%d", pIdPool, pIdPool->maxId);

  return (void *)pIdPool;
}