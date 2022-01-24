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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LCK_MTX_ASSERT_OWNED ; 
 int /*<<< orphan*/  hz ; 
 scalar_t__ ipsec_bypass ; 
 scalar_t__ key_timehandler ; 
 int key_timehandler_running ; 
 int /*<<< orphan*/  sadb_mutex ; 
 int /*<<< orphan*/  FUNC1 (void*,void*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(void)
{
	/* must be called while locked */
	FUNC0(sadb_mutex, LCK_MTX_ASSERT_OWNED);
	if (key_timehandler_running == 0) {
		key_timehandler_running = 1;
		(void)FUNC1((void *)key_timehandler, (void *)0, hz);
	}
	
	/* Turn off the ipsec bypass */
	if (ipsec_bypass != 0)
		ipsec_bypass = 0;
}