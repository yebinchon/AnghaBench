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
 int /*<<< orphan*/  WCB_B_BIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * gp2x_screens ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 

void FUNC3(int yes)
{
	int ret = 0;
	
	yes = yes ? 1 : 0;
	ret |= FUNC2(WCB_B_BIT, yes, gp2x_screens[0], 320*240*2);
	ret |= FUNC2(WCB_B_BIT, yes, gp2x_screens[1], 320*240*2);
	ret |= FUNC2(WCB_B_BIT, yes, gp2x_screens[2], 320*240*2);
	ret |= FUNC2(WCB_B_BIT, yes, gp2x_screens[3], 320*240*2);

	if (ret)
		FUNC0(stderr, "could not make fb buferable.\n");
	else
		FUNC1("made fb buferable.\n");
}