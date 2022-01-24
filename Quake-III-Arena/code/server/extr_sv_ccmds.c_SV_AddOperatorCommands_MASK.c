#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ qboolean ;
struct TYPE_2__ {scalar_t__ integer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SV_BanNum_f ; 
 int /*<<< orphan*/  SV_Ban_f ; 
 int /*<<< orphan*/  SV_ConSay_f ; 
 int /*<<< orphan*/  SV_DumpUser_f ; 
 int /*<<< orphan*/  SV_Heartbeat_f ; 
 int /*<<< orphan*/  SV_KickNum_f ; 
 int /*<<< orphan*/  SV_Kick_f ; 
 int /*<<< orphan*/  SV_KillServer_f ; 
 int /*<<< orphan*/  SV_MapRestart_f ; 
 int /*<<< orphan*/  SV_Map_f ; 
 int /*<<< orphan*/  SV_SectorList_f ; 
 int /*<<< orphan*/  SV_Serverinfo_f ; 
 int /*<<< orphan*/  SV_Status_f ; 
 int /*<<< orphan*/  SV_Systeminfo_f ; 
 TYPE_1__* com_dedicated ; 
 scalar_t__ qtrue ; 

void FUNC1( void ) {
	static qboolean	initialized;

	if ( initialized ) {
		return;
	}
	initialized = qtrue;

	FUNC0 ("heartbeat", SV_Heartbeat_f);
	FUNC0 ("kick", SV_Kick_f);
	FUNC0 ("banUser", SV_Ban_f);
	FUNC0 ("banClient", SV_BanNum_f);
	FUNC0 ("clientkick", SV_KickNum_f);
	FUNC0 ("status", SV_Status_f);
	FUNC0 ("serverinfo", SV_Serverinfo_f);
	FUNC0 ("systeminfo", SV_Systeminfo_f);
	FUNC0 ("dumpuser", SV_DumpUser_f);
	FUNC0 ("map_restart", SV_MapRestart_f);
	FUNC0 ("sectorlist", SV_SectorList_f);
	FUNC0 ("map", SV_Map_f);
#ifndef PRE_RELEASE_DEMO
	FUNC0 ("devmap", SV_Map_f);
	FUNC0 ("spmap", SV_Map_f);
	FUNC0 ("spdevmap", SV_Map_f);
#endif
	FUNC0 ("killserver", SV_KillServer_f);
	if( com_dedicated->integer ) {
		FUNC0 ("say", SV_ConSay_f);
	}
}