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
typedef  int /*<<< orphan*/  team ;
typedef  int /*<<< orphan*/  string ;
typedef  int /*<<< orphan*/  name ;
typedef  int /*<<< orphan*/  altname ;
struct TYPE_2__ {int time; int startTime; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,float,char*,int,char*) ; 
 int MAX_TOKEN_CHARS ; 
 float FUNC1 (char*) ; 
 int FUNC2 (char*) ; 
 TYPE_1__ level ; 
 int /*<<< orphan*/  FUNC3 (int,char*,int) ; 
 scalar_t__ FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int,char*) ; 

void FUNC7( void ) {
	float			skill;
	int				delay;
	char			name[MAX_TOKEN_CHARS];
	char			altname[MAX_TOKEN_CHARS];
	char			string[MAX_TOKEN_CHARS];
	char			team[MAX_TOKEN_CHARS];

	// are bots enabled?
	if ( !FUNC4( "bot_enable" ) ) {
		return;
	}

	// name
	FUNC3( 1, name, sizeof( name ) );
	if ( !name[0] ) {
		FUNC5( "Usage: Addbot <botname> [skill 1-5] [team] [msec delay] [altname]\n" );
		return;
	}

	// skill
	FUNC3( 2, string, sizeof( string ) );
	if ( !string[0] ) {
		skill = 4;
	}
	else {
		skill = FUNC1( string );
	}

	// team
	FUNC3( 3, team, sizeof( team ) );

	// delay
	FUNC3( 4, string, sizeof( string ) );
	if ( !string[0] ) {
		delay = 0;
	}
	else {
		delay = FUNC2( string );
	}

	// alternative name
	FUNC3( 5, altname, sizeof( altname ) );

	FUNC0( name, skill, team, delay, altname );

	// if this was issued during gameplay and we are playing locally,
	// go ahead and load the bot's media immediately
	if ( level.time - level.startTime > 1000 &&
		FUNC4( "cl_running" ) ) {
		FUNC6( -1, "loaddefered\n" );	// FIXME: spelled wrong, but not changing for demo
	}
}