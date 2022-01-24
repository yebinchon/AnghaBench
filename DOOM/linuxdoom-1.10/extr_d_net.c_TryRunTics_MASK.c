#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int buttons; scalar_t__ chatchar; } ;
typedef  TYPE_1__ ticcmd_t ;
struct TYPE_5__ {int numnodes; } ;

/* Variables and functions */
 int BACKUPTICS ; 
 int BT_SPECIAL ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 () ; 
 int MAXINT ; 
 int MAXPLAYERS ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ advancedemo ; 
 int consoleplayer ; 
 scalar_t__ debugfile ; 
 int /*<<< orphan*/  demoplayback ; 
 TYPE_3__* doomcom ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,char*,int,int,int) ; 
 int frameon ; 
 int* frameskip ; 
 int gametic ; 
 int /*<<< orphan*/  gametime ; 
 TYPE_1__** netcmds ; 
 int* nettics ; 
 size_t* nodeforplayer ; 
 scalar_t__* nodeingame ; 
 int oldnettics ; 
 scalar_t__* playeringame ; 
 int skiptics ; 
 int ticdup ; 

void FUNC7 (void)
{
    int		i;
    int		lowtic;
    int		entertic;
    static int	oldentertics;
    int		realtics;
    int		availabletics;
    int		counts;
    int		numplaying;
    
    // get real tics		
    entertic = FUNC3 ()/ticdup;
    realtics = entertic - oldentertics;
    oldentertics = entertic;
    
    // get available tics
    FUNC5 ();
	
    lowtic = MAXINT;
    numplaying = 0;
    for (i=0 ; i<doomcom->numnodes ; i++)
    {
	if (nodeingame[i])
	{
	    numplaying++;
	    if (nettics[i] < lowtic)
		lowtic = nettics[i];
	}
    }
    availabletics = lowtic - gametic/ticdup;
    
    // decide how many tics to run
    if (realtics < availabletics-1)
	counts = realtics+1;
    else if (realtics < availabletics)
	counts = realtics;
    else
	counts = availabletics;
    
    if (counts < 1)
	counts = 1;
		
    frameon++;

    if (debugfile)
	FUNC6 (debugfile,
		 "=======real: %i  avail: %i  game: %i\n",
		 realtics, availabletics,counts);

    if (!demoplayback)
    {	
	// ideally nettics[0] should be 1 - 3 tics above lowtic
	// if we are consistantly slower, speed up time
	for (i=0 ; i<MAXPLAYERS ; i++)
	    if (playeringame[i])
		break;
	if (consoleplayer == i)
	{
	    // the key player does not adapt
	}
	else
	{
	    if (nettics[0] <= nettics[nodeforplayer[i]])
	    {
		gametime--;
		// printf ("-");
	    }
	    frameskip[frameon&3] = (oldnettics > nettics[nodeforplayer[i]]);
	    oldnettics = nettics[0];
	    if (frameskip[0] && frameskip[1] && frameskip[2] && frameskip[3])
	    {
		skiptics = 1;
		// printf ("+");
	    }
	}
    }// demoplayback
	
    // wait for new tics if needed
    while (lowtic < gametic/ticdup + counts)	
    {
	FUNC5 ();   
	lowtic = MAXINT;
	
	for (i=0 ; i<doomcom->numnodes ; i++)
	    if (nodeingame[i] && nettics[i] < lowtic)
		lowtic = nettics[i];
	
	if (lowtic < gametic/ticdup)
	    FUNC2 ("TryRunTics: lowtic < gametic");
				
	// don't stay in here forever -- give the menu a chance to work
	if (FUNC3 ()/ticdup - entertic >= 20)
	{
	    FUNC4 ();
	    return;
	} 
    }
    
    // run the count * ticdup dics
    while (counts--)
    {
	for (i=0 ; i<ticdup ; i++)
	{
	    if (gametic/ticdup > lowtic)
		FUNC2 ("gametic>lowtic");
	    if (advancedemo)
		FUNC0 ();
	    FUNC4 ();
	    FUNC1 ();
	    gametic++;
	    
	    // modify command for duplicated tics
	    if (i != ticdup-1)
	    {
		ticcmd_t	*cmd;
		int			buf;
		int			j;
				
		buf = (gametic/ticdup)%BACKUPTICS; 
		for (j=0 ; j<MAXPLAYERS ; j++)
		{
		    cmd = &netcmds[j][buf];
		    cmd->chatchar = 0;
		    if (cmd->buttons & BT_SPECIAL)
			cmd->buttons = 0;
		}
	    }
	}
	FUNC5 ();	// check for new console commands
    }
}