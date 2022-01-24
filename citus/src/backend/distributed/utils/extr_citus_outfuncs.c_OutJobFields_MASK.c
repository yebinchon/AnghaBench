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
typedef  int /*<<< orphan*/  StringInfo ;
typedef  int /*<<< orphan*/  Job ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  deferredPruning ; 
 int /*<<< orphan*/  dependedJobList ; 
 int /*<<< orphan*/  jobId ; 
 int /*<<< orphan*/  jobQuery ; 
 int /*<<< orphan*/  partitionKeyValue ; 
 int /*<<< orphan*/  requiresMasterEvaluation ; 
 int /*<<< orphan*/  subqueryPushdown ; 
 int /*<<< orphan*/  taskList ; 

__attribute__((used)) static void
FUNC3(StringInfo str, const Job *node)
{
	FUNC2(jobId);
	FUNC1(jobQuery);
	FUNC1(taskList);
	FUNC1(dependedJobList);
	FUNC0(subqueryPushdown);
	FUNC0(requiresMasterEvaluation);
	FUNC0(deferredPruning);
	FUNC1(partitionKeyValue);
}