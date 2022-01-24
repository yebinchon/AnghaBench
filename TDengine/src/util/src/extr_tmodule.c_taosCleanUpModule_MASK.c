#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int queueSize; TYPE_2__* queue; int /*<<< orphan*/  stmMutex; int /*<<< orphan*/  queueMutex; int /*<<< orphan*/  fullSem; int /*<<< orphan*/  emptySem; int /*<<< orphan*/  thread; int /*<<< orphan*/  (* cleanUp ) () ;} ;
typedef  TYPE_1__ module_t ;
struct TYPE_6__ {struct TYPE_6__* msg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

void FUNC9(module_t *pMod) {
  int i;

  if (pMod->cleanUp) pMod->cleanUp();

  if (FUNC5(pMod->thread)) {
    FUNC1(pMod->thread);
    FUNC2(pMod->thread, NULL);
  }

  FUNC6(&pMod->thread);
  FUNC8(&pMod->emptySem);
  FUNC8(&pMod->fullSem);
  FUNC3(&pMod->queueMutex);
  FUNC3(&pMod->stmMutex);

  for (i = 0; i < pMod->queueSize; ++i) {
    FUNC7(pMod->queue[i].msg);
  }

  FUNC7(pMod->queue);

  FUNC0(pMod, 0, sizeof(module_t));
}