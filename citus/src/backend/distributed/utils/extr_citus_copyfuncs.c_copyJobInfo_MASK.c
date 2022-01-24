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
typedef  int /*<<< orphan*/  Job ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  deferredPruning ; 
 int /*<<< orphan*/  dependedJobList ; 
 int /*<<< orphan*/  jobId ; 
 int /*<<< orphan*/  jobQuery ; 
 int /*<<< orphan*/  partitionKeyValue ; 
 int /*<<< orphan*/  requiresMasterEvaluation ; 
 int /*<<< orphan*/  subqueryPushdown ; 
 int /*<<< orphan*/  taskList ; 

__attribute__((used)) static void
FUNC2(Job *newnode, Job *from)
{
	FUNC1(jobId);
	FUNC0(jobQuery);
	FUNC0(taskList);
	FUNC0(dependedJobList);
	FUNC1(subqueryPushdown);
	FUNC1(requiresMasterEvaluation);
	FUNC1(deferredPruning);
	FUNC0(partitionKeyValue);
}