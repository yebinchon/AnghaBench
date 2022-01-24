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
typedef  scalar_t__ uint64 ;
typedef  int /*<<< orphan*/  LOCKTAG ;
typedef  int /*<<< orphan*/  LOCKMODE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ INVALID_SHARD_ID ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int const,int const) ; 
 int /*<<< orphan*/  MyDatabaseId ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

void
FUNC3(uint64 shardId, LOCKMODE lockmode)
{
	LOCKTAG tag;
	const bool sessionLock = false;
	const bool dontWait = false;

	FUNC0(shardId != INVALID_SHARD_ID);

	FUNC2(tag, MyDatabaseId, shardId);

	(void) FUNC1(&tag, lockmode, sessionLock, dontWait);
}