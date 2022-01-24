#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_29__   TYPE_2__ ;
typedef  struct TYPE_28__   TYPE_1__ ;

/* Type definitions */
struct TYPE_28__ {int /*<<< orphan*/  client; } ;
typedef  TYPE_1__ gentity_t ;
typedef  int /*<<< orphan*/  cmd ;
struct TYPE_29__ {scalar_t__ intermissiontime; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_1__*) ; 
 int MAX_TOKEN_CHARS ; 
 scalar_t__ FUNC24 (char*,char*) ; 
 int /*<<< orphan*/  SAY_ALL ; 
 int /*<<< orphan*/  SAY_TEAM ; 
 TYPE_1__* g_entities ; 
 TYPE_2__ level ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  qtrue ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC26 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (char*,char*) ; 

void FUNC28( int clientNum ) {
	gentity_t *ent;
	char	cmd[MAX_TOKEN_CHARS];

	ent = g_entities + clientNum;
	if ( !ent->client ) {
		return;		// not fully in game yet
	}


	FUNC25( 0, cmd, sizeof( cmd ) );

	if (FUNC24 (cmd, "say") == 0) {
		FUNC11 (ent, SAY_ALL, qfalse);
		return;
	}
	if (FUNC24 (cmd, "say_team") == 0) {
		FUNC11 (ent, SAY_TEAM, qfalse);
		return;
	}
	if (FUNC24 (cmd, "tell") == 0) {
		FUNC18 ( ent );
		return;
	}
	if (FUNC24 (cmd, "vsay") == 0) {
		FUNC21 (ent, SAY_ALL, qfalse, qfalse);
		return;
	}
	if (FUNC24 (cmd, "vsay_team") == 0) {
		FUNC21 (ent, SAY_TEAM, qfalse, qfalse);
		return;
	}
	if (FUNC24 (cmd, "vtell") == 0) {
		FUNC20 ( ent, qfalse );
		return;
	}
	if (FUNC24 (cmd, "vosay") == 0) {
		FUNC21 (ent, SAY_ALL, qfalse, qtrue);
		return;
	}
	if (FUNC24 (cmd, "vosay_team") == 0) {
		FUNC21 (ent, SAY_TEAM, qfalse, qtrue);
		return;
	}
	if (FUNC24 (cmd, "votell") == 0) {
		FUNC20 ( ent, qtrue );
		return;
	}
	if (FUNC24 (cmd, "vtaunt") == 0) {
		FUNC19 ( ent );
		return;
	}
	if (FUNC24 (cmd, "score") == 0) {
		FUNC12 (ent);
		return;
	}

	// ignore all other commands when at intermission
	if (level.intermissiontime) {
		FUNC11 (ent, qfalse, qtrue);
		return;
	}

	if (FUNC24 (cmd, "give") == 0)
		FUNC5 (ent);
	else if (FUNC24 (cmd, "god") == 0)
		FUNC6 (ent);
	else if (FUNC24 (cmd, "notarget") == 0)
		FUNC10 (ent);
	else if (FUNC24 (cmd, "noclip") == 0)
		FUNC9 (ent);
	else if (FUNC24 (cmd, "kill") == 0)
		FUNC7 (ent);
	else if (FUNC24 (cmd, "teamtask") == 0)
		FUNC15 (ent);
	else if (FUNC24 (cmd, "levelshot") == 0)
		FUNC8 (ent);
	else if (FUNC24 (cmd, "follow") == 0)
		FUNC3 (ent);
	else if (FUNC24 (cmd, "follownext") == 0)
		FUNC2 (ent, 1);
	else if (FUNC24 (cmd, "followprev") == 0)
		FUNC2 (ent, -1);
	else if (FUNC24 (cmd, "team") == 0)
		FUNC17 (ent);
	else if (FUNC24 (cmd, "where") == 0)
		FUNC23 (ent);
	else if (FUNC24 (cmd, "callvote") == 0)
		FUNC1 (ent);
	else if (FUNC24 (cmd, "vote") == 0)
		FUNC22 (ent);
	else if (FUNC24 (cmd, "callteamvote") == 0)
		FUNC0 (ent);
	else if (FUNC24 (cmd, "teamvote") == 0)
		FUNC16 (ent);
	else if (FUNC24 (cmd, "gc") == 0)
		FUNC4( ent );
	else if (FUNC24 (cmd, "setviewpos") == 0)
		FUNC13( ent );
	else if (FUNC24 (cmd, "stats") == 0)
		FUNC14( ent );
	else
		FUNC26( clientNum, FUNC27("print \"unknown cmd %s\n\"", cmd ) );
}