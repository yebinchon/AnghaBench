#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  qboolean ;
struct TYPE_4__ {char* stringData; int* stringOffsets; } ;
struct TYPE_6__ {scalar_t__ serverId; TYPE_1__ gameState; } ;
struct TYPE_5__ {scalar_t__ demoplaying; } ;

/* Variables and functions */
 int BIG_INFO_KEY ; 
 int BIG_INFO_VALUE ; 
 size_t CS_SYSTEMINFO ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (char const**,char*,char*) ; 
 char const* FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 scalar_t__ FUNC9 (char const*) ; 
 TYPE_3__ cl ; 
 int /*<<< orphan*/  cl_connectedToPureServer ; 
 TYPE_2__ clc ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  qtrue ; 

void FUNC10( void ) {
	char			*systemInfo;
	const char		*s, *t;
	char			key[BIG_INFO_KEY];
	char			value[BIG_INFO_VALUE];
	qboolean		gameSet;

	systemInfo = cl.gameState.stringData + cl.gameState.stringOffsets[ CS_SYSTEMINFO ];
	// NOTE TTimo:
	// when the serverId changes, any further messages we send to the server will use this new serverId
	// https://zerowing.idsoftware.com/bugzilla/show_bug.cgi?id=475
	// in some cases, outdated cp commands might get sent with this news serverId
	cl.serverId = FUNC9( FUNC7( systemInfo, "sv_serverid" ) );

	// don't set any vars when playing a demo
	if ( clc.demoplaying ) {
		return;
	}

	s = FUNC7( systemInfo, "sv_cheats" );
	if ( FUNC9(s) == 0 ) {
		FUNC1();
	}

	// check pure server string
	s = FUNC7( systemInfo, "sv_paks" );
	t = FUNC7( systemInfo, "sv_pakNames" );
	FUNC4( s, t );

	s = FUNC7( systemInfo, "sv_referencedPaks" );
	t = FUNC7( systemInfo, "sv_referencedPakNames" );
	FUNC5( s, t );

	gameSet = qfalse;
	// scan through all the variables in the systeminfo and locally set cvars to match
	s = systemInfo;
	while ( s ) {
		FUNC6( &s, key, value );
		if ( !key[0] ) {
			break;
		}
		// ehw!
		if ( !FUNC8( key, "fs_game" ) ) {
			gameSet = qtrue;
		}

		FUNC0( key, value );
	}
	// if game folder should not be set and it is set at the client side
	if ( !gameSet && *FUNC2("fs_game") ) {
		FUNC0( "fs_game", "" );
	}
	cl_connectedToPureServer = FUNC3( "sv_pure" );
}