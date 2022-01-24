#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_9__ ;
typedef  struct TYPE_19__   TYPE_8__ ;
typedef  struct TYPE_18__   TYPE_7__ ;
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;
typedef  struct TYPE_11__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  netadr_t ;
struct TYPE_20__ {char* string; } ;
struct TYPE_19__ {char* string; } ;
struct TYPE_18__ {int integer; } ;
struct TYPE_17__ {int integer; } ;
struct TYPE_16__ {int integer; } ;
struct TYPE_15__ {int integer; } ;
struct TYPE_14__ {int integer; } ;
struct TYPE_13__ {TYPE_1__* clients; } ;
struct TYPE_12__ {scalar_t__ state; } ;
struct TYPE_11__ {int integer; } ;

/* Variables and functions */
 scalar_t__ CS_CONNECTED ; 
 char* FUNC0 (int) ; 
 char* FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char*) ; 
 scalar_t__ GT_SINGLE_PLAYER ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char*) ; 
 int MAX_INFO_STRING ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  NS_SERVER ; 
 int PROTOCOL_VERSION ; 
 TYPE_10__* sv_gametype ; 
 TYPE_9__* sv_hostname ; 
 TYPE_8__* sv_mapname ; 
 TYPE_7__* sv_maxPing ; 
 TYPE_6__* sv_maxclients ; 
 TYPE_5__* sv_minPing ; 
 TYPE_4__* sv_privateClients ; 
 TYPE_3__* sv_pure ; 
 TYPE_2__ svs ; 
 char* FUNC5 (char*,int) ; 

void FUNC6( netadr_t from ) {
	int		i, count;
	char	*gamedir;
	char	infostring[MAX_INFO_STRING];

	// ignore if we are in single player
	if ( FUNC2( "g_gametype" ) == GT_SINGLE_PLAYER || FUNC2("ui_singlePlayerActive")) {
		return;
	}

	// don't count privateclients
	count = 0;
	for ( i = sv_privateClients->integer ; i < sv_maxclients->integer ; i++ ) {
		if ( svs.clients[i].state >= CS_CONNECTED ) {
			count++;
		}
	}

	infostring[0] = 0;

	// echo back the parameter to status. so servers can use it as a challenge
	// to prevent timed spoofed reply packets that add ghost servers
	FUNC3( infostring, "challenge", FUNC0(1) );

	FUNC3( infostring, "protocol", FUNC5("%i", PROTOCOL_VERSION) );
	FUNC3( infostring, "hostname", sv_hostname->string );
	FUNC3( infostring, "mapname", sv_mapname->string );
	FUNC3( infostring, "clients", FUNC5("%i", count) );
	FUNC3( infostring, "sv_maxclients", 
		FUNC5("%i", sv_maxclients->integer - sv_privateClients->integer ) );
	FUNC3( infostring, "gametype", FUNC5("%i", sv_gametype->integer ) );
	FUNC3( infostring, "pure", FUNC5("%i", sv_pure->integer ) );

	if( sv_minPing->integer ) {
		FUNC3( infostring, "minPing", FUNC5("%i", sv_minPing->integer) );
	}
	if( sv_maxPing->integer ) {
		FUNC3( infostring, "maxPing", FUNC5("%i", sv_maxPing->integer) );
	}
	gamedir = FUNC1( "fs_game" );
	if( *gamedir ) {
		FUNC3( infostring, "game", gamedir );
	}

	FUNC4( NS_SERVER, from, "infoResponse\n%s", infostring );
}