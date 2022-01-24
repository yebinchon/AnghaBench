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
struct TYPE_5__ {int /*<<< orphan*/  vmutex; } ;
struct TYPE_4__ {scalar_t__ pCachePool; } ;
typedef  TYPE_1__ SVnodeObj ;
typedef  TYPE_2__ SCachePool ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

void FUNC3(void *param, void *tmrId) {
  SVnodeObj * pVnode = (SVnodeObj *)param;
  SCachePool *pPool = (SCachePool *)pVnode->pCachePool;

  FUNC0(&pPool->vmutex);

  FUNC2(pVnode);

  FUNC1(&pPool->vmutex);
}