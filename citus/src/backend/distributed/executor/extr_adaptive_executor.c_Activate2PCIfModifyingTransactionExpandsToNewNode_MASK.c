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
struct TYPE_5__ {int /*<<< orphan*/  connection; TYPE_1__* workerPool; } ;
typedef  TYPE_2__ WorkerSession ;
struct TYPE_4__ {int /*<<< orphan*/ * distributedExecution; } ;
typedef  int /*<<< orphan*/  DistributedExecution ;

/* Variables and functions */
 scalar_t__ COMMIT_PROTOCOL_2PC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ MultiShardCommitProtocol ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(WorkerSession *session)
{
	DistributedExecution *execution = NULL;

	if (MultiShardCommitProtocol != COMMIT_PROTOCOL_2PC)
	{
		/* we don't need 2PC, so no need to continue */
		return;
	}

	execution = session->workerPool->distributedExecution;
	if (FUNC3(execution) &&
		FUNC2(execution) &&
		!FUNC0(session->connection))
	{
		/*
		 * We already did a modification, but not on the connection that we
		 * just opened, which means we're now going to make modifications
		 * over multiple connections. Activate 2PC!
		 */
		FUNC1();
	}
}