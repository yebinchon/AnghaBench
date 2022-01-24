#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {scalar_t__ transactionNumber; } ;
struct TYPE_12__ {TYPE_3__* initiatorProc; TYPE_1__ transactionId; } ;
typedef  TYPE_2__ TransactionNode ;
struct TYPE_16__ {TYPE_3__* allProcs; } ;
struct TYPE_14__ {scalar_t__ transactionNumber; scalar_t__ initiatorNodeIdentifier; int /*<<< orphan*/  transactionOriginator; } ;
struct TYPE_15__ {TYPE_4__ transactionId; } ;
struct TYPE_13__ {scalar_t__ pid; } ;
typedef  TYPE_3__ PGPROC ;
typedef  TYPE_4__ DistributedTransactionId ;
typedef  TYPE_5__ BackendData ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,TYPE_5__*) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*) ; 
 int MaxBackends ; 
 TYPE_6__* ProcGlobal ; 

__attribute__((used)) static bool
FUNC4(TransactionNode *transactionNode)
{
	int backendIndex = 0;

	for (backendIndex = 0; backendIndex < MaxBackends; ++backendIndex)
	{
		PGPROC *currentProc = &ProcGlobal->allProcs[backendIndex];
		BackendData currentBackendData;
		DistributedTransactionId *currentTransactionId = NULL;

		/* we're not interested in processes that are not active or waiting on a lock */
		if (currentProc->pid <= 0)
		{
			continue;
		}

		FUNC1(currentProc, &currentBackendData);

		/* we're only interested in distribtued transactions */
		if (!FUNC3(&currentBackendData))
		{
			continue;
		}

		currentTransactionId = &currentBackendData.transactionId;

		if (currentTransactionId->transactionNumber !=
			transactionNode->transactionId.transactionNumber)
		{
			continue;
		}

		/* we're only interested in transactions started on this node */
		if (!currentTransactionId->transactionOriginator)
		{
			continue;
		}

		/* at the point we should only have transactions initiated by this node */
		FUNC0(currentTransactionId->initiatorNodeIdentifier == FUNC2());

		transactionNode->initiatorProc = currentProc;

		return true;
	}

	return false;
}