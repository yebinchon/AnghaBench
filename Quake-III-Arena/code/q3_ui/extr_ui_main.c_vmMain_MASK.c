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
 int UI_API_VERSION ; 
#define  UI_CONSOLE_COMMAND 138 
 int FUNC0 (int) ; 
#define  UI_DRAW_CONNECT_SCREEN 137 
 int /*<<< orphan*/  FUNC1 (int) ; 
#define  UI_GETAPIVERSION 136 
#define  UI_HASUNIQUECDKEY 135 
#define  UI_INIT 134 
#define  UI_IS_FULLSCREEN 133 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 () ; 
#define  UI_KEY_EVENT 132 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
#define  UI_MOUSE_EVENT 131 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
#define  UI_REFRESH 130 
 int /*<<< orphan*/  FUNC6 (int) ; 
#define  UI_SET_ACTIVE_MENU 129 
#define  UI_SHUTDOWN 128 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int qtrue ; 

int FUNC9( int command, int arg0, int arg1, int arg2, int arg3, int arg4, int arg5, int arg6, int arg7, int arg8, int arg9, int arg10, int arg11  ) {
	switch ( command ) {
	case UI_GETAPIVERSION:
		return UI_API_VERSION;

	case UI_INIT:
		FUNC2();
		return 0;

	case UI_SHUTDOWN:
		FUNC8();
		return 0;

	case UI_KEY_EVENT:
		FUNC4( arg0, arg1 );
		return 0;

	case UI_MOUSE_EVENT:
		FUNC5( arg0, arg1 );
		return 0;

	case UI_REFRESH:
		FUNC6( arg0 );
		return 0;

	case UI_IS_FULLSCREEN:
		return FUNC3();

	case UI_SET_ACTIVE_MENU:
		FUNC7( arg0 );
		return 0;

	case UI_CONSOLE_COMMAND:
		return FUNC0(arg0);

	case UI_DRAW_CONNECT_SCREEN:
		FUNC1( arg0 );
		return 0;
	case UI_HASUNIQUECDKEY:				// mod authors need to observe this
		return qtrue;  // bk010117 - change this to qfalse for mods!
	}

	return -1;
}