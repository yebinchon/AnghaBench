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
struct TYPE_5__ {char* name; size_t emptySlot; int queueSize; int /*<<< orphan*/  fullSem; int /*<<< orphan*/  queueMutex; TYPE_1__* queue; int /*<<< orphan*/  emptySem; } ;
typedef  TYPE_2__ module_t ;
struct TYPE_4__ {int cid; int mid; int tid; char* msg; } ;

/* Variables and functions */
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(module_t *pMod, int cid, int mid, int tid, char *msg) {
  if (FUNC5(&pMod->emptySem) != 0)
    FUNC0("ERROR: wait %s emptySem failed, reason:%s\n", pMod->name, FUNC3(errno));

  if (FUNC1(&pMod->queueMutex) != 0)
    FUNC0("ERROR: lock %s queueMutex failed, reason:%s\n", pMod->name, FUNC3(errno));

  pMod->queue[pMod->emptySlot].cid = cid;
  pMod->queue[pMod->emptySlot].mid = mid;
  pMod->queue[pMod->emptySlot].tid = tid;
  pMod->queue[pMod->emptySlot].msg = msg;
  pMod->emptySlot = (pMod->emptySlot + 1) % pMod->queueSize;

  if (FUNC2(&pMod->queueMutex) != 0)
    FUNC0("ERROR: unlock %s queueMutex failed, reason:%s\n", pMod->name, FUNC3(errno));

  if (FUNC4(&pMod->fullSem) != 0) FUNC0("ERROR: post %s fullSem failed, reason:%s\n", pMod->name, FUNC3(errno));

  return 0;
}