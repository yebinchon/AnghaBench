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
struct TYPE_5__ {int nodeId; } ;
typedef  TYPE_1__ WorkerNode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  ExclusiveLock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_1__* FUNC3 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static int
FUNC5(char *nodeName, int nodePort)
{
	WorkerNode *newWorkerNode = NULL;
	bool isActive = true;

	/* take an exclusive lock on pg_dist_node to serialize pg_dist_node changes */
	FUNC1(FUNC0(), ExclusiveLock);

	newWorkerNode = FUNC3(nodeName, nodePort, isActive);

	FUNC2(newWorkerNode);
	FUNC4(newWorkerNode);
	return newWorkerNode->nodeId;
}