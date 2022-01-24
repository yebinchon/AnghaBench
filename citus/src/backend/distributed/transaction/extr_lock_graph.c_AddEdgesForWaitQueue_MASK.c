#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_6__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WaitGraph ;
struct TYPE_15__ {scalar_t__ next; } ;
struct TYPE_17__ {int size; TYPE_1__ links; } ;
struct TYPE_20__ {TYPE_3__ waitProcs; } ;
struct TYPE_19__ {int* conflictTab; } ;
struct TYPE_16__ {scalar_t__ next; } ;
struct TYPE_18__ {size_t waitLockMode; TYPE_2__ links; TYPE_6__* waitLock; } ;
typedef  TYPE_3__ PROC_QUEUE ;
typedef  int /*<<< orphan*/  PROCStack ;
typedef  TYPE_4__ PGPROC ;
typedef  TYPE_5__* LockMethod ;
typedef  TYPE_6__ LOCK ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_4__*,TYPE_4__*,int /*<<< orphan*/ *) ; 
 TYPE_5__* FUNC1 (TYPE_6__*) ; 
 scalar_t__ FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,TYPE_4__*) ; 
 int FUNC5 (size_t) ; 

__attribute__((used)) static void
FUNC6(WaitGraph *waitGraph, PGPROC *waitingProc, PROCStack *remaining)
{
	/* the lock for which this process is waiting */
	LOCK *waitLock = waitingProc->waitLock;

	/* determine the conflict mask for the lock level used by the process */
	LockMethod lockMethodTable = FUNC1(waitLock);
	int conflictMask = lockMethodTable->conflictTab[waitingProc->waitLockMode];

	/* iterate through the wait queue */
	PROC_QUEUE *waitQueue = &(waitLock->waitProcs);
	int queueSize = waitQueue->size;
	PGPROC *currentProc = (PGPROC *) waitQueue->links.next;

	/*
	 * Iterate through the queue from the start until we encounter waitingProc,
	 * since we only care about processes in front of waitingProc in the queue.
	 */
	while (queueSize-- > 0 && currentProc != waitingProc)
	{
		int awaitMask = FUNC5(currentProc->waitLockMode);

		/*
		 * Skip processes from the same lock group, processes that don't conflict,
		 * and processes that are waiting on safe operations.
		 */
		if (!FUNC4(waitingProc, currentProc) &&
			FUNC2(awaitMask, conflictMask) &&
			!FUNC3(currentProc))
		{
			FUNC0(waitGraph, waitingProc, currentProc, remaining);
		}

		currentProc = (PGPROC *) currentProc->links.next;
	}
}