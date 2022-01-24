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
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  PU_CACHE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int finalestage ; 
 int gameepisode ; 
 int /*<<< orphan*/  gamemode ; 
 int /*<<< orphan*/  retail ; 

void FUNC5 (void)
{
    if (finalestage == 2)
    {
	FUNC1 ();
	return;
    }

    if (!finalestage)
	FUNC2 ();
    else
    {
	switch (gameepisode)
	{
	  case 1:
	    if ( gamemode == retail )
	      FUNC3 (0,0,0,
			 FUNC4("CREDIT",PU_CACHE));
	    else
	      FUNC3 (0,0,0,
			 FUNC4("HELP2",PU_CACHE));
	    break;
	  case 2:
	    FUNC3(0,0,0,
			FUNC4("VICTORY2",PU_CACHE));
	    break;
	  case 3:
	    FUNC0 ();
	    break;
	  case 4:
	    FUNC3 (0,0,0,
			 FUNC4("ENDPIC",PU_CACHE));
	    break;
	}
    }
			
}