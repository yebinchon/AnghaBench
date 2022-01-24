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
typedef  int byte ;
struct TYPE_5__ {int remotenode; int datalength; int /*<<< orphan*/  command; } ;
struct TYPE_4__ {int checksum; int numtics; int /*<<< orphan*/  starttic; int /*<<< orphan*/  retransmitfrom; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_SEND ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int NCMD_RETRANSMIT ; 
 int FUNC3 () ; 
 int FUNC4 () ; 
 scalar_t__ debugfile ; 
 scalar_t__ demoplayback ; 
 TYPE_3__* doomcom ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,char*,...) ; 
 TYPE_1__* netbuffer ; 
 int /*<<< orphan*/  netgame ; 
 int reboundpacket ; 
 TYPE_1__ reboundstore ; 

void
FUNC6
 (int	node,
  int	flags )
{
    netbuffer->checksum = FUNC3 () | flags;

    if (!node)
    {
	reboundstore = *netbuffer;
	reboundpacket = true;
	return;
    }

    if (demoplayback)
	return;

    if (!netgame)
	FUNC1 ("Tried to transmit to another node");
		
    doomcom->command = CMD_SEND;
    doomcom->remotenode = node;
    doomcom->datalength = FUNC4 ();
	
    if (debugfile)
    {
	int		i;
	int		realretrans;
	if (netbuffer->checksum & NCMD_RETRANSMIT)
	    realretrans = FUNC0 (netbuffer->retransmitfrom);
	else
	    realretrans = -1;

	FUNC5 (debugfile,"send (%i + %i, R %i) [%i] ",
		 FUNC0(netbuffer->starttic),
		 netbuffer->numtics, realretrans, doomcom->datalength);
	
	for (i=0 ; i<doomcom->datalength ; i++)
	    FUNC5 (debugfile,"%i ",((byte *)netbuffer)[i]);

	FUNC5 (debugfile,"\n");
    }

    FUNC2 ();
}