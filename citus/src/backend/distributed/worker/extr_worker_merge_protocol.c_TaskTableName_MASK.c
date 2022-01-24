#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uint32 ;
typedef  int /*<<< orphan*/  StringInfo ;

/* Variables and functions */
 int /*<<< orphan*/  MIN_TASK_FILENAME_WIDTH ; 
 int /*<<< orphan*/  TASK_TABLE_PREFIX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 

StringInfo
FUNC2(uint32 taskId)
{
	StringInfo taskTableName = FUNC1();
	FUNC0(taskTableName, "%s%0*u",
					 TASK_TABLE_PREFIX, MIN_TASK_FILENAME_WIDTH, taskId);

	return taskTableName;
}