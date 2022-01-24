#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int numnodes; } ;
struct TYPE_3__ {int player; scalar_t__ numtics; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  NCMD_EXIT ; 
 int consoleplayer ; 
 scalar_t__ debugfile ; 
 scalar_t__ demoplayback ; 
 TYPE_2__* doomcom ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 TYPE_1__* netbuffer ; 
 int /*<<< orphan*/  netgame ; 
 scalar_t__* nodeingame ; 
 int /*<<< orphan*/  usergame ; 

void FUNC3 (void)
{
    int             i, j;
	
    if (debugfile)
	FUNC2 (debugfile);
		
    if (!netgame || !usergame || consoleplayer == -1 || demoplayback)
	return;
	
    // send a bunch of packets for security
    netbuffer->player = consoleplayer;
    netbuffer->numtics = 0;
    for (i=0 ; i<4 ; i++)
    {
	for (j=1 ; j<doomcom->numnodes ; j++)
	    if (nodeingame[j])
		FUNC0 (j, NCMD_EXIT);
	FUNC1 (1);
    }
}