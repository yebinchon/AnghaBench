#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int relationAccessMode; } ;
typedef  TYPE_1__ RelationAccessHashEntry ;
typedef  int /*<<< orphan*/  HASH_SEQ_STATUS ;

/* Variables and functions */
 int PARALLEL_ACCESS_MASK ; 
 int /*<<< orphan*/ * RelationAccessHash ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

bool
FUNC4(void)
{
	HASH_SEQ_STATUS status;
	RelationAccessHashEntry *hashEntry;

	if (!FUNC0() || RelationAccessHash == NULL)
	{
		return false;
	}

	FUNC1(&status, RelationAccessHash);

	hashEntry = (RelationAccessHashEntry *) FUNC2(&status);
	while (hashEntry != NULL)
	{
		int relationAccessMode = hashEntry->relationAccessMode;
		if ((relationAccessMode & PARALLEL_ACCESS_MASK))
		{
			FUNC3(&status);
			return true;
		}

		hashEntry = (RelationAccessHashEntry *) FUNC2(&status);
	}

	return false;
}