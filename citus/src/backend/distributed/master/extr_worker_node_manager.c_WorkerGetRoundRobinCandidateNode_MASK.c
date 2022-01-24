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
typedef  int /*<<< orphan*/  uint64 ;
typedef  int uint32 ;
typedef  int /*<<< orphan*/  WorkerNode ;
typedef  int /*<<< orphan*/  List ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int) ; 

WorkerNode *
FUNC2(List *workerNodeList, uint64 shardId,
								 uint32 placementIndex)
{
	uint32 workerNodeCount = FUNC0(workerNodeList);
	WorkerNode *candidateNode = NULL;

	if (placementIndex < workerNodeCount)
	{
		uint32 candidateNodeIndex = (shardId + placementIndex) % workerNodeCount;
		candidateNode = (WorkerNode *) FUNC1(workerNodeList, candidateNodeIndex);
	}

	return candidateNode;
}