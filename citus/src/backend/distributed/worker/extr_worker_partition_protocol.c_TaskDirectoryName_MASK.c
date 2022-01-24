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
typedef  int /*<<< orphan*/  uint64 ;
typedef  int /*<<< orphan*/  uint32 ;
struct TYPE_6__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_1__* StringInfo ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MIN_TASK_FILENAME_WIDTH ; 
 int /*<<< orphan*/  TASK_FILE_PREFIX ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 () ; 

StringInfo
FUNC3(uint64 jobId, uint32 taskId)
{
	StringInfo jobDirectoryName = FUNC0(jobId);

	StringInfo taskDirectoryName = FUNC2();
	FUNC1(taskDirectoryName, "%s/%s%0*u",
					 jobDirectoryName->data,
					 TASK_FILE_PREFIX, MIN_TASK_FILENAME_WIDTH, taskId);

	return taskDirectoryName;
}