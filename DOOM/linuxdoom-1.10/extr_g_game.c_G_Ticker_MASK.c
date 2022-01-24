#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ forwardmove; scalar_t__ consistancy; int buttons; } ;
typedef  TYPE_2__ ticcmd_t ;
struct TYPE_9__ {scalar_t__ playerstate; char* message; TYPE_2__ cmd; TYPE_1__* mo; } ;
struct TYPE_7__ {scalar_t__ x; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int BACKUPTICS ; 
#define  BTS_PAUSE 143 
#define  BTS_SAVEGAME 142 
 int BTS_SAVEMASK ; 
 int BTS_SAVESHIFT ; 
 int BT_SPECIAL ; 
 int BT_SPECIALMASK ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
#define  GS_DEMOSCREEN 141 
#define  GS_FINALE 140 
#define  GS_INTERMISSION 139 
#define  GS_LEVEL 138 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (char*,scalar_t__,scalar_t__) ; 
 int MAXPLAYERS ; 
 int /*<<< orphan*/  FUNC16 () ; 
 scalar_t__ PST_REBORN ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 () ; 
 scalar_t__ TURBOTHRESHOLD ; 
 int /*<<< orphan*/  FUNC21 () ; 
 scalar_t__** consistancy ; 
 size_t consoleplayer ; 
 scalar_t__ demoplayback ; 
 scalar_t__ demorecording ; 
#define  ga_completed 137 
#define  ga_loadgame 136 
#define  ga_loadlevel 135 
#define  ga_newgame 134 
#define  ga_nothing 133 
#define  ga_playdemo 132 
#define  ga_savegame 131 
#define  ga_screenshot 130 
#define  ga_victory 129 
#define  ga_worlddone 128 
 int gameaction ; 
 int gamestate ; 
 int gametic ; 
 int /*<<< orphan*/  FUNC22 (TYPE_2__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ ** netcmds ; 
 int /*<<< orphan*/  netdemo ; 
 scalar_t__ netgame ; 
 int paused ; 
 scalar_t__* playeringame ; 
 TYPE_3__* players ; 
 scalar_t__ rndindex ; 
 int /*<<< orphan*/ * savedescription ; 
 int savegameslot ; 
 int /*<<< orphan*/  FUNC23 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,char*) ; 
 int ticdup ; 

void FUNC25 (void) 
{ 
    int		i;
    int		buf; 
    ticcmd_t*	cmd;
    
    // do player reborns if needed
    for (i=0 ; i<MAXPLAYERS ; i++) 
	if (playeringame[i] && players[i].playerstate == PST_REBORN) 
	    FUNC9 (i);
    
    // do things to change the game state
    while (gameaction != ga_nothing) 
    { 
	switch (gameaction) 
	{ 
	  case ga_loadlevel: 
	    FUNC6 (); 
	    break; 
	  case ga_newgame: 
	    FUNC7 (); 
	    break; 
	  case ga_loadgame: 
	    FUNC5 (); 
	    break; 
	  case ga_savegame: 
	    FUNC10 (); 
	    break; 
	  case ga_playdemo: 
	    FUNC8 (); 
	    break; 
	  case ga_completed: 
	    FUNC4 (); 
	    break; 
	  case ga_victory: 
	    FUNC2 (); 
	    break; 
	  case ga_worlddone: 
	    FUNC11 (); 
	    break; 
	  case ga_screenshot: 
	    FUNC16 (); 
	    gameaction = ga_nothing; 
	    break; 
	  case ga_nothing: 
	    break; 
	} 
    }
    
    // get commands, check consistancy,
    // and build new consistancy check
    buf = (gametic/ticdup)%BACKUPTICS; 
 
    for (i=0 ; i<MAXPLAYERS ; i++)
    {
	if (playeringame[i]) 
	{ 
	    cmd = &players[i].cmd; 
 
	    FUNC22 (cmd, &netcmds[i][buf], sizeof(ticcmd_t)); 
 
	    if (demoplayback) 
		FUNC12 (cmd); 
	    if (demorecording) 
		FUNC13 (cmd);
	    
	    // check for turbo cheats
	    if (cmd->forwardmove > TURBOTHRESHOLD 
		&& !(gametic&31) && ((gametic>>5)&3) == i )
	    {
		static char turbomessage[80];
		extern char *player_names[4];
		FUNC23 (turbomessage, "%s is turbo!",player_names[i]);
		players[consoleplayer].message = turbomessage;
	    }
			
	    if (netgame && !netdemo && !(gametic%ticdup) ) 
	    { 
		if (gametic > BACKUPTICS 
		    && consistancy[i][buf] != cmd->consistancy) 
		{ 
		    FUNC15 ("consistency failure (%i should be %i)",
			     cmd->consistancy, consistancy[i][buf]); 
		} 
		if (players[i].mo) 
		    consistancy[i][buf] = players[i].mo->x; 
		else 
		    consistancy[i][buf] = rndindex; 
	    } 
	}
    }
    
    // check for special buttons
    for (i=0 ; i<MAXPLAYERS ; i++)
    {
	if (playeringame[i]) 
	{ 
	    if (players[i].cmd.buttons & BT_SPECIAL) 
	    { 
		switch (players[i].cmd.buttons & BT_SPECIALMASK) 
		{ 
		  case BTS_PAUSE: 
		    paused ^= 1; 
		    if (paused) 
			FUNC19 (); 
		    else 
			FUNC20 (); 
		    break; 
					 
		  case BTS_SAVEGAME: 
		    if (!savedescription[0]) 
			FUNC24 (savedescription, "NET GAME"); 
		    savegameslot =  
			(players[i].cmd.buttons & BTS_SAVEMASK)>>BTS_SAVESHIFT; 
		    gameaction = ga_savegame; 
		    break; 
		} 
	    } 
	}
    }
    
    // do main actions
    switch (gamestate) 
    { 
      case GS_LEVEL: 
	FUNC17 (); 
	FUNC18 (); 
	FUNC0 (); 
	FUNC14 ();            
	break; 
	 
      case GS_INTERMISSION: 
	FUNC21 (); 
	break; 
			 
      case GS_FINALE: 
	FUNC3 (); 
	break; 
 
      case GS_DEMOSCREEN: 
	FUNC1 (); 
	break; 
    }        
}