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
typedef  int /*<<< orphan*/  DistTableCacheEntry ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  DistTableCacheHash ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 

void
FUNC5(void)
{
	DistTableCacheEntry *cacheEntry = NULL;
	HASH_SEQ_STATUS status;

	FUNC3(&status, DistTableCacheHash);

	while ((cacheEntry = (DistTableCacheEntry *) FUNC4(&status)) != NULL)
	{
		FUNC1(cacheEntry);
	}

	FUNC2(DistTableCacheHash);
	FUNC0();
}