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
typedef  int /*<<< orphan*/  WorkerTasksSharedStateData ;
typedef  int Size ;

/* Variables and functions */
 int /*<<< orphan*/  MaxTrackedTasksPerNode ; 
 int /*<<< orphan*/  WORKER_TASK_SIZE ; 
 int FUNC0 (int,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static Size
FUNC2(void)
{
	Size size = 0;
	Size hashSize = 0;

	size = FUNC0(size, sizeof(WorkerTasksSharedStateData));

	hashSize = FUNC1(MaxTrackedTasksPerNode, WORKER_TASK_SIZE);
	size = FUNC0(size, hashSize);

	return size;
}