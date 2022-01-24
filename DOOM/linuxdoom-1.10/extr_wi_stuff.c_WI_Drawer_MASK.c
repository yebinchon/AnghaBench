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
#define  NoState 130 
#define  ShowNextLoc 129 
#define  StatCount 128 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  deathmatch ; 
 int /*<<< orphan*/  netgame ; 
 int state ; 

void FUNC5 (void)
{
    switch (state)
    {
      case StatCount:
	if (deathmatch)
	    FUNC0();
	else if (netgame)
	    FUNC1();
	else
	    FUNC4();
	break;
	
      case ShowNextLoc:
	FUNC3();
	break;
	
      case NoState:
	FUNC2();
	break;
    }
}