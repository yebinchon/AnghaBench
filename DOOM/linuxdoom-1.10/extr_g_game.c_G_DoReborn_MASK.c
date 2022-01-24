#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_1__* mo; } ;
struct TYPE_7__ {int type; } ;
struct TYPE_6__ {int /*<<< orphan*/ * player; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int MAXPLAYERS ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 scalar_t__ deathmatch ; 
 int /*<<< orphan*/  ga_loadlevel ; 
 int /*<<< orphan*/  gameaction ; 
 int /*<<< orphan*/  netgame ; 
 TYPE_3__* players ; 
 TYPE_2__* playerstarts ; 

void FUNC3 (int playernum) 
{ 
    int                             i; 
	 
    if (!netgame)
    {
	// reload the level from scratch
	gameaction = ga_loadlevel;  
    }
    else 
    {
	// respawn at the start

	// first dissasociate the corpse 
	players[playernum].mo->player = NULL;   
		 
	// spawn at random spot if in death match 
	if (deathmatch) 
	{ 
	    FUNC1 (playernum); 
	    return; 
	} 
		 
	if (FUNC0 (playernum, &playerstarts[playernum]) ) 
	{ 
	    FUNC2 (&playerstarts[playernum]); 
	    return; 
	}
	
	// try to spawn at one of the other players spots 
	for (i=0 ; i<MAXPLAYERS ; i++)
	{
	    if (FUNC0 (playernum, &playerstarts[i]) ) 
	    { 
		playerstarts[i].type = playernum+1;	// fake as other player 
		FUNC2 (&playerstarts[i]); 
		playerstarts[i].type = i+1;		// restore 
		return; 
	    }	    
	    // he's going to be inside something.  Too bad.
	}
	FUNC2 (&playerstarts[playernum]); 
    } 
}