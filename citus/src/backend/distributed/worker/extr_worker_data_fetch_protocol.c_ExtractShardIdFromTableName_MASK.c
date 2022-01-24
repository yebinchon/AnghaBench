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

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  INVALID_SHARD_ID ; 
 int /*<<< orphan*/  SHARD_NAME_SEPARATOR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (char*,char**,int /*<<< orphan*/ ) ; 
 char* FUNC3 (char const*,int /*<<< orphan*/ ) ; 

uint64
FUNC4(const char *tableName, bool missingOk)
{
	uint64 shardId = 0;
	char *shardIdString = NULL;
	char *shardIdStringEnd = NULL;

	/* find the last underscore and increment for shardId string */
	shardIdString = FUNC3(tableName, SHARD_NAME_SEPARATOR);
	if (shardIdString == NULL && !missingOk)
	{
		FUNC0(ERROR, (FUNC1("could not extract shardId from table name \"%s\"",
							   tableName)));
	}
	else if (shardIdString == NULL && missingOk)
	{
		return INVALID_SHARD_ID;
	}

	shardIdString++;

	errno = 0;
	shardId = FUNC2(shardIdString, &shardIdStringEnd, 0);

	if (errno != 0 || (*shardIdStringEnd != '\0'))
	{
		if (!missingOk)
		{
			FUNC0(ERROR, (FUNC1("could not extract shardId from table name \"%s\"",
								   tableName)));
		}
		else
		{
			return INVALID_SHARD_ID;
		}
	}

	return shardId;
}