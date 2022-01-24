#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {int /*<<< orphan*/  localNodeId; } ;
typedef  TYPE_1__ WaitGraph ;
struct TYPE_18__ {int isBlockingXactWaiting; scalar_t__ blockingTransactionStamp; scalar_t__ blockingTransactionNum; int /*<<< orphan*/  blockingNodeId; int /*<<< orphan*/  blockingPid; scalar_t__ waitingTransactionStamp; scalar_t__ waitingTransactionNum; int /*<<< orphan*/  waitingNodeId; int /*<<< orphan*/  waitingPid; } ;
typedef  TYPE_2__ WaitEdge ;
struct TYPE_20__ {scalar_t__ timestamp; scalar_t__ transactionNumber; int /*<<< orphan*/  initiatorNodeIdentifier; } ;
struct TYPE_21__ {TYPE_4__ transactionId; } ;
struct TYPE_19__ {int /*<<< orphan*/  pid; } ;
typedef  int /*<<< orphan*/  PROCStack ;
typedef  TYPE_3__ PGPROC ;
typedef  TYPE_4__ DistributedTransactionId ;
typedef  TYPE_5__ BackendData ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 TYPE_2__* FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,TYPE_5__*) ; 
 scalar_t__ FUNC3 (TYPE_5__*) ; 
 scalar_t__ FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 

__attribute__((used)) static void
FUNC6(WaitGraph *waitGraph, PGPROC *waitingProc, PGPROC *blockingProc,
			PROCStack *remaining)
{
	WaitEdge *curEdge = FUNC1(waitGraph);
	BackendData waitingBackendData;
	BackendData blockingBackendData;

	FUNC2(waitingProc, &waitingBackendData);
	FUNC2(blockingProc, &blockingBackendData);

	curEdge->isBlockingXactWaiting =
		FUNC4(blockingProc) &&
		!FUNC5(blockingProc);
	if (curEdge->isBlockingXactWaiting)
	{
		FUNC0(remaining, blockingProc);
	}

	curEdge->waitingPid = waitingProc->pid;

	if (FUNC3(&waitingBackendData))
	{
		DistributedTransactionId *waitingTransactionId =
			&waitingBackendData.transactionId;

		curEdge->waitingNodeId = waitingTransactionId->initiatorNodeIdentifier;
		curEdge->waitingTransactionNum = waitingTransactionId->transactionNumber;
		curEdge->waitingTransactionStamp = waitingTransactionId->timestamp;
	}
	else
	{
		curEdge->waitingNodeId = waitGraph->localNodeId;
		curEdge->waitingTransactionNum = 0;
		curEdge->waitingTransactionStamp = 0;
	}

	curEdge->blockingPid = blockingProc->pid;

	if (FUNC3(&blockingBackendData))
	{
		DistributedTransactionId *blockingTransactionId =
			&blockingBackendData.transactionId;

		curEdge->blockingNodeId = blockingTransactionId->initiatorNodeIdentifier;
		curEdge->blockingTransactionNum = blockingTransactionId->transactionNumber;
		curEdge->blockingTransactionStamp = blockingTransactionId->timestamp;
	}
	else
	{
		curEdge->blockingNodeId = waitGraph->localNodeId;
		curEdge->blockingTransactionNum = 0;
		curEdge->blockingTransactionStamp = 0;
	}
}