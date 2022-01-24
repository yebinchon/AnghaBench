#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32 ;
struct TYPE_6__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_1__* StringInfo ;

/* Variables and functions */
 int /*<<< orphan*/  MIN_TASK_FILENAME_WIDTH ; 
 int /*<<< orphan*/  TASK_FILE_PREFIX ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 () ; 

StringInfo
FUNC2(StringInfo directoryName, uint32 taskId)
{
	StringInfo taskFilename = FUNC1();
	FUNC0(taskFilename, "%s/%s%0*u",
					 directoryName->data,
					 TASK_FILE_PREFIX, MIN_TASK_FILENAME_WIDTH, taskId);

	return taskFilename;
}