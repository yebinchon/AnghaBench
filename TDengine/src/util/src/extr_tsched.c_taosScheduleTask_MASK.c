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
struct TYPE_2__ {size_t emptySlot; int queueSize; int /*<<< orphan*/  label; int /*<<< orphan*/  fullSem; int /*<<< orphan*/  queueMutex; int /*<<< orphan*/ * queue; int /*<<< orphan*/  emptySem; } ;
typedef  TYPE_1__ SSchedQueue ;
typedef  int /*<<< orphan*/  SSchedMsg ;

/* Variables and functions */
 scalar_t__ EINTR ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(void *qhandle, SSchedMsg *pMsg) {
  SSchedQueue *pSched = (SSchedQueue *)qhandle;
  if (pSched == NULL) {
    FUNC0("sched is not ready, msg:%p is dropped", *pMsg);
    return 0;
  }

  while (FUNC6(&pSched->emptySem) != 0) {
    if (errno != EINTR) {
      FUNC0("wait %s emptySem failed, reason:%s", pSched->label, FUNC4(errno));
      break;
    }
    FUNC1("wait %s emptySem was interrupted", pSched->label);
  }

  if (FUNC2(&pSched->queueMutex) != 0)
    FUNC0("lock %s queueMutex failed, reason:%s", pSched->label, FUNC4(errno));

  pSched->queue[pSched->emptySlot] = *pMsg;
  pSched->emptySlot = (pSched->emptySlot + 1) % pSched->queueSize;

  if (FUNC3(&pSched->queueMutex) != 0)
    FUNC0("unlock %s queueMutex failed, reason:%s", pSched->label, FUNC4(errno));

  if (FUNC5(&pSched->fullSem) != 0) FUNC0("post %s fullSem failed, reason:%s", pSched->label, FUNC4(errno));

  return 0;
}