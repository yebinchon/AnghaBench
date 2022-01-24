#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  type; } ;
struct TYPE_7__ {TYPE_1__ ps; } ;
struct TYPE_8__ {int /*<<< orphan*/ * methods; TYPE_2__ ss; } ;
struct TYPE_9__ {TYPE_3__ customScanState; int /*<<< orphan*/  distributedPlan; int /*<<< orphan*/  executorType; } ;
typedef  int /*<<< orphan*/  Node ;
typedef  int /*<<< orphan*/  CustomScan ;
typedef  TYPE_4__ CitusScanState ;

/* Variables and functions */
 int /*<<< orphan*/  CoordinatorInsertSelectCustomExecMethods ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MULTI_EXECUTOR_COORDINATOR_INSERT_SELECT ; 
 int /*<<< orphan*/  T_CustomScanState ; 
 TYPE_4__* FUNC1 (int) ; 

__attribute__((used)) static Node *
FUNC2(CustomScan *scan)
{
	CitusScanState *scanState = FUNC1(sizeof(CitusScanState));

	scanState->executorType = MULTI_EXECUTOR_COORDINATOR_INSERT_SELECT;
	scanState->customScanState.ss.ps.type = T_CustomScanState;
	scanState->distributedPlan = FUNC0(scan);

	scanState->customScanState.methods = &CoordinatorInsertSelectCustomExecMethods;

	return (Node *) scanState;
}