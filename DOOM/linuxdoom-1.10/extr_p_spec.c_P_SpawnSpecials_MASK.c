#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int special; } ;
typedef  TYPE_1__ sector_t ;
typedef  int /*<<< orphan*/  button_t ;
struct TYPE_12__ {int special; } ;

/* Variables and functions */
 int /*<<< orphan*/  FASTDARK ; 
 int MAXBUTTONS ; 
 int MAXCEILINGS ; 
 int MAXPLATS ; 
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  SLOWDARK ; 
 scalar_t__ FUNC7 (char*) ; 
 int /*<<< orphan*/ ** activeceilings ; 
 int /*<<< orphan*/ ** activeplats ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * buttonlist ; 
 scalar_t__ deathmatch ; 
 int levelTimeCount ; 
 int levelTimer ; 
 TYPE_3__* lines ; 
 TYPE_3__** linespeciallist ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * myargv ; 
 int numlines ; 
 size_t numlinespecials ; 
 int numsectors ; 
 TYPE_1__* sectors ; 
 int /*<<< orphan*/  totalsecret ; 

void FUNC10 (void)
{
    sector_t*	sector;
    int		i;
    int		episode;

    episode = 1;
    if (FUNC7("texture2") >= 0)
	episode = 2;

    
    // See if -TIMER needs to be used.
    levelTimer = false;
	
    i = FUNC0("-avg");
    if (i && deathmatch)
    {
	levelTimer = true;
	levelTimeCount = 20 * 60 * 35;
    }
	
    i = FUNC0("-timer");
    if (i && deathmatch)
    {
	int	time;
	time = FUNC8(myargv[i+1]) * 60 * 35;
	levelTimer = true;
	levelTimeCount = time;
    }
    
    //	Init special SECTORs.
    sector = sectors;
    for (i=0 ; i<numsectors ; i++, sector++)
    {
	if (!sector->special)
	    continue;
	
	switch (sector->special)
	{
	  case 1:
	    // FLICKERING LIGHTS
	    FUNC5 (sector);
	    break;

	  case 2:
	    // STROBE FAST
	    FUNC6(sector,FASTDARK,0);
	    break;
	    
	  case 3:
	    // STROBE SLOW
	    FUNC6(sector,SLOWDARK,0);
	    break;
	    
	  case 4:
	    // STROBE FAST/DEATH SLIME
	    FUNC6(sector,FASTDARK,0);
	    sector->special = 4;
	    break;
	    
	  case 8:
	    // GLOWING LIGHT
	    FUNC4(sector);
	    break;
	  case 9:
	    // SECRET SECTOR
	    totalsecret++;
	    break;
	    
	  case 10:
	    // DOOR CLOSE IN 30 SECONDS
	    FUNC1 (sector);
	    break;
	    
	  case 12:
	    // SYNC STROBE SLOW
	    FUNC6 (sector, SLOWDARK, 1);
	    break;

	  case 13:
	    // SYNC STROBE FAST
	    FUNC6 (sector, FASTDARK, 1);
	    break;

	  case 14:
	    // DOOR RAISE IN 5 MINUTES
	    FUNC2 (sector, i);
	    break;
	    
	  case 17:
	    FUNC3(sector);
	    break;
	}
    }

    
    //	Init line EFFECTs
    numlinespecials = 0;
    for (i = 0;i < numlines; i++)
    {
	switch(lines[i].special)
	{
	  case 48:
	    // EFFECT FIRSTCOL SCROLL+
	    linespeciallist[numlinespecials] = &lines[i];
	    numlinespecials++;
	    break;
	}
    }

    
    //	Init other misc stuff
    for (i = 0;i < MAXCEILINGS;i++)
	activeceilings[i] = NULL;

    for (i = 0;i < MAXPLATS;i++)
	activeplats[i] = NULL;
    
    for (i = 0;i < MAXBUTTONS;i++)
	FUNC9(&buttonlist[i],0,sizeof(button_t));

    // UNUSED: no horizonal sliders.
    //	P_InitSlidingDoorFrames();
}