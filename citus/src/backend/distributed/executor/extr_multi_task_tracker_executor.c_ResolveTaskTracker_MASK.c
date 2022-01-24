#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32 ;
typedef  int /*<<< orphan*/  TaskTracker ;
struct TYPE_7__ {int /*<<< orphan*/  currentNodeIndex; } ;
typedef  TYPE_1__ TaskExecution ;
struct TYPE_8__ {int /*<<< orphan*/ * taskPlacementList; } ;
typedef  TYPE_2__ Task ;
struct TYPE_9__ {char* nodeName; int /*<<< orphan*/  nodePort; } ;
typedef  TYPE_3__ ShardPlacement ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  HTAB ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static TaskTracker *
FUNC3(HTAB *trackerHash, Task *task, TaskExecution *taskExecution)
{
	List *taskPlacementList = task->taskPlacementList;
	uint32 currentIndex = taskExecution->currentNodeIndex;

	ShardPlacement *taskPlacement = FUNC2(taskPlacementList, currentIndex);
	char *nodeName = taskPlacement->nodeName;
	uint32 nodePort = taskPlacement->nodePort;

	/* look up in the tracker hash for the found node name/port */
	TaskTracker *taskTracker = FUNC1(trackerHash, nodeName, nodePort);
	FUNC0(taskTracker != NULL);

	return taskTracker;
}