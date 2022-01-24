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
struct TYPE_5__ {int numOfThreads; struct TYPE_5__* qthread; struct TYPE_5__* queue; int /*<<< orphan*/  queueMutex; int /*<<< orphan*/  fullSem; int /*<<< orphan*/  emptySem; } ;
typedef  TYPE_1__ SSchedQueue ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(void *param) {
  SSchedQueue *pSched = (SSchedQueue *)param;
  if (pSched == NULL) return;

  for (int i = 0; i < pSched->numOfThreads; ++i) {
    FUNC1(pSched->qthread[i]);
  }
  for (int i = 0; i < pSched->numOfThreads; ++i) {
    FUNC2(pSched->qthread[i], NULL);
  }

  FUNC4(&pSched->emptySem);
  FUNC4(&pSched->fullSem);
  FUNC3(&pSched->queueMutex);

  FUNC0(pSched->queue);
  FUNC0(pSched->qthread);
  FUNC0(pSched); // fix memory leak
}