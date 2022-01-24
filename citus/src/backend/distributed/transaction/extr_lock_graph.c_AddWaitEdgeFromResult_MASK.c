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
typedef  int /*<<< orphan*/  WaitGraph ;
struct TYPE_3__ {int /*<<< orphan*/  isBlockingXactWaiting; void* blockingTransactionStamp; void* blockingTransactionNum; void* blockingNodeId; void* blockingPid; void* waitingTransactionStamp; void* waitingTransactionNum; void* waitingNodeId; void* waitingPid; } ;
typedef  TYPE_1__ WaitEdge ;
typedef  int /*<<< orphan*/  PGresult ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 void* FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 void* FUNC3 (int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static void
FUNC4(WaitGraph *waitGraph, PGresult *result, int rowIndex)
{
	WaitEdge *waitEdge = FUNC0(waitGraph);

	waitEdge->waitingPid = FUNC2(result, rowIndex, 0);
	waitEdge->waitingNodeId = FUNC2(result, rowIndex, 1);
	waitEdge->waitingTransactionNum = FUNC2(result, rowIndex, 2);
	waitEdge->waitingTransactionStamp = FUNC3(result, rowIndex, 3);
	waitEdge->blockingPid = FUNC2(result, rowIndex, 4);
	waitEdge->blockingNodeId = FUNC2(result, rowIndex, 5);
	waitEdge->blockingTransactionNum = FUNC2(result, rowIndex, 6);
	waitEdge->blockingTransactionStamp = FUNC3(result, rowIndex, 7);
	waitEdge->isBlockingXactWaiting = FUNC1(result, rowIndex, 8);
}