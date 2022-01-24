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
typedef  int /*<<< orphan*/  int64 ;
typedef  int /*<<< orphan*/  LOCKTAG ;
typedef  int /*<<< orphan*/  LOCKMODE ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int const,int const) ; 
 int /*<<< orphan*/  MyDatabaseId ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

bool
FUNC2(int64 shardId, LOCKMODE lockMode)
{
	LOCKTAG tag;
	const bool sessionLock = false;
	const bool dontWait = true;
	bool lockAcquired = false;

	FUNC1(tag, MyDatabaseId, shardId);

	lockAcquired = FUNC0(&tag, lockMode, sessionLock, dontWait);

	return lockAcquired;
}