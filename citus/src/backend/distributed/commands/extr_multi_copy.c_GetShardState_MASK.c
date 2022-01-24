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
typedef  int /*<<< orphan*/  HTAB ;
typedef  int /*<<< orphan*/  CopyShardState ;

/* Variables and functions */
 int /*<<< orphan*/  HASH_ENTER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static CopyShardState *
FUNC2(uint64 shardId, HTAB *shardStateHash,
			  HTAB *connectionStateHash, bool stopOnFailure, bool *found)
{
	CopyShardState *shardState = NULL;

	shardState = (CopyShardState *) FUNC1(shardStateHash, &shardId,
												HASH_ENTER, found);
	if (!*found)
	{
		FUNC0(shardState, connectionStateHash,
								 shardId, stopOnFailure);
	}

	return shardState;
}