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
typedef  int /*<<< orphan*/  uint64 ;
typedef  int /*<<< orphan*/  uint32 ;
typedef  int /*<<< orphan*/  StringInfo ;

/* Variables and functions */
 int /*<<< orphan*/  AccessExclusiveLock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

StringInfo
FUNC6(uint64 jobId, uint32 taskId)
{
	bool jobDirectoryExists = false;
	bool taskDirectoryExists = false;

	/*
	 * If the task tracker assigned this task (regular case), the tracker should
	 * have already created the job directory.
	 */
	StringInfo jobDirectoryName = FUNC2(jobId);
	StringInfo taskDirectoryName = FUNC4(jobId, taskId);

	FUNC3(jobId, AccessExclusiveLock);

	jobDirectoryExists = FUNC1(jobDirectoryName);
	if (!jobDirectoryExists)
	{
		FUNC0(jobDirectoryName);
	}

	taskDirectoryExists = FUNC1(taskDirectoryName);
	if (!taskDirectoryExists)
	{
		FUNC0(taskDirectoryName);
	}

	FUNC5(jobId, AccessExclusiveLock);

	return taskDirectoryName;
}