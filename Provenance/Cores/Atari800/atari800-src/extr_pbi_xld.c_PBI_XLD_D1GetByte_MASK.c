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
typedef  int UWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int PBI_NOT_HANDLED ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 scalar_t__ xld_d_enabled ; 

int FUNC3(UWORD addr)
{
	int result = PBI_NOT_HANDLED;
	if (xld_d_enabled && addr == 0xd114) {
	/* XLD input from disk to atari byte latch */
		result = (int)FUNC1();
		FUNC0(FUNC2("d114: disk read byte:%2x\n",result));
	}
	return result;
}