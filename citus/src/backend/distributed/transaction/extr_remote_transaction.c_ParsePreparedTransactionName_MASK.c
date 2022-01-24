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
typedef  int int32 ;

/* Variables and functions */
 scalar_t__ EINVAL ; 
 scalar_t__ ERANGE ; 
 int INT_MAX ; 
 int /*<<< orphan*/  UINT_MAX ; 
 int /*<<< orphan*/  ULLONG_MAX ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *,int) ; 
 char* FUNC1 (char*,char) ; 
 int FUNC2 (char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ *,int) ; 

bool
FUNC4(char *preparedTransactionName,
							 int32 *groupId, int *procId,
							 uint64 *transactionNumber,
							 uint32 *connectionNumber)
{
	char *currentCharPointer = preparedTransactionName;

	currentCharPointer = FUNC1(currentCharPointer, '_');
	if (currentCharPointer == NULL)
	{
		return false;
	}

	/* step ahead of the current '_' character */
	++currentCharPointer;

	*groupId = FUNC2(currentCharPointer, NULL, 10);

	if ((*groupId == 0 && errno == EINVAL) ||
		(*groupId == INT_MAX && errno == ERANGE))
	{
		return false;
	}

	currentCharPointer = FUNC1(currentCharPointer, '_');
	if (currentCharPointer == NULL)
	{
		return false;
	}

	/* step ahead of the current '_' character */
	++currentCharPointer;

	*procId = FUNC2(currentCharPointer, NULL, 10);
	if ((*procId == 0 && errno == EINVAL) ||
		(*procId == INT_MAX && errno == ERANGE))
	{
		return false;
	}

	currentCharPointer = FUNC1(currentCharPointer, '_');
	if (currentCharPointer == NULL)
	{
		return false;
	}

	/* step ahead of the current '_' character */
	++currentCharPointer;

	*transactionNumber = FUNC0(currentCharPointer, NULL, 10);
	if ((*transactionNumber == 0 && errno != 0) ||
		(*transactionNumber == ULLONG_MAX && errno == ERANGE))
	{
		return false;
	}

	currentCharPointer = FUNC1(currentCharPointer, '_');
	if (currentCharPointer == NULL)
	{
		return false;
	}

	/* step ahead of the current '_' character */
	++currentCharPointer;

	*connectionNumber = FUNC3(currentCharPointer, NULL, 10);
	if ((*connectionNumber == 0 && errno == EINVAL) ||
		(*connectionNumber == UINT_MAX && errno == ERANGE))
	{
		return false;
	}

	return true;
}