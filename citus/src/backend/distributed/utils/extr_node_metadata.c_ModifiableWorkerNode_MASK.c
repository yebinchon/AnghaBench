#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  int32 ;
typedef  int /*<<< orphan*/  WorkerNode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  ExclusiveLock ; 
 int /*<<< orphan*/ * FUNC3 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static WorkerNode *
FUNC7(const char *nodeName, int32 nodePort)
{
	WorkerNode *workerNode = NULL;

	FUNC0(ERROR);

	FUNC2();

	/* take an exclusive lock on pg_dist_node to serialize pg_dist_node changes */
	FUNC4(FUNC1(), ExclusiveLock);

	workerNode = FUNC3(nodeName, nodePort);
	if (workerNode == NULL)
	{
		FUNC5(ERROR, (FUNC6("node at \"%s:%u\" does not exist", nodeName, nodePort)));
	}

	return workerNode;
}