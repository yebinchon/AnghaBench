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
typedef  int /*<<< orphan*/  WorkerNode ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  HTAB ;
typedef  int /*<<< orphan*/  HASH_SEQ_STATUS ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * NIL ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static List *
FUNC6(List *currentList)
{
	List *workerNodeList = NIL;
	HTAB *workerNodeHash = FUNC0();
	WorkerNode *workerNode = NULL;
	HASH_SEQ_STATUS status;

	FUNC3(&status, workerNodeHash);

	while ((workerNode = FUNC4(&status)) != NULL)
	{
		if (FUNC1(currentList, workerNode))
		{
			continue;
		}

		if (FUNC2(workerNode))
		{
			workerNodeList = FUNC5(workerNodeList, workerNode);
		}
	}

	return workerNodeList;
}