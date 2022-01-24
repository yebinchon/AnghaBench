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
typedef  int /*<<< orphan*/  netadr_t ;
typedef  int /*<<< orphan*/  msg_t ;
struct TYPE_4__ {int connectTime; int lastPacketSentTime; int /*<<< orphan*/  serverMessage; int /*<<< orphan*/  netchan; int /*<<< orphan*/  serverAddress; int /*<<< orphan*/  challenge; scalar_t__ connectPacketCount; } ;
struct TYPE_3__ {scalar_t__ state; } ;

/* Variables and functions */
 scalar_t__ CA_CHALLENGING ; 
 scalar_t__ CA_CONNECTED ; 
 scalar_t__ CA_CONNECTING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 char* FUNC12 (int /*<<< orphan*/ *) ; 
 char* FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  NS_CLIENT ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (char*,char*) ; 
 int /*<<< orphan*/  FUNC19 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC21 (char*) ; 
 TYPE_2__ clc ; 
 TYPE_1__ cls ; 

void FUNC22( netadr_t from, msg_t *msg ) {
	char	*s;
	char	*c;

	FUNC10( msg );
	FUNC11( msg );	// skip the -1

	s = FUNC13( msg );

	FUNC6( s );

	c = FUNC5(0);

	FUNC7 ("CL packet %s: %s\n", FUNC14(from), c);

	// challenge from the server we are connecting to
	if ( !FUNC18(c, "challengeResponse") ) {
		if ( cls.state != CA_CONNECTING ) {
			FUNC8( "Unwanted challenge response received.  Ignored.\n" );
		} else {
			// start sending challenge repsonse instead of challenge request packets
			clc.challenge = FUNC21(FUNC5(1));
			cls.state = CA_CHALLENGING;
			clc.connectPacketCount = 0;
			clc.connectTime = -99999;

			// take this address as the new server address.  This allows
			// a server proxy to hand off connections to multiple servers
			clc.serverAddress = from;
			FUNC7 ("challengeResponse: %d\n", clc.challenge);
		}
		return;
	}

	// server connection
	if ( !FUNC18(c, "connectResponse") ) {
		if ( cls.state >= CA_CONNECTED ) {
			FUNC8 ("Dup connect received.  Ignored.\n");
			return;
		}
		if ( cls.state != CA_CHALLENGING ) {
			FUNC8 ("connectResponse packet while not connecting.  Ignored.\n");
			return;
		}
		if ( !FUNC15( from, clc.serverAddress ) ) {
			FUNC8( "connectResponse from a different address.  Ignored.\n" );
			FUNC8( "%s should have been %s\n", FUNC14( from ), 
				FUNC14( clc.serverAddress ) );
			return;
		}
		FUNC17 (NS_CLIENT, &clc.netchan, from, FUNC9( "net_qport" ) );
		cls.state = CA_CONNECTED;
		clc.lastPacketSentTime = -9999;		// send first packet immediately
		return;
	}

	// server responding to an info broadcast
	if ( !FUNC18(c, "infoResponse") ) {
		FUNC2( from, msg );
		return;
	}

	// server responding to a get playerlist
	if ( !FUNC18(c, "statusResponse") ) {
		FUNC3( from, msg );
		return;
	}

	// a disconnect message from the server, which will happen if the server
	// dropped the connection but it is still getting packets from us
	if (!FUNC18(c, "disconnect")) {
		FUNC0( from );
		return;
	}

	// echo request from server
	if ( !FUNC18(c, "echo") ) {
		FUNC16( NS_CLIENT, from, "%s", FUNC5(1) );
		return;
	}

	// cd check
	if ( !FUNC18(c, "keyAuthorize") ) {
		// we don't use these now, so dump them on the floor
		return;
	}

	// global MOTD from id
	if ( !FUNC18(c, "motd") ) {
		FUNC1( from );
		return;
	}

	// echo request from server
	if ( !FUNC18(c, "print") ) {
		s = FUNC12( msg );
		FUNC20( clc.serverMessage, s, sizeof( clc.serverMessage ) );
		FUNC8( "%s", s );
		return;
	}

	// echo request from server
	if ( !FUNC19(c, "getserversResponse", 18) ) {
		FUNC4( from, msg );
		return;
	}

	FUNC7 ("Unknown connectionless packet command.\n");
}