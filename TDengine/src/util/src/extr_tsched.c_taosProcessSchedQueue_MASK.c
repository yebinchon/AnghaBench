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
struct TYPE_6__ {int /*<<< orphan*/  thandle; int /*<<< orphan*/  ahandle; int /*<<< orphan*/  (* tfp ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* fp ) (TYPE_2__*) ;} ;
struct TYPE_5__ {size_t fullSlot; int queueSize; int /*<<< orphan*/  label; int /*<<< orphan*/  emptySem; int /*<<< orphan*/  queueMutex; TYPE_2__* queue; int /*<<< orphan*/  fullSem; } ;
typedef  TYPE_1__ SSchedQueue ;
typedef  TYPE_2__ SSchedMsg ;

/* Variables and functions */
 scalar_t__ EINTR ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 

void *FUNC10(void *param) {
  SSchedMsg    msg;
  SSchedQueue *pSched = (SSchedQueue *)param;

  while (1) {
    if (FUNC9(&pSched->fullSem) != 0) {
      if (errno == EINTR) {
        /* sem_wait is interrupted by interrupt, ignore and continue */
        FUNC2("wait %s fullSem was interrupted", pSched->label);
        continue;
      }
      FUNC1("wait %s fullSem failed, errno:%d, reason:%s", pSched->label, errno, FUNC5(errno));
    }

    if (FUNC3(&pSched->queueMutex) != 0)
      FUNC1("lock %s queueMutex failed, reason:%s", pSched->label, FUNC5(errno));

    msg = pSched->queue[pSched->fullSlot];
    FUNC0(pSched->queue + pSched->fullSlot, 0, sizeof(SSchedMsg));
    pSched->fullSlot = (pSched->fullSlot + 1) % pSched->queueSize;

    if (FUNC4(&pSched->queueMutex) != 0)
      FUNC1("unlock %s queueMutex failed, reason:%s\n", pSched->label, FUNC5(errno));

    if (FUNC8(&pSched->emptySem) != 0)
      FUNC1("post %s emptySem failed, reason:%s\n", pSched->label, FUNC5(errno));

    if (msg.fp)
      (*(msg.fp))(&msg);
    else if (msg.tfp)
      (*(msg.tfp))(msg.ahandle, msg.thandle);
  }
}