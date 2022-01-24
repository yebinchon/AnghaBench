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
typedef  int /*<<< orphan*/  HASH_SEQ_STATUS ;
typedef  int /*<<< orphan*/  ConnectionHashEntry ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  ConnectionHash ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 

void
FUNC3(bool isCommit)
{
	HASH_SEQ_STATUS status;
	ConnectionHashEntry *entry;

	FUNC1(&status, ConnectionHash);
	while ((entry = (ConnectionHashEntry *) FUNC2(&status)) != 0)
	{
		FUNC0(entry, isCommit);

		/*
		 * NB: We leave the hash entry in place, even if there's no individual
		 * connections in it anymore. There seems no benefit in deleting it,
		 * and it'll save a bit of work in the next transaction.
		 */
	}
}