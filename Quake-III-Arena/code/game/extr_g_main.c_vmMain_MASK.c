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
#define  BOTAI_START_FRAME 138 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int FUNC7 () ; 
#define  GAME_CLIENT_BEGIN 137 
#define  GAME_CLIENT_COMMAND 136 
#define  GAME_CLIENT_CONNECT 135 
#define  GAME_CLIENT_DISCONNECT 134 
#define  GAME_CLIENT_THINK 133 
#define  GAME_CLIENT_USERINFO_CHANGED 132 
#define  GAME_CONSOLE_COMMAND 131 
#define  GAME_INIT 130 
#define  GAME_RUN_FRAME 129 
#define  GAME_SHUTDOWN 128 
 int /*<<< orphan*/  FUNC8 (int,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 

int FUNC11( int command, int arg0, int arg1, int arg2, int arg3, int arg4, int arg5, int arg6, int arg7, int arg8, int arg9, int arg10, int arg11  ) {
	switch ( command ) {
	case GAME_INIT:
		FUNC8( arg0, arg1, arg2 );
		return 0;
	case GAME_SHUTDOWN:
		FUNC10( arg0 );
		return 0;
	case GAME_CLIENT_CONNECT:
		return (int)FUNC3( arg0, arg1, arg2 );
	case GAME_CLIENT_THINK:
		FUNC5( arg0 );
		return 0;
	case GAME_CLIENT_USERINFO_CHANGED:
		FUNC6( arg0 );
		return 0;
	case GAME_CLIENT_DISCONNECT:
		FUNC4( arg0 );
		return 0;
	case GAME_CLIENT_BEGIN:
		FUNC1( arg0 );
		return 0;
	case GAME_CLIENT_COMMAND:
		FUNC2( arg0 );
		return 0;
	case GAME_RUN_FRAME:
		FUNC9( arg0 );
		return 0;
	case GAME_CONSOLE_COMMAND:
		return FUNC7();
	case BOTAI_START_FRAME:
		return FUNC0( arg0 );
	}

	return -1;
}