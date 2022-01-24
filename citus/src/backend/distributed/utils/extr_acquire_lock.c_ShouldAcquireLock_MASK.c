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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  MyLatch ; 
 int /*<<< orphan*/  PG_WAIT_EXTENSION ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int WL_LATCH_SET ; 
 int WL_POSTMASTER_DEATH ; 
 int WL_TIMEOUT ; 
 int FUNC2 (int /*<<< orphan*/ ,int,long,int /*<<< orphan*/ ) ; 
 scalar_t__ got_sigterm ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static bool
FUNC4(long sleepms)
{
	int rc;

	/* early escape in case we already got the signal to stop acquiring the lock */
	if (got_sigterm)
	{
		return false;
	}

	rc = FUNC2(MyLatch, WL_LATCH_SET | WL_TIMEOUT | WL_POSTMASTER_DEATH,
				   sleepms * 1L, PG_WAIT_EXTENSION);
	FUNC1(MyLatch);

	/* emergency bailout if postmaster has died */
	if (rc & WL_POSTMASTER_DEATH)
	{
		FUNC3(1);
	}

	FUNC0();

	return !got_sigterm;
}