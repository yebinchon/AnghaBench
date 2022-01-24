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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
#define  ShowNextLoc 129 
#define  StatCount 128 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int bcnt ; 
 scalar_t__ commercial ; 
 int /*<<< orphan*/  deathmatch ; 
 scalar_t__ gamemode ; 
 int /*<<< orphan*/  mus_dm2int ; 
 int /*<<< orphan*/  mus_inter ; 
 int /*<<< orphan*/  netgame ; 
 int state ; 

void FUNC7(void)
{
    // counter for general background animation
    bcnt++;  

    if (bcnt == 1)
    {
	// intermission music
  	if ( gamemode == commercial )
	  FUNC0(mus_dm2int, true);
	else
	  FUNC0(mus_inter, true); 
    }

    FUNC1();

    switch (state)
    {
      case StatCount:
	if (deathmatch) FUNC2();
	else if (netgame) FUNC3();
	else FUNC6();
	break;
	
      case ShowNextLoc:
	FUNC5();
	break;
	
      case NoState:
	FUNC4();
	break;
    }

}