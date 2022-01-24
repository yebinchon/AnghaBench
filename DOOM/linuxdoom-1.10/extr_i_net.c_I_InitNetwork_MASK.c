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
struct hostent {scalar_t__* h_addr_list; } ;
typedef  int boolean ;
struct TYPE_8__ {char ticdup; int extratics; int numplayers; int numnodes; int deathmatch; char consoleplayer; void* id; } ;
struct TYPE_6__ {int s_addr; } ;
struct TYPE_7__ {TYPE_1__ sin_addr; int /*<<< orphan*/  sin_port; int /*<<< orphan*/  sin_family; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ ) ; 
 void* DOOMCOM_ID ; 
 int DOOMPORT ; 
 int /*<<< orphan*/  FIONBIO ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int FUNC2 (char*) ; 
 int /*<<< orphan*/  PacketGet ; 
 int /*<<< orphan*/  PacketSend ; 
 void* FUNC3 () ; 
 int FUNC4 (char*) ; 
 TYPE_3__* doomcom ; 
 struct hostent* FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int FUNC7 (char*) ; 
 void* insocket ; 
 int /*<<< orphan*/  FUNC8 (void*,int /*<<< orphan*/ ,int*) ; 
 TYPE_3__* FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int myargc ; 
 char** myargv ; 
 int netgame ; 
 int /*<<< orphan*/  netget ; 
 int /*<<< orphan*/  netsend ; 
 int /*<<< orphan*/  FUNC11 (char*,int) ; 
 TYPE_2__* sendaddress ; 
 void* sendsocket ; 

void FUNC12 (void)
{
    boolean		trueval = true;
    int			i;
    int			p;
    struct hostent*	hostentry;	// host information entry
	
    doomcom = FUNC9 (sizeof (*doomcom) );
    FUNC10 (doomcom, 0, sizeof(*doomcom) );
    
    // set up for network
    i = FUNC2 ("-dup");
    if (i && i< myargc-1)
    {
	doomcom->ticdup = myargv[i+1][0]-'0';
	if (doomcom->ticdup < 1)
	    doomcom->ticdup = 1;
	if (doomcom->ticdup > 9)
	    doomcom->ticdup = 9;
    }
    else
	doomcom-> ticdup = 1;
	
    if (FUNC2 ("-extratic"))
	doomcom-> extratics = 1;
    else
	doomcom-> extratics = 0;
		
    p = FUNC2 ("-port");
    if (p && p<myargc-1)
    {
	DOOMPORT = FUNC4 (myargv[p+1]);
	FUNC11 ("using alternate port %i\n",DOOMPORT);
    }
    
    // parse network game options,
    //  -net <consoleplayer> <host> <host> ...
    i = FUNC2 ("-net");
    if (!i)
    {
	// single player game
	netgame = false;
	doomcom->id = DOOMCOM_ID;
	doomcom->numplayers = doomcom->numnodes = 1;
	doomcom->deathmatch = false;
	doomcom->consoleplayer = 0;
	return;
    }

    netsend = PacketSend;
    netget = PacketGet;
    netgame = true;

    // parse player number and host list
    doomcom->consoleplayer = myargv[i+1][0]-'1';

    doomcom->numnodes = 1;	// this node for sure
	
    i++;
    while (++i < myargc && myargv[i][0] != '-')
    {
	sendaddress[doomcom->numnodes].sin_family = AF_INET;
	sendaddress[doomcom->numnodes].sin_port = FUNC6(DOOMPORT);
	if (myargv[i][0] == '.')
	{
	    sendaddress[doomcom->numnodes].sin_addr.s_addr 
		= FUNC7 (myargv[i]+1);
	}
	else
	{
	    hostentry = FUNC5 (myargv[i]);
	    if (!hostentry)
		FUNC1 ("gethostbyname: couldn't find %s", myargv[i]);
	    sendaddress[doomcom->numnodes].sin_addr.s_addr 
		= *(int *)hostentry->h_addr_list[0];
	}
	doomcom->numnodes++;
    }
	
    doomcom->id = DOOMCOM_ID;
    doomcom->numplayers = doomcom->numnodes;
    
    // build message to receive
    insocket = FUNC3 ();
    FUNC0 (insocket,FUNC6(DOOMPORT));
    FUNC8 (insocket, FIONBIO, &trueval);

    sendsocket = FUNC3 ();
}