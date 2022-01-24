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
struct TYPE_4__ {int /*<<< orphan*/  dependedJobList; int /*<<< orphan*/  jobId; } ;
typedef  int /*<<< orphan*/  List ;
typedef  TYPE_1__ Job ;

/* Variables and functions */
 int /*<<< orphan*/ * NIL ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_1__*) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static List *
FUNC7(Job *job)
{
	List *jobIdList = NIL;
	List *jobQueue = NIL;

	/*
	 * We walk over the job tree using breadth-first search. For this, we first
	 * queue the root node, and then start traversing our search space.
	 */
	jobQueue = FUNC5(job);
	while (jobQueue != NIL)
	{
		uint64 *jobIdPointer = (uint64 *) FUNC6(sizeof(uint64));
		List *jobChildrenList = NIL;

		Job *currJob = (Job *) FUNC1(jobQueue);
		jobQueue = FUNC4(jobQueue);

		(*jobIdPointer) = currJob->jobId;
		jobIdList = FUNC0(jobIdList, jobIdPointer);

		/* prevent dependedJobList being modified on list_concat() call */
		jobChildrenList = FUNC3(currJob->dependedJobList);
		if (jobChildrenList != NIL)
		{
			jobQueue = FUNC2(jobQueue, jobChildrenList);
		}
	}

	return jobIdList;
}