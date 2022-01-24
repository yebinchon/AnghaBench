#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  port; int /*<<< orphan*/  type; } ;
typedef  TYPE_1__ netadr_t ;
struct TYPE_6__ {int masterNum; int nummplayerservers; int numglobalservers; int /*<<< orphan*/  pingUpdateSource; } ;

/* Variables and functions */
 int /*<<< orphan*/  AS_GLOBAL ; 
 int /*<<< orphan*/  AS_MPLAYER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 () ; 
 char* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (char*) ; 
 int /*<<< orphan*/  MASTER_SERVER_NAME ; 
 int /*<<< orphan*/  NA_IP ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_1__,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  NS_SERVER ; 
 int /*<<< orphan*/  PORT_MASTER ; 
 int FUNC7 (char*) ; 
 TYPE_2__ cls ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,...) ; 
 int FUNC9 (char*) ; 

void FUNC10( void ) {
	netadr_t	to;
	int			i;
	int			count;
	char		*buffptr;
	char		command[1024];
	
	if ( FUNC1() < 3) {
		FUNC3( "usage: globalservers <master# 0-1> <protocol> [keywords]\n");
		return;	
	}

	cls.masterNum = FUNC7( FUNC2(1) );

	FUNC3( "Requesting servers from the master...\n");

	// reset the list, waiting for response
	// -1 is used to distinguish a "no response"

	if( cls.masterNum == 1 ) {
		FUNC6( MASTER_SERVER_NAME, &to );
		cls.nummplayerservers = -1;
		cls.pingUpdateSource = AS_MPLAYER;
	}
	else {
		FUNC6( MASTER_SERVER_NAME, &to );
		cls.numglobalservers = -1;
		cls.pingUpdateSource = AS_GLOBAL;
	}
	to.type = NA_IP;
	to.port = FUNC0(PORT_MASTER);

	FUNC8( command, "getservers %s", FUNC2(2) );

	// tack on keywords
	buffptr = command + FUNC9( command );
	count   = FUNC1();
	for (i=3; i<count; i++)
		buffptr += FUNC8( buffptr, " %s", FUNC2(i) );

	// if we are a demo, automatically add a "demo" keyword
	if ( FUNC4( "fs_restrict" ) ) {
		buffptr += FUNC8( buffptr, " demo" );
	}

	FUNC5( NS_SERVER, to, command );
}