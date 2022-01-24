#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {scalar_t__ port; int type; } ;
typedef  TYPE_2__ netadr_t ;
typedef  int /*<<< orphan*/  msg_t ;
typedef  int /*<<< orphan*/  info ;
struct TYPE_13__ {char* info; scalar_t__ time; scalar_t__ start; TYPE_2__ adr; } ;
struct TYPE_12__ {scalar_t__ pingUpdateSource; int numlocalservers; TYPE_1__* localServers; scalar_t__ realtime; } ;
struct TYPE_10__ {char* hostName; char* mapName; int ping; char* game; int netType; scalar_t__ punkbuster; scalar_t__ gameType; scalar_t__ minPing; scalar_t__ maxPing; scalar_t__ maxClients; scalar_t__ clients; TYPE_2__ adr; } ;

/* Variables and functions */
 scalar_t__ AS_LOCAL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int MAX_INFO_STRING ; 
 int MAX_OTHER_SERVERS ; 
 int MAX_PINGREQUESTS ; 
 char* FUNC5 (int /*<<< orphan*/ *) ; 
#define  NA_BROADCAST 131 
#define  NA_BROADCAST_IPX 130 
#define  NA_IP 129 
#define  NA_IPX 128 
 int /*<<< orphan*/  FUNC6 (TYPE_2__) ; 
 scalar_t__ FUNC7 (TYPE_2__,TYPE_2__) ; 
 int PROTOCOL_VERSION ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,int) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 TYPE_4__* cl_pinglist ; 
 TYPE_3__ cls ; 
 int FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC12 (char*,int) ; 

void FUNC13( netadr_t from, msg_t *msg ) {
	int		i, type;
	char	info[MAX_INFO_STRING];
	char*	str;
	char	*infoString;
	int		prot;

	infoString = FUNC5( msg );

	// if this isn't the correct protocol version, ignore it
	prot = FUNC9( FUNC4( infoString, "protocol" ) );
	if ( prot != PROTOCOL_VERSION ) {
		FUNC1( "Different protocol info packet: %s\n", infoString );
		return;
	}

	// iterate servers waiting for ping response
	for (i=0; i<MAX_PINGREQUESTS; i++)
	{
		if ( cl_pinglist[i].adr.port && !cl_pinglist[i].time && FUNC7( from, cl_pinglist[i].adr ) )
		{
			// calc ping time
			cl_pinglist[i].time = cls.realtime - cl_pinglist[i].start + 1;
			FUNC1( "ping time %dms from %s\n", cl_pinglist[i].time, FUNC6( from ) );

			// save of info
			FUNC8( cl_pinglist[i].info, infoString, sizeof( cl_pinglist[i].info ) );

			// tack on the net type
			// NOTE: make sure these types are in sync with the netnames strings in the UI
			switch (from.type)
			{
				case NA_BROADCAST:
				case NA_IP:
					str = "udp";
					type = 1;
					break;

				case NA_IPX:
				case NA_BROADCAST_IPX:
					str = "ipx";
					type = 2;
					break;

				default:
					str = "???";
					type = 0;
					break;
			}
			FUNC3( cl_pinglist[i].info, "nettype", FUNC12("%d", type) );
			FUNC0(from, infoString, cl_pinglist[i].time);

			return;
		}
	}

	// if not just sent a local broadcast or pinging local servers
	if (cls.pingUpdateSource != AS_LOCAL) {
		return;
	}

	for ( i = 0 ; i < MAX_OTHER_SERVERS ; i++ ) {
		// empty slot
		if ( cls.localServers[i].adr.port == 0 ) {
			break;
		}

		// avoid duplicate
		if ( FUNC7( from, cls.localServers[i].adr ) ) {
			return;
		}
	}

	if ( i == MAX_OTHER_SERVERS ) {
		FUNC1( "MAX_OTHER_SERVERS hit, dropping infoResponse\n" );
		return;
	}

	// add this to the list
	cls.numlocalservers = i+1;
	cls.localServers[i].adr = from;
	cls.localServers[i].clients = 0;
	cls.localServers[i].hostName[0] = '\0';
	cls.localServers[i].mapName[0] = '\0';
	cls.localServers[i].maxClients = 0;
	cls.localServers[i].maxPing = 0;
	cls.localServers[i].minPing = 0;
	cls.localServers[i].ping = -1;
	cls.localServers[i].game[0] = '\0';
	cls.localServers[i].gameType = 0;
	cls.localServers[i].netType = from.type;
	cls.localServers[i].punkbuster = 0;
									 
	FUNC8( info, FUNC5( msg ), MAX_INFO_STRING );
	if (FUNC10(info)) {
		if (info[FUNC10(info)-1] != '\n') {
			FUNC11(info, "\n", sizeof(info) - strlen(info) - 1);
		}
		FUNC2( "%s: %s", FUNC6( from ), info );
	}
}