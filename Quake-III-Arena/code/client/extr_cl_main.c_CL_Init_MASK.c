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
struct TYPE_2__ {scalar_t__ realtime; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  CA_DISCONNECTED ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  CL_Clientinfo_f ; 
 int /*<<< orphan*/  CL_Configstrings_f ; 
 int /*<<< orphan*/  CL_Connect_f ; 
 int /*<<< orphan*/  CL_Disconnect_f ; 
 int /*<<< orphan*/  CL_ForwardToServer_f ; 
 int /*<<< orphan*/  CL_GlobalServers_f ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  CL_LocalServers_f ; 
 int /*<<< orphan*/  CL_OpenedPK3List_f ; 
 int /*<<< orphan*/  CL_Ping_f ; 
 int /*<<< orphan*/  CL_PlayCinematic_f ; 
 int /*<<< orphan*/  CL_PlayDemo_f ; 
 int /*<<< orphan*/  CL_Rcon_f ; 
 int /*<<< orphan*/  CL_Reconnect_f ; 
 int /*<<< orphan*/  CL_Record_f ; 
 int /*<<< orphan*/  CL_ReferencedPK3List_f ; 
 int /*<<< orphan*/  CL_ServerStatus_f ; 
 int /*<<< orphan*/  CL_SetModel_f ; 
 int /*<<< orphan*/  CL_Setenv_f ; 
 int /*<<< orphan*/  CL_ShowIP_f ; 
 int /*<<< orphan*/  CL_Snd_Restart_f ; 
 int /*<<< orphan*/  CL_StopRecord_f ; 
 int /*<<< orphan*/  CL_Vid_Restart_f ; 
 int CVAR_ARCHIVE ; 
 int CVAR_ROM ; 
 int CVAR_SERVERINFO ; 
 int CVAR_TEMP ; 
 int CVAR_USERINFO ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 void* FUNC7 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 void* cl_activeAction ; 
 void* cl_allowDownload ; 
 void* cl_anglespeedkey ; 
 void* cl_avidemo ; 
 void* cl_conXOffset ; 
 void* cl_forceavidemo ; 
 void* cl_freelook ; 
 void* cl_freezeDemo ; 
 void* cl_inGameVideo ; 
 void* cl_maxpackets ; 
 void* cl_motd ; 
 void* cl_motdString ; 
 void* cl_mouseAccel ; 
 void* cl_noprint ; 
 void* cl_packetdup ; 
 void* cl_pitchspeed ; 
 void* cl_run ; 
 void* cl_sensitivity ; 
 void* cl_serverStatusResendTime ; 
 void* cl_showMouseRate ; 
 void* cl_showSend ; 
 void* cl_showTimeDelta ; 
 void* cl_shownet ; 
 void* cl_timeNudge ; 
 void* cl_timedemo ; 
 void* cl_timeout ; 
 void* cl_yawspeed ; 
 TYPE_1__ cls ; 
 void* m_filter ; 
 void* m_forward ; 
 void* m_pitch ; 
 void* m_side ; 
 void* m_yaw ; 
 void* rconAddress ; 
 void* rcon_client_password ; 

void FUNC10( void ) {
	FUNC5( "----- Client Initialization -----\n" );

	FUNC6 ();	

	FUNC0 ();

	cls.state = CA_DISCONNECTED;	// no longer CA_UNINITIALIZED

	cls.realtime = 0;

	FUNC1 ();

	//
	// register our variables
	//
	cl_noprint = FUNC7( "cl_noprint", "0", 0 );
	cl_motd = FUNC7 ("cl_motd", "1", 0);

	cl_timeout = FUNC7 ("cl_timeout", "200", 0);

	cl_timeNudge = FUNC7 ("cl_timeNudge", "0", CVAR_TEMP );
	cl_shownet = FUNC7 ("cl_shownet", "0", CVAR_TEMP );
	cl_showSend = FUNC7 ("cl_showSend", "0", CVAR_TEMP );
	cl_showTimeDelta = FUNC7 ("cl_showTimeDelta", "0", CVAR_TEMP );
	cl_freezeDemo = FUNC7 ("cl_freezeDemo", "0", CVAR_TEMP );
	rcon_client_password = FUNC7 ("rconPassword", "", CVAR_TEMP );
	cl_activeAction = FUNC7( "activeAction", "", CVAR_TEMP );

	cl_timedemo = FUNC7 ("timedemo", "0", 0);
	cl_avidemo = FUNC7 ("cl_avidemo", "0", 0);
	cl_forceavidemo = FUNC7 ("cl_forceavidemo", "0", 0);

	rconAddress = FUNC7 ("rconAddress", "", 0);

	cl_yawspeed = FUNC7 ("cl_yawspeed", "140", CVAR_ARCHIVE);
	cl_pitchspeed = FUNC7 ("cl_pitchspeed", "140", CVAR_ARCHIVE);
	cl_anglespeedkey = FUNC7 ("cl_anglespeedkey", "1.5", 0);

	cl_maxpackets = FUNC7 ("cl_maxpackets", "30", CVAR_ARCHIVE );
	cl_packetdup = FUNC7 ("cl_packetdup", "1", CVAR_ARCHIVE );

	cl_run = FUNC7 ("cl_run", "1", CVAR_ARCHIVE);
	cl_sensitivity = FUNC7 ("sensitivity", "5", CVAR_ARCHIVE);
	cl_mouseAccel = FUNC7 ("cl_mouseAccel", "0", CVAR_ARCHIVE);
	cl_freelook = FUNC7( "cl_freelook", "1", CVAR_ARCHIVE );

	cl_showMouseRate = FUNC7 ("cl_showmouserate", "0", 0);

	cl_allowDownload = FUNC7 ("cl_allowDownload", "0", CVAR_ARCHIVE);

	cl_conXOffset = FUNC7 ("cl_conXOffset", "0", 0);
#ifdef MACOS_X
        // In game video is REALLY slow in Mac OS X right now due to driver slowness
	cl_inGameVideo = Cvar_Get ("r_inGameVideo", "0", CVAR_ARCHIVE);
#else
	cl_inGameVideo = FUNC7 ("r_inGameVideo", "1", CVAR_ARCHIVE);
#endif

	cl_serverStatusResendTime = FUNC7 ("cl_serverStatusResendTime", "750", 0);

	// init autoswitch so the ui will have it correctly even
	// if the cgame hasn't been started
	FUNC7 ("cg_autoswitch", "1", CVAR_ARCHIVE);

	m_pitch = FUNC7 ("m_pitch", "0.022", CVAR_ARCHIVE);
	m_yaw = FUNC7 ("m_yaw", "0.022", CVAR_ARCHIVE);
	m_forward = FUNC7 ("m_forward", "0.25", CVAR_ARCHIVE);
	m_side = FUNC7 ("m_side", "0.25", CVAR_ARCHIVE);
#ifdef MACOS_X
        // Input is jittery on OS X w/o this
	m_filter = Cvar_Get ("m_filter", "1", CVAR_ARCHIVE);
#else
	m_filter = FUNC7 ("m_filter", "0", CVAR_ARCHIVE);
#endif

	cl_motdString = FUNC7( "cl_motdString", "", CVAR_ROM );

	FUNC7( "cl_maxPing", "800", CVAR_ARCHIVE );


	// userinfo
	FUNC7 ("name", "UnnamedPlayer", CVAR_USERINFO | CVAR_ARCHIVE );
	FUNC7 ("rate", "3000", CVAR_USERINFO | CVAR_ARCHIVE );
	FUNC7 ("snaps", "20", CVAR_USERINFO | CVAR_ARCHIVE );
	FUNC7 ("model", "sarge", CVAR_USERINFO | CVAR_ARCHIVE );
	FUNC7 ("headmodel", "sarge", CVAR_USERINFO | CVAR_ARCHIVE );
	FUNC7 ("team_model", "james", CVAR_USERINFO | CVAR_ARCHIVE );
	FUNC7 ("team_headmodel", "*james", CVAR_USERINFO | CVAR_ARCHIVE );
	FUNC7 ("g_redTeam", "Stroggs", CVAR_SERVERINFO | CVAR_ARCHIVE);
	FUNC7 ("g_blueTeam", "Pagans", CVAR_SERVERINFO | CVAR_ARCHIVE);
	FUNC7 ("color1",  "4", CVAR_USERINFO | CVAR_ARCHIVE );
	FUNC7 ("color2", "5", CVAR_USERINFO | CVAR_ARCHIVE );
	FUNC7 ("handicap", "100", CVAR_USERINFO | CVAR_ARCHIVE );
	FUNC7 ("teamtask", "0", CVAR_USERINFO );
	FUNC7 ("sex", "male", CVAR_USERINFO | CVAR_ARCHIVE );
	FUNC7 ("cl_anonymous", "0", CVAR_USERINFO | CVAR_ARCHIVE );

	FUNC7 ("password", "", CVAR_USERINFO);
	FUNC7 ("cg_predictItems", "1", CVAR_USERINFO | CVAR_ARCHIVE );


	// cgame might not be initialized before menu is used
	FUNC7 ("cg_viewsize", "100", CVAR_ARCHIVE );

	//
	// register our commands
	//
	FUNC4 ("cmd", CL_ForwardToServer_f);
	FUNC4 ("configstrings", CL_Configstrings_f);
	FUNC4 ("clientinfo", CL_Clientinfo_f);
	FUNC4 ("snd_restart", CL_Snd_Restart_f);
	FUNC4 ("vid_restart", CL_Vid_Restart_f);
	FUNC4 ("disconnect", CL_Disconnect_f);
	FUNC4 ("record", CL_Record_f);
	FUNC4 ("demo", CL_PlayDemo_f);
	FUNC4 ("cinematic", CL_PlayCinematic_f);
	FUNC4 ("stoprecord", CL_StopRecord_f);
	FUNC4 ("connect", CL_Connect_f);
	FUNC4 ("reconnect", CL_Reconnect_f);
	FUNC4 ("localservers", CL_LocalServers_f);
	FUNC4 ("globalservers", CL_GlobalServers_f);
	FUNC4 ("rcon", CL_Rcon_f);
	FUNC4 ("setenv", CL_Setenv_f );
	FUNC4 ("ping", CL_Ping_f );
	FUNC4 ("serverstatus", CL_ServerStatus_f );
	FUNC4 ("showip", CL_ShowIP_f );
	FUNC4 ("fs_openedList", CL_OpenedPK3List_f );
	FUNC4 ("fs_referencedList", CL_ReferencedPK3List_f );
	FUNC4 ("model", CL_SetModel_f );
	FUNC2();

	FUNC9 ();

	FUNC3 ();

	FUNC8( "cl_running", "1" );

	FUNC5( "----- Client Initialization Complete -----\n" );
}