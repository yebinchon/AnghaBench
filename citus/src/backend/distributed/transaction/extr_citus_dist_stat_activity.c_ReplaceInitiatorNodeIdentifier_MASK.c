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
struct TYPE_5__ {int /*<<< orphan*/  workerPort; int /*<<< orphan*/  workerName; } ;
typedef  TYPE_1__ WorkerNode ;
struct TYPE_6__ {int /*<<< orphan*/  master_query_host_port; int /*<<< orphan*/ * master_query_host_name; } ;
typedef  TYPE_2__ CitusDistStat ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  PostPortNumber ; 
 TYPE_1__* FUNC2 (int,int*) ; 
 int /*<<< orphan*/  coordinator_host_name ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(int initiator_node_identifier,
							   CitusDistStat *citusDistStat)
{
	WorkerNode *initiatorWorkerNode = NULL;

	/*
	 * Replace initiator_node_identifier with initiator_node_hostname
	 * and initiator_node_port given that those are a lot more useful.
	 *
	 * The rules are following:
	 *    - If initiator_node_identifier belongs to a worker, simply get it
	 *      from the metadata
	 *   - If the initiator_node_identifier belongs to the coordinator and
	 *     we're executing the function on the coordinator, get the localhost
	 *     and port
	 *   - If the initiator_node_identifier belongs to the coordinator and
	 *     we're executing the function on a worker node, manually mark it
	 *     as "coordinator_host" given that we cannot know the host and port
	 *   - If the initiator_node_identifier doesn't equal to zero, we know that
	 *     it is a worker query initiated outside of a distributed
	 *     transaction. However, we cannot know which node has initiated
	 *     the worker query.
	 */
	if (initiator_node_identifier > 0)
	{
		bool nodeExists = false;

		initiatorWorkerNode = FUNC2(initiator_node_identifier, &nodeExists);

		/* a query should run on an existing node */
		FUNC0(nodeExists);
		citusDistStat->master_query_host_name =
			FUNC3(initiatorWorkerNode->workerName);
		citusDistStat->master_query_host_port = initiatorWorkerNode->workerPort;
	}
	else if (initiator_node_identifier == 0 && FUNC1())
	{
		citusDistStat->master_query_host_name = FUNC3(coordinator_host_name);
		citusDistStat->master_query_host_port = PostPortNumber;
	}
	else if (initiator_node_identifier == 0)
	{
		citusDistStat->master_query_host_name = FUNC3(coordinator_host_name);
		citusDistStat->master_query_host_port = 0;
	}
	else
	{
		citusDistStat->master_query_host_name = NULL;
		citusDistStat->master_query_host_port = 0;
	}
}