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
typedef  int /*<<< orphan*/  userinfo ;
typedef  int /*<<< orphan*/  qboolean ;
struct TYPE_3__ {int /*<<< orphan*/  team; int /*<<< orphan*/  skill; int /*<<< orphan*/  characterfile; } ;
typedef  TYPE_1__ bot_settings_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int MAX_INFO_STRING ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  qtrue ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,int) ; 

qboolean FUNC6( int clientNum, qboolean restart ) {
	bot_settings_t	settings;
	char			userinfo[MAX_INFO_STRING];

	FUNC5( clientNum, userinfo, sizeof(userinfo) );

	FUNC2( settings.characterfile, FUNC1( userinfo, "characterfile" ), sizeof(settings.characterfile) );
	settings.skill = FUNC3( FUNC1( userinfo, "skill" ) );
	FUNC2( settings.team, FUNC1( userinfo, "team" ), sizeof(settings.team) );

	if (!FUNC0( clientNum, &settings, restart )) {
		FUNC4( clientNum, "BotAISetupClient failed" );
		return qfalse;
	}

	return qtrue;
}