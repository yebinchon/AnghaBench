#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32 ;
struct TYPE_3__ {int /*<<< orphan*/  groupId; } ;
typedef  TYPE_1__ WorkerNode ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 TYPE_1__* FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 

uint32
FUNC3(char *nodeName, int nodePort)
{
	WorkerNode *workerNode = FUNC0(nodeName, nodePort);

	if (workerNode == NULL)
	{
		FUNC1(ERROR, (FUNC2("node at \"%s:%u\" does not exist", nodeName, nodePort)));
	}

	return workerNode->groupId;
}