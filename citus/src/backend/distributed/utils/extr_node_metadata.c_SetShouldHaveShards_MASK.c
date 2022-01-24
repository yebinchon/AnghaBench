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
typedef  int /*<<< orphan*/  WorkerNode ;

/* Variables and functions */
 int /*<<< orphan*/  Anum_pg_dist_node_shouldhaveshards ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static WorkerNode *
FUNC2(WorkerNode *workerNode, bool shouldHaveShards)
{
	return FUNC1(workerNode, Anum_pg_dist_node_shouldhaveshards,
						   FUNC0(shouldHaveShards));
}