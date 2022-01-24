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
typedef  int /*<<< orphan*/  keyname ;
typedef  int /*<<< orphan*/  com_token ;
struct TYPE_2__ {size_t numSpawnVars; void*** spawnVars; scalar_t__ numSpawnVarChars; } ;

/* Variables and functions */
 void* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 size_t MAX_SPAWN_VARS ; 
 int MAX_TOKEN_CHARS ; 
 TYPE_1__ level ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  qtrue ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 

qboolean FUNC3( void ) {
	char		keyname[MAX_TOKEN_CHARS];
	char		com_token[MAX_TOKEN_CHARS];

	level.numSpawnVars = 0;
	level.numSpawnVarChars = 0;

	// parse the opening brace
	if ( !FUNC2( com_token, sizeof( com_token ) ) ) {
		// end of spawn string
		return qfalse;
	}
	if ( com_token[0] != '{' ) {
		FUNC1( "G_ParseSpawnVars: found %s when expecting {",com_token );
	}

	// go through all the key / value pairs
	while ( 1 ) {	
		// parse key
		if ( !FUNC2( keyname, sizeof( keyname ) ) ) {
			FUNC1( "G_ParseSpawnVars: EOF without closing brace" );
		}

		if ( keyname[0] == '}' ) {
			break;
		}
		
		// parse value	
		if ( !FUNC2( com_token, sizeof( com_token ) ) ) {
			FUNC1( "G_ParseSpawnVars: EOF without closing brace" );
		}

		if ( com_token[0] == '}' ) {
			FUNC1( "G_ParseSpawnVars: closing brace without data" );
		}
		if ( level.numSpawnVars == MAX_SPAWN_VARS ) {
			FUNC1( "G_ParseSpawnVars: MAX_SPAWN_VARS" );
		}
		level.spawnVars[ level.numSpawnVars ][0] = FUNC0( keyname );
		level.spawnVars[ level.numSpawnVars ][1] = FUNC0( com_token );
		level.numSpawnVars++;
	}

	return qtrue;
}