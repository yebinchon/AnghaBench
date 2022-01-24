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
struct TYPE_3__ {scalar_t__ connectionStateHash; scalar_t__ shardStateHash; struct TYPE_3__* columnCoercionPaths; struct TYPE_3__* columnOutputFunctions; struct TYPE_3__* copyOutState; } ;
typedef  int /*<<< orphan*/  DestReceiver ;
typedef  TYPE_1__ CitusCopyDestReceiver ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC2(DestReceiver *destReceiver)
{
	CitusCopyDestReceiver *copyDest = (CitusCopyDestReceiver *) destReceiver;

	if (copyDest->copyOutState)
	{
		FUNC1(copyDest->copyOutState);
	}

	if (copyDest->columnOutputFunctions)
	{
		FUNC1(copyDest->columnOutputFunctions);
	}

	if (copyDest->columnCoercionPaths)
	{
		FUNC1(copyDest->columnCoercionPaths);
	}

	if (copyDest->shardStateHash)
	{
		FUNC0(copyDest->shardStateHash);
	}

	if (copyDest->connectionStateHash)
	{
		FUNC0(copyDest->connectionStateHash);
	}

	FUNC1(copyDest);
}