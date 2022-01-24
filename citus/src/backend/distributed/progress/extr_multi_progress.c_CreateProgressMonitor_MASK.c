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
typedef  int /*<<< orphan*/  uint64 ;
typedef  int /*<<< orphan*/  dsm_segment ;
typedef  int /*<<< orphan*/  dsm_handle ;
struct TYPE_4__ {int stepCount; int /*<<< orphan*/  processId; } ;
typedef  int Size ;
typedef  TYPE_1__ ProgressMonitorData ;
typedef  int /*<<< orphan*/  Oid ;

/* Variables and functions */
 int /*<<< orphan*/  DSM_CREATE_NULL_IF_MAXSEGMENTS ; 
 int /*<<< orphan*/  ERROR ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  MyProcPid ; 
 int /*<<< orphan*/  PROGRESS_COMMAND_VACUUM ; 
 int /*<<< orphan*/  WARNING ; 
 int /*<<< orphan*/  currentProgressDSMHandle ; 
 int /*<<< orphan*/ * FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 

ProgressMonitorData *
FUNC7(uint64 progressTypeMagicNumber, int stepCount, Size stepSize,
					  Oid relationId)
{
	dsm_segment *dsmSegment = NULL;
	dsm_handle dsmHandle = 0;
	ProgressMonitorData *monitor = NULL;
	Size monitorSize = 0;

	if (stepSize <= 0 || stepCount <= 0)
	{
		FUNC3(ERROR,
				(FUNC4("number of steps and size of each step should be "
						"positive values")));
	}

	monitorSize = sizeof(ProgressMonitorData) + stepSize * stepCount;
	dsmSegment = FUNC1(monitorSize, DSM_CREATE_NULL_IF_MAXSEGMENTS);

	if (dsmSegment == NULL)
	{
		FUNC3(WARNING,
				(FUNC4("could not create a dynamic shared memory segment to "
						"keep track of progress of the current command")));
		return NULL;
	}

	dsmHandle = FUNC2(dsmSegment);

	monitor = FUNC0(dsmHandle, &dsmSegment);

	monitor->stepCount = stepCount;
	monitor->processId = MyProcPid;

	FUNC5(PROGRESS_COMMAND_VACUUM, relationId);
	FUNC6(1, dsmHandle);
	FUNC6(0, progressTypeMagicNumber);

	currentProgressDSMHandle = dsmHandle;

	return monitor;
}