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
typedef  int /*<<< orphan*/  dsm_segment ;
typedef  int /*<<< orphan*/  dsm_handle ;
struct TYPE_3__ {void* steps; } ;
typedef  TYPE_1__ ProgressMonitorData ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 

ProgressMonitorData *
FUNC3(dsm_handle dsmHandle, dsm_segment **attachedSegment)
{
	dsm_segment *dsmSegment = FUNC1(dsmHandle);
	ProgressMonitorData *monitor = NULL;

	if (dsmSegment == NULL)
	{
		dsmSegment = FUNC0(dsmHandle);
	}

	if (dsmSegment != NULL)
	{
		monitor = (ProgressMonitorData *) FUNC2(dsmSegment);
		monitor->steps = (void *) (monitor + 1);
		*attachedSegment = dsmSegment;
	}

	return monitor;
}