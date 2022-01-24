#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char* servername; char* updateInfoString; int connState; char* connectPacketCount; int /*<<< orphan*/  messageString; } ;
typedef  TYPE_1__ uiClientState_t ;
typedef  int /*<<< orphan*/  qboolean ;
typedef  int /*<<< orphan*/  menuDef_t ;
typedef  int /*<<< orphan*/  info ;
typedef  int /*<<< orphan*/  downloadName ;

/* Variables and functions */
#define  CA_CHALLENGING 132 
#define  CA_CONNECTED 131 
#define  CA_CONNECTING 130 
#define  CA_LOADING 129 
#define  CA_PRIMED 128 
 int /*<<< orphan*/  CS_SERVERINFO ; 
 int /*<<< orphan*/  ITEM_TEXTSTYLE_SHADOWEDMORE ; 
 char* FUNC0 (char*,char*) ; 
 int MAX_INFO_VALUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (float,float,float,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (float,float,int,int,float,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,float,float,float) ; 
 int /*<<< orphan*/  colorWhite ; 
 int lastConnState ; 
 char* lastLoadingText ; 
 int /*<<< orphan*/  qtrue ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,char*,int) ; 
 char* FUNC11 (char*,...) ; 

void FUNC12( qboolean overlay ) {
	char			*s;
	uiClientState_t	cstate;
	char			info[MAX_INFO_VALUE];
	char text[256];
	float centerPoint, yStart, scale;
	
	menuDef_t *menu = FUNC2("Connect");


	if ( !overlay && menu ) {
		FUNC1(menu, qtrue);
	}

	if (!overlay) {
		centerPoint = 320;
		yStart = 130;
		scale = 0.5f;
	} else {
		centerPoint = 320;
		yStart = 32;
		scale = 0.6f;
		return;
	}

	// see what information we should display
	FUNC9( &cstate );

	info[0] = '\0';
	if( FUNC10( CS_SERVERINFO, info, sizeof(info) ) ) {
		FUNC4(centerPoint, yStart, scale, colorWhite, FUNC11( "Loading %s", FUNC0( info, "mapname" )), 0);
	}

	if (!FUNC3(cstate.servername,"localhost")) {
		FUNC4(centerPoint, yStart + 48, scale, colorWhite, FUNC11("Starting up..."), ITEM_TEXTSTYLE_SHADOWEDMORE);
	} else {
		FUNC7(text, FUNC11("Connecting to %s", cstate.servername));
		FUNC4(centerPoint, yStart + 48, scale, colorWhite,text , ITEM_TEXTSTYLE_SHADOWEDMORE);
	}

	// display global MOTD at bottom
	FUNC4(centerPoint, 600, scale, colorWhite, FUNC0( cstate.updateInfoString, "motd" ), 0);
	// print any server info (server full, bad version, etc)
	if ( cstate.connState < CA_CONNECTED ) {
		FUNC5(centerPoint, yStart + 176, 630, 20, scale, colorWhite, cstate.messageString, 0);
	}

	if ( lastConnState > cstate.connState ) {
		lastLoadingText[0] = '\0';
	}
	lastConnState = cstate.connState;

	switch ( cstate.connState ) {
	case CA_CONNECTING:
		s = FUNC11("Awaiting connection...%i", cstate.connectPacketCount);
		break;
	case CA_CHALLENGING:
		s = FUNC11("Awaiting challenge...%i", cstate.connectPacketCount);
		break;
	case CA_CONNECTED: {
		char downloadName[MAX_INFO_VALUE];

			FUNC8( "cl_downloadName", downloadName, sizeof(downloadName) );
			if (*downloadName) {
				FUNC6( downloadName, centerPoint, yStart, scale );
				return;
			}
		}
		s = "Awaiting gamestate...";
		break;
	case CA_LOADING:
		return;
	case CA_PRIMED:
		return;
	default:
		return;
	}


	if (FUNC3(cstate.servername,"localhost")) {
		FUNC4(centerPoint, yStart + 80, scale, colorWhite, s, 0);
	}

	// password required / connection rejected information goes here
}