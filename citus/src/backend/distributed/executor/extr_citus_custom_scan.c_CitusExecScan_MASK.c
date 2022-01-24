#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  TupleTableSlot ;
struct TYPE_4__ {int finishedRemoteScan; } ;
typedef  int /*<<< orphan*/  CustomScanState ;
typedef  TYPE_1__ CitusScanState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__*) ; 

TupleTableSlot *
FUNC2(CustomScanState *node)
{
	CitusScanState *scanState = (CitusScanState *) node;
	TupleTableSlot *resultSlot = NULL;

	if (!scanState->finishedRemoteScan)
	{
		FUNC0(scanState);

		scanState->finishedRemoteScan = true;
	}

	resultSlot = FUNC1(scanState);

	return resultSlot;
}