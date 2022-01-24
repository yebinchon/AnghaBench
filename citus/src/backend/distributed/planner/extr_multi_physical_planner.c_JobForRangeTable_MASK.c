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
typedef  int /*<<< orphan*/  RangeTblEntry ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  Job ;
typedef  scalar_t__ CitusRTEKind ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ CITUS_RTE_REMOTE_QUERY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * NIL ; 

__attribute__((used)) static Job *
FUNC3(List *jobList, RangeTblEntry *rangeTableEntry)
{
	Job *searchedJob = NULL;
	List *searchedTableIdList = NIL;
	CitusRTEKind rangeTableKind;

	FUNC1(rangeTableEntry, &rangeTableKind, NULL, NULL,
							 &searchedTableIdList);

	FUNC0(rangeTableKind == CITUS_RTE_REMOTE_QUERY);

	searchedJob = FUNC2(jobList, searchedTableIdList);

	return searchedJob;
}