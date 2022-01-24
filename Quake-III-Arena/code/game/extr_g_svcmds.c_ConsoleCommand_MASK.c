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
typedef  int /*<<< orphan*/  qboolean ;
typedef  int /*<<< orphan*/  cmd ;
struct TYPE_2__ {scalar_t__ integer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  EXEC_NOW ; 
 int MAX_TOKEN_CHARS ; 
 scalar_t__ FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 TYPE_1__ g_dedicated ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  qtrue ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC12 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*,int /*<<< orphan*/ ) ; 

qboolean	FUNC14( void ) {
	char	cmd[MAX_TOKEN_CHARS];

	FUNC10( 0, cmd, sizeof( cmd ) );

	if ( FUNC1 (cmd, "entitylist") == 0 ) {
		FUNC6();
		return qtrue;
	}

	if ( FUNC1 (cmd, "forceteam") == 0 ) {
		FUNC7();
		return qtrue;
	}

	if (FUNC1 (cmd, "game_memory") == 0) {
		FUNC8();
		return qtrue;
	}

	if (FUNC1 (cmd, "addbot") == 0) {
		FUNC3();
		return qtrue;
	}

	if (FUNC1 (cmd, "botlist") == 0) {
		FUNC5();
		return qtrue;
	}

	if (FUNC1 (cmd, "abort_podium") == 0) {
		FUNC2();
		return qtrue;
	}

	if (FUNC1 (cmd, "addip") == 0) {
		FUNC4();
		return qtrue;
	}

	if (FUNC1 (cmd, "removeip") == 0) {
		FUNC9();
		return qtrue;
	}

	if (FUNC1 (cmd, "listip") == 0) {
		FUNC11( EXEC_NOW, "g_banIPs\n" );
		return qtrue;
	}

	if (g_dedicated.integer) {
		if (FUNC1 (cmd, "say") == 0) {
			FUNC12( -1, FUNC13("print \"server: %s\"", FUNC0(1) ) );
			return qtrue;
		}
		// everything else will also be printed as a say command
		FUNC12( -1, FUNC13("print \"server: %s\"", FUNC0(0) ) );
		return qtrue;
	}

	return qfalse;
}