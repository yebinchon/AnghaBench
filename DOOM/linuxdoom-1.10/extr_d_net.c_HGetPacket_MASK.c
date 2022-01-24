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
typedef  int boolean ;
struct TYPE_5__ {int remotenode; int datalength; int /*<<< orphan*/  command; } ;
struct TYPE_4__ {int checksum; int numtics; int /*<<< orphan*/  starttic; int /*<<< orphan*/  retransmitfrom; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_GET ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int NCMD_CHECKSUM ; 
 int NCMD_RETRANSMIT ; 
 int NCMD_SETUP ; 
 int FUNC2 () ; 
 int FUNC3 () ; 
 scalar_t__ debugfile ; 
 scalar_t__ demoplayback ; 
 TYPE_3__* doomcom ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,char*,...) ; 
 TYPE_1__* netbuffer ; 
 int /*<<< orphan*/  netgame ; 
 int reboundpacket ; 
 TYPE_1__ reboundstore ; 

boolean FUNC5 (void)
{	
    if (reboundpacket)
    {
	*netbuffer = reboundstore;
	doomcom->remotenode = 0;
	reboundpacket = false;
	return true;
    }

    if (!netgame)
	return false;

    if (demoplayback)
	return false;
		
    doomcom->command = CMD_GET;
    FUNC1 ();
    
    if (doomcom->remotenode == -1)
	return false;

    if (doomcom->datalength != FUNC3 ())
    {
	if (debugfile)
	    FUNC4 (debugfile,"bad packet length %i\n",doomcom->datalength);
	return false;
    }
	
    if (FUNC2 () != (netbuffer->checksum&NCMD_CHECKSUM) )
    {
	if (debugfile)
	    FUNC4 (debugfile,"bad packet checksum\n");
	return false;
    }

    if (debugfile)
    {
	int		realretrans;
	int	i;
			
	if (netbuffer->checksum & NCMD_SETUP)
	    FUNC4 (debugfile,"setup packet\n");
	else
	{
	    if (netbuffer->checksum & NCMD_RETRANSMIT)
		realretrans = FUNC0 (netbuffer->retransmitfrom);
	    else
		realretrans = -1;
	    
	    FUNC4 (debugfile,"get %i = (%i + %i, R %i)[%i] ",
		     doomcom->remotenode,
		     FUNC0(netbuffer->starttic),
		     netbuffer->numtics, realretrans, doomcom->datalength);

	    for (i=0 ; i<doomcom->datalength ; i++)
		FUNC4 (debugfile,"%i ",((byte *)netbuffer)[i]);
	    FUNC4 (debugfile,"\n");
	}
    }
    return true;	
}