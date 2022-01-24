#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int CVAR_ARCHIVE ; 
 int CVAR_INIT ; 
 int CVAR_LATCH ; 
 int CVAR_ROM ; 
 int CVAR_SERVERINFO ; 
 int CVAR_SYSTEMINFO ; 
 int CVAR_TEMP ; 
 void* FUNC0 (char*,char*,int) ; 
 char* MASTER_SERVER_NAME ; 
 int /*<<< orphan*/  PROTOCOL_VERSION ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 void* sv_allowDownload ; 
 void* sv_floodProtect ; 
 void* sv_fps ; 
 void* sv_gametype ; 
 void* sv_hostname ; 
 void* sv_killserver ; 
 void* sv_lanForceRate ; 
 void* sv_mapChecksum ; 
 void* sv_mapname ; 
 void** sv_master ; 
 void* sv_maxPing ; 
 void* sv_maxRate ; 
 void* sv_maxclients ; 
 void* sv_minPing ; 
 void* sv_padPackets ; 
 void* sv_privateClients ; 
 void* sv_privatePassword ; 
 void* sv_pure ; 
 void* sv_rconPassword ; 
 void* sv_reconnectlimit ; 
 void* sv_serverid ; 
 void* sv_showloss ; 
 void* sv_strictAuth ; 
 void* sv_timeout ; 
 void* sv_zombietime ; 
 char* FUNC4 (char*,int /*<<< orphan*/ ) ; 

void FUNC5 (void) {
	FUNC1 ();

	// serverinfo vars
	FUNC0 ("dmflags", "0", CVAR_SERVERINFO);
	FUNC0 ("fraglimit", "20", CVAR_SERVERINFO);
	FUNC0 ("timelimit", "0", CVAR_SERVERINFO);
	sv_gametype = FUNC0 ("g_gametype", "0", CVAR_SERVERINFO | CVAR_LATCH );
	FUNC0 ("sv_keywords", "", CVAR_SERVERINFO);
	FUNC0 ("protocol", FUNC4("%i", PROTOCOL_VERSION), CVAR_SERVERINFO | CVAR_ROM);
	sv_mapname = FUNC0 ("mapname", "nomap", CVAR_SERVERINFO | CVAR_ROM);
	sv_privateClients = FUNC0 ("sv_privateClients", "0", CVAR_SERVERINFO);
	sv_hostname = FUNC0 ("sv_hostname", "noname", CVAR_SERVERINFO | CVAR_ARCHIVE );
	sv_maxclients = FUNC0 ("sv_maxclients", "8", CVAR_SERVERINFO | CVAR_LATCH);

	sv_maxRate = FUNC0 ("sv_maxRate", "0", CVAR_ARCHIVE | CVAR_SERVERINFO );
	sv_minPing = FUNC0 ("sv_minPing", "0", CVAR_ARCHIVE | CVAR_SERVERINFO );
	sv_maxPing = FUNC0 ("sv_maxPing", "0", CVAR_ARCHIVE | CVAR_SERVERINFO );
	sv_floodProtect = FUNC0 ("sv_floodProtect", "1", CVAR_ARCHIVE | CVAR_SERVERINFO );

	// systeminfo
	FUNC0 ("sv_cheats", "1", CVAR_SYSTEMINFO | CVAR_ROM );
	sv_serverid = FUNC0 ("sv_serverid", "0", CVAR_SYSTEMINFO | CVAR_ROM );
#ifndef DLL_ONLY // bk010216 - for DLL-only servers
	sv_pure = FUNC0 ("sv_pure", "1", CVAR_SYSTEMINFO );
#else
	sv_pure = Cvar_Get ("sv_pure", "0", CVAR_SYSTEMINFO | CVAR_INIT | CVAR_ROM );
#endif
	FUNC0 ("sv_paks", "", CVAR_SYSTEMINFO | CVAR_ROM );
	FUNC0 ("sv_pakNames", "", CVAR_SYSTEMINFO | CVAR_ROM );
	FUNC0 ("sv_referencedPaks", "", CVAR_SYSTEMINFO | CVAR_ROM );
	FUNC0 ("sv_referencedPakNames", "", CVAR_SYSTEMINFO | CVAR_ROM );

	// server vars
	sv_rconPassword = FUNC0 ("rconPassword", "", CVAR_TEMP );
	sv_privatePassword = FUNC0 ("sv_privatePassword", "", CVAR_TEMP );
	sv_fps = FUNC0 ("sv_fps", "20", CVAR_TEMP );
	sv_timeout = FUNC0 ("sv_timeout", "200", CVAR_TEMP );
	sv_zombietime = FUNC0 ("sv_zombietime", "2", CVAR_TEMP );
	FUNC0 ("nextmap", "", CVAR_TEMP );

	sv_allowDownload = FUNC0 ("sv_allowDownload", "0", CVAR_SERVERINFO);
	sv_master[0] = FUNC0 ("sv_master1", MASTER_SERVER_NAME, 0 );
	sv_master[1] = FUNC0 ("sv_master2", "", CVAR_ARCHIVE );
	sv_master[2] = FUNC0 ("sv_master3", "", CVAR_ARCHIVE );
	sv_master[3] = FUNC0 ("sv_master4", "", CVAR_ARCHIVE );
	sv_master[4] = FUNC0 ("sv_master5", "", CVAR_ARCHIVE );
	sv_reconnectlimit = FUNC0 ("sv_reconnectlimit", "3", 0);
	sv_showloss = FUNC0 ("sv_showloss", "0", 0);
	sv_padPackets = FUNC0 ("sv_padPackets", "0", 0);
	sv_killserver = FUNC0 ("sv_killserver", "0", 0);
	sv_mapChecksum = FUNC0 ("sv_mapChecksum", "", CVAR_ROM);
	sv_lanForceRate = FUNC0 ("sv_lanForceRate", "1", CVAR_ARCHIVE );
	sv_strictAuth = FUNC0 ("sv_strictAuth", "1", CVAR_ARCHIVE );

	// initialize bot cvars so they are listed and can be set before loading the botlib
	FUNC3();

	// init the botlib here because we need the pre-compiler in the UI
	FUNC2();
}