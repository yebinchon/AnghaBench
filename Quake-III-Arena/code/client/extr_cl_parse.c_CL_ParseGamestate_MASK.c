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
typedef  int /*<<< orphan*/  nullstate ;
typedef  int /*<<< orphan*/  msg_t ;
typedef  int /*<<< orphan*/  entityState_t ;
struct TYPE_4__ {int dataCount; int* stringOffsets; scalar_t__ stringData; } ;
struct TYPE_6__ {int /*<<< orphan*/ * entityBaselines; TYPE_1__ gameState; } ;
struct TYPE_5__ {void* checksumFeed; void* clientNum; void* serverCommandSequence; scalar_t__ connectPacketCount; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  ERR_DROP ; 
 int /*<<< orphan*/  FUNC8 (void*) ; 
 int /*<<< orphan*/  GENTITYNUM_BITS ; 
 int MAX_CONFIGSTRINGS ; 
 int MAX_GAMESTATE_CHARS ; 
 int MAX_GENTITIES ; 
 char* FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 void* FUNC13 (int /*<<< orphan*/ *) ; 
 int FUNC14 (int /*<<< orphan*/ *) ; 
 TYPE_3__ cl ; 
 TYPE_2__ clc ; 
 int FUNC15 (char*) ; 
 int svc_EOF ; 
 int svc_baseline ; 
 int svc_configstring ; 

void FUNC16( msg_t *msg ) {
	int				i;
	entityState_t	*es;
	int				newnum;
	entityState_t	nullstate;
	int				cmd;
	char			*s;

	FUNC6();

	clc.connectPacketCount = 0;

	// wipe local client state
	FUNC0();

	// a gamestate always marks a server command sequence
	clc.serverCommandSequence = FUNC13( msg );

	// parse all the configstrings and baselines
	cl.gameState.dataCount = 1;	// leave a 0 at the beginning for uninitialized configstrings
	while ( 1 ) {
		cmd = FUNC11( msg );

		if ( cmd == svc_EOF ) {
			break;
		}
		
		if ( cmd == svc_configstring ) {
			int		len;

			i = FUNC14( msg );
			if ( i < 0 || i >= MAX_CONFIGSTRINGS ) {
				FUNC3( ERR_DROP, "configstring > MAX_CONFIGSTRINGS" );
			}
			s = FUNC9( msg );
			len = FUNC15( s );

			if ( len + 1 + cl.gameState.dataCount > MAX_GAMESTATE_CHARS ) {
				FUNC3( ERR_DROP, "MAX_GAMESTATE_CHARS exceeded" );
			}

			// append it to the gameState string buffer
			cl.gameState.stringOffsets[ i ] = cl.gameState.dataCount;
			FUNC4( cl.gameState.stringData + cl.gameState.dataCount, s, len + 1 );
			cl.gameState.dataCount += len + 1;
		} else if ( cmd == svc_baseline ) {
			newnum = FUNC10( msg, GENTITYNUM_BITS );
			if ( newnum < 0 || newnum >= MAX_GENTITIES ) {
				FUNC3( ERR_DROP, "Baseline number out of range: %i", newnum );
			}
			FUNC5 (&nullstate, 0, sizeof(nullstate));
			es = &cl.entityBaselines[ newnum ];
			FUNC12( msg, &nullstate, es, newnum );
		} else {
			FUNC3( ERR_DROP, "CL_ParseGamestate: bad command byte" );
		}
	}

	clc.clientNum = FUNC13(msg);
	// read the checksum feed
	clc.checksumFeed = FUNC13( msg );

	// parse serverId and other cvars
	FUNC2();

	// reinitialize the filesystem if the game directory has changed
  FUNC8( clc.checksumFeed );

	// This used to call CL_StartHunkUsers, but now we enter the download state before loading the
	// cgame
	FUNC1();

	// make sure the game starts
	FUNC7( "cl_paused", "0" );
}