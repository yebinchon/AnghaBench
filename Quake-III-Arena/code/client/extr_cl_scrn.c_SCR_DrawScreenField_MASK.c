#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  stereoFrame_t ;
struct TYPE_12__ {scalar_t__ integer; } ;
struct TYPE_11__ {scalar_t__ integer; } ;
struct TYPE_10__ {scalar_t__ integer; } ;
struct TYPE_7__ {int vidWidth; int vidHeight; } ;
struct TYPE_9__ {int state; int keyCatchers; int /*<<< orphan*/  realtime; int /*<<< orphan*/  whiteShader; TYPE_1__ glconfig; } ;
struct TYPE_8__ {int /*<<< orphan*/  (* SetColor ) (int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* DrawStretchPic ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* BeginFrame ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
#define  CA_ACTIVE 135 
#define  CA_CHALLENGING 134 
#define  CA_CINEMATIC 133 
#define  CA_CONNECTED 132 
#define  CA_CONNECTING 131 
#define  CA_DISCONNECTED 130 
#define  CA_LOADING 129 
#define  CA_PRIMED 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  ERR_FATAL ; 
 int KEYCATCH_UI ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  UIMENU_MAIN ; 
 int /*<<< orphan*/  UI_DRAW_CONNECT_SCREEN ; 
 int /*<<< orphan*/  UI_IS_FULLSCREEN ; 
 int /*<<< orphan*/  UI_REFRESH ; 
 int /*<<< orphan*/  UI_SET_ACTIVE_MENU ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int /*<<< orphan*/ ,...) ; 
 TYPE_6__* cl_debugMove ; 
 TYPE_5__* cl_debuggraph ; 
 TYPE_4__* cl_timegraph ; 
 TYPE_3__ cls ; 
 int /*<<< orphan*/ ** g_color_table ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  qtrue ; 
 TYPE_2__ re ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ uivm ; 

void FUNC13( stereoFrame_t stereoFrame ) {
	re.BeginFrame( stereoFrame );

	// wide aspect ratio screens need to have the sides cleared
	// unless they are displaying game renderings
	if ( cls.state != CA_ACTIVE ) {
		if ( cls.glconfig.vidWidth * 480 > cls.glconfig.vidHeight * 640 ) {
			re.SetColor( g_color_table[0] );
			re.DrawStretchPic( 0, 0, cls.glconfig.vidWidth, cls.glconfig.vidHeight, 0, 0, 0, 0, cls.whiteShader );
			re.SetColor( NULL );
		}
	}

	if ( !uivm ) {
		FUNC1("draw screen without UI loaded\n");
		return;
	}

	// if the menu is going to cover the entire screen, we
	// don't need to render anything under it
	if ( !FUNC8( uivm, UI_IS_FULLSCREEN )) {
		switch( cls.state ) {
		default:
			FUNC2( ERR_FATAL, "SCR_DrawScreenField: bad cls.state" );
			break;
		case CA_CINEMATIC:
			FUNC4();
			break;
		case CA_DISCONNECTED:
			// force menu up
			FUNC7();
			FUNC8( uivm, UI_SET_ACTIVE_MENU, UIMENU_MAIN );
			break;
		case CA_CONNECTING:
		case CA_CHALLENGING:
		case CA_CONNECTED:
			// connecting clients will only show the connection dialog
			// refresh to update the time
			FUNC8( uivm, UI_REFRESH, cls.realtime );
			FUNC8( uivm, UI_DRAW_CONNECT_SCREEN, qfalse );
			break;
		case CA_LOADING:
		case CA_PRIMED:
			// draw the game information screen and loading progress
			FUNC0( stereoFrame );

			// also draw the connection information, so it doesn't
			// flash away too briefly on local or lan games
			// refresh to update the time
			FUNC8( uivm, UI_REFRESH, cls.realtime );
			FUNC8( uivm, UI_DRAW_CONNECT_SCREEN, qtrue );
			break;
		case CA_ACTIVE:
			FUNC0( stereoFrame );
			FUNC6();
			break;
		}
	}

	// the menu draws next
	if ( cls.keyCatchers & KEYCATCH_UI && uivm ) {
		FUNC8( uivm, UI_REFRESH, cls.realtime );
	}

	// console draws next
	FUNC3 ();

	// debug graph can be drawn on top of anything
	if ( cl_debuggraph->integer || cl_timegraph->integer || cl_debugMove->integer ) {
		FUNC5 ();
	}
}