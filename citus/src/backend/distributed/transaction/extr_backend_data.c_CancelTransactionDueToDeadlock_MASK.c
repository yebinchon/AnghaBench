#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {TYPE_3__* backends; } ;
struct TYPE_6__ {scalar_t__ transactionNumber; } ;
struct TYPE_8__ {int cancelledDueToDeadlock; int /*<<< orphan*/  mutex; TYPE_1__ transactionId; } ;
struct TYPE_7__ {size_t pgprocno; int /*<<< orphan*/  pid; } ;
typedef  TYPE_2__ PGPROC ;
typedef  TYPE_3__ BackendData ;

/* Variables and functions */
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  WARNING ; 
 TYPE_4__* backendManagementShmemData ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC5(PGPROC *proc)
{
	BackendData *backendData = &backendManagementShmemData->backends[proc->pgprocno];

	/* backend might not have used citus yet and thus not initialized backend data */
	if (!backendData)
	{
		return;
	}

	FUNC0(&backendData->mutex);

	/* send a SIGINT only if the process is still in a distributed transaction */
	if (backendData->transactionId.transactionNumber != 0)
	{
		backendData->cancelledDueToDeadlock = true;
		FUNC1(&backendData->mutex);

		if (FUNC4(proc->pid, SIGINT) != 0)
		{
			FUNC2(WARNING,
					(FUNC3("attempted to cancel this backend (pid: %d) to resolve a "
							"distributed deadlock but the backend could not "
							"be cancelled", proc->pid)));
		}
	}
	else
	{
		FUNC1(&backendData->mutex);
	}
}