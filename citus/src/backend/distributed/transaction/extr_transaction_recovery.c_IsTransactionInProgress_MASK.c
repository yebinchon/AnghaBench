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
typedef  int /*<<< orphan*/  int32 ;
typedef  int /*<<< orphan*/  HTAB ;

/* Variables and functions */
 int /*<<< orphan*/  HASH_FIND ; 
 int FUNC0 (char*,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static bool
FUNC2(HTAB *activeTransactionNumberSet, char *preparedTransactionName)
{
	int32 groupId = 0;
	int procId = 0;
	uint32 connectionNumber = 0;
	uint64 transactionNumber = 0;
	bool isValidName = false;
	bool isTransactionInProgress = false;

	isValidName = FUNC0(preparedTransactionName, &groupId, &procId,
											   &transactionNumber, &connectionNumber);
	if (isValidName)
	{
		FUNC1(activeTransactionNumberSet, &transactionNumber, HASH_FIND,
					&isTransactionInProgress);
	}

	return isTransactionInProgress;
}