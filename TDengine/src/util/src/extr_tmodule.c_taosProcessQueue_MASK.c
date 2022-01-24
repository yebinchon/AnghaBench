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
struct TYPE_5__ {scalar_t__ cid; int /*<<< orphan*/  msg; } ;
typedef  TYPE_1__ msg_t ;
struct TYPE_6__ {char* name; size_t fullSlot; int queueSize; int /*<<< orphan*/  (* processMsg ) (TYPE_1__*) ;int /*<<< orphan*/  emptySem; int /*<<< orphan*/  queueMutex; TYPE_1__* queue; int /*<<< orphan*/  fullSem; } ;
typedef  TYPE_2__ module_t ;

/* Variables and functions */
 int /*<<< orphan*/  PTHREAD_CANCEL_ASYNCHRONOUS ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIG_IGN ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ maxCid ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 

void *FUNC11(void *param) {
  msg_t     msg;
  module_t *pMod = (module_t *)param;
  int       oldType;

  FUNC4(PTHREAD_CANCEL_ASYNCHRONOUS, &oldType);

  FUNC5(SIGINT, SIG_IGN);

  while (1) {
    if (FUNC10(&pMod->fullSem) != 0)
      FUNC1("ERROR: wait %s fullSem failed, reason:%s\n", pMod->name, FUNC6(errno));

    if (FUNC2(&pMod->queueMutex) != 0)
      FUNC1("ERROR: lock %s queueMutex failed, reason:%s\n", pMod->name, FUNC6(errno));

    msg = pMod->queue[pMod->fullSlot];
    FUNC0(&(pMod->queue[pMod->fullSlot]), 0, sizeof(msg_t));
    pMod->fullSlot = (pMod->fullSlot + 1) % pMod->queueSize;

    if (FUNC3(&pMod->queueMutex) != 0)
      FUNC1("ERROR: unlock %s queueMutex failed, reason:%s\n", pMod->name, FUNC6(errno));

    if (FUNC9(&pMod->emptySem) != 0)
      FUNC1("ERROR: post %s emptySem failed, reason:%s\n", pMod->name, FUNC6(errno));

    /* process the message */
    if (msg.cid < 0 || msg.cid >= maxCid) {
      /*printf("ERROR: cid:%d is out of range, msg is discarded\n", msg.cid);*/
      continue;
    }

    /*
        if ( pthread_mutex_lock ( &(pMod->stmMutex)) != 0 )
          printf("ERROR: lock %s stmMutex failed, reason:%s\n", pMod->name,
       strerror(errno));
    */
    (*(pMod->processMsg))(&msg);

    FUNC8(msg.msg);
    /*
        if ( pthread_mutex_unlock ( &(pMod->stmMutex)) != 0 )
          printf("ERROR: unlock %s stmMutex failed, reason:%s\n", pMod->name,
       strerror(errno));
    */
  }
}