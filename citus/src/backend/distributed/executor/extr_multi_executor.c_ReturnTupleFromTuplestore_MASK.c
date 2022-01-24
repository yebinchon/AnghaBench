#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  Tuplestorestate ;
typedef  int /*<<< orphan*/  TupleTableSlot ;
struct TYPE_9__ {int /*<<< orphan*/ * ps_ResultTupleSlot; } ;
struct TYPE_10__ {TYPE_1__ ps; } ;
struct TYPE_11__ {TYPE_2__ ss; } ;
struct TYPE_13__ {TYPE_3__ customScanState; int /*<<< orphan*/ * tuplestorestate; } ;
struct TYPE_12__ {int /*<<< orphan*/  es_direction; } ;
typedef  int /*<<< orphan*/  ScanDirection ;
typedef  TYPE_4__ EState ;
typedef  TYPE_5__ CitusScanState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NoMovementScanDirection ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC3 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *) ; 

TupleTableSlot *
FUNC5(CitusScanState *scanState)
{
	Tuplestorestate *tupleStore = scanState->tuplestorestate;
	TupleTableSlot *resultSlot = NULL;
	EState *executorState = NULL;
	ScanDirection scanDirection = NoMovementScanDirection;
	bool forwardScanDirection = true;

	if (tupleStore == NULL)
	{
		return NULL;
	}

	executorState = FUNC3(scanState);
	scanDirection = executorState->es_direction;
	FUNC0(FUNC2(scanDirection));

	if (FUNC1(scanDirection))
	{
		forwardScanDirection = false;
	}

	resultSlot = scanState->customScanState.ss.ps.ps_ResultTupleSlot;
	FUNC4(tupleStore, forwardScanDirection, false, resultSlot);

	return resultSlot;
}