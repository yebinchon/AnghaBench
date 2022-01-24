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
struct TYPE_5__ {int /*<<< orphan*/  mutex; struct TYPE_5__* freeList; } ;
typedef  TYPE_1__ id_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(void *handle) {
  id_pool_t *pIdPool;

  if (handle == NULL) return;
  pIdPool = (id_pool_t *)handle;

  FUNC2("pool:%p is cleaned", pIdPool);

  if (pIdPool->freeList) FUNC0(pIdPool->freeList);

  FUNC3(&pIdPool->mutex);

  FUNC1(pIdPool, 0, sizeof(id_pool_t));

  FUNC0(pIdPool);
}