#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ id; int consoleplayer; int ticdup; int numplayers; int numnodes; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int BACKUPTICS ; 
 scalar_t__ DOOMCOM_ID ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int MAXNETNODES ; 
 int consoleplayer ; 
 int deathmatch ; 
 int displayplayer ; 
 TYPE_1__* doomcom ; 
 int maxsend ; 
 int /*<<< orphan*/ * netbuffer ; 
 scalar_t__ netgame ; 
 scalar_t__* nettics ; 
 int* nodeingame ; 
 int* playeringame ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int,int,...) ; 
 int* remoteresend ; 
 scalar_t__* resendto ; 
 int startepisode ; 
 int startmap ; 
 int startskill ; 
 int ticdup ; 

void FUNC4 (void)
{
    int             i;
	
    for (i=0 ; i<MAXNETNODES ; i++)
    {
	nodeingame[i] = false;
       	nettics[i] = 0;
	remoteresend[i] = false;	// set when local needs tics
	resendto[i] = 0;		// which tic to start sending
    }
	
    // I_InitNetwork sets doomcom and netgame
    FUNC2 ();
    if (doomcom->id != DOOMCOM_ID)
	FUNC1 ("Doomcom buffer invalid!");
    
    netbuffer = &doomcom->data;
    consoleplayer = displayplayer = doomcom->consoleplayer;
    if (netgame)
	FUNC0 ();

    FUNC3 ("startskill %i  deathmatch: %i  startmap: %i  startepisode: %i\n",
	    startskill, deathmatch, startmap, startepisode);
	
    // read values out of doomcom
    ticdup = doomcom->ticdup;
    maxsend = BACKUPTICS/(2*ticdup)-1;
    if (maxsend<1)
	maxsend = 1;
			
    for (i=0 ; i<doomcom->numplayers ; i++)
	playeringame[i] = true;
    for (i=0 ; i<doomcom->numnodes ; i++)
	nodeingame[i] = true;
	
    FUNC3 ("player %i of %i (%i nodes)\n",
	    consoleplayer+1, doomcom->numplayers, doomcom->numnodes);

}