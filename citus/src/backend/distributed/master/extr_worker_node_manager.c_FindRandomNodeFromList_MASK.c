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
typedef  int uint32 ;
typedef  int /*<<< orphan*/  WorkerNode ;
typedef  int /*<<< orphan*/  List ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 () ; 

__attribute__((used)) static WorkerNode *
FUNC3(List *candidateWorkerNodeList)
{
	uint32 candidateNodeCount = FUNC0(candidateWorkerNodeList);

	/* nb, the random seed has already been set by the postmaster when starting up */
	uint32 workerPosition = (FUNC2() % candidateNodeCount);

	WorkerNode *workerNode =
		(WorkerNode *) FUNC1(candidateWorkerNodeList, workerPosition);

	return workerNode;
}