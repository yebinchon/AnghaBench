#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  qboolean ;
typedef  int /*<<< orphan*/  newTeamName ;
typedef  int /*<<< orphan*/  filename ;
struct TYPE_6__ {scalar_t__ team; void* modelIcon; void* headModel; void* torsoModel; void* legsModel; } ;
typedef  TYPE_1__ clientInfo_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*,int,TYPE_1__*,char const*,char const*,char const*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char const*,char const*,char const*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,char const*,...) ; 
 char const* DEFAULT_BLUETEAM_NAME ; 
 char const* DEFAULT_REDTEAM_NAME ; 
 int MAX_QPATH ; 
 scalar_t__ TEAM_BLUE ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  qtrue ; 
 void* FUNC5 (char*) ; 
 void* FUNC6 (char*) ; 

__attribute__((used)) static qboolean FUNC7( clientInfo_t *ci, const char *modelName, const char *skinName, const char *headModelName, const char *headSkinName, const char *teamName ) {
	char	filename[MAX_QPATH*2];
	const char		*headName;
	char newTeamName[MAX_QPATH*2];

	if ( headModelName[0] == '\0' ) {
		headName = modelName;
	}
	else {
		headName = headModelName;
	}
	FUNC4( filename, sizeof( filename ), "models/players/%s/lower.md3", modelName );
	ci->legsModel = FUNC5( filename );
	if ( !ci->legsModel ) {
		FUNC4( filename, sizeof( filename ), "models/players/characters/%s/lower.md3", modelName );
		ci->legsModel = FUNC5( filename );
		if ( !ci->legsModel ) {
			FUNC3( "Failed to load model file %s\n", filename );
			return qfalse;
		}
	}

	FUNC4( filename, sizeof( filename ), "models/players/%s/upper.md3", modelName );
	ci->torsoModel = FUNC5( filename );
	if ( !ci->torsoModel ) {
		FUNC4( filename, sizeof( filename ), "models/players/characters/%s/upper.md3", modelName );
		ci->torsoModel = FUNC5( filename );
		if ( !ci->torsoModel ) {
			FUNC3( "Failed to load model file %s\n", filename );
			return qfalse;
		}
	}

	if( headName[0] == '*' ) {
		FUNC4( filename, sizeof( filename ), "models/players/heads/%s/%s.md3", &headModelName[1], &headModelName[1] );
	}
	else {
		FUNC4( filename, sizeof( filename ), "models/players/%s/head.md3", headName );
	}
	ci->headModel = FUNC5( filename );
	// if the head model could not be found and we didn't load from the heads folder try to load from there
	if ( !ci->headModel && headName[0] != '*' ) {
		FUNC4( filename, sizeof( filename ), "models/players/heads/%s/%s.md3", headModelName, headModelName );
		ci->headModel = FUNC5( filename );
	}
	if ( !ci->headModel ) {
		FUNC3( "Failed to load model file %s\n", filename );
		return qfalse;
	}

	// if any skins failed to load, return failure
	if ( !FUNC2( ci, teamName, modelName, skinName, headName, headSkinName ) ) {
		if ( teamName && *teamName) {
			FUNC3( "Failed to load skin file: %s : %s : %s, %s : %s\n", teamName, modelName, skinName, headName, headSkinName );
			if( ci->team == TEAM_BLUE ) {
				FUNC4(newTeamName, sizeof(newTeamName), "%s/", DEFAULT_BLUETEAM_NAME);
			}
			else {
				FUNC4(newTeamName, sizeof(newTeamName), "%s/", DEFAULT_REDTEAM_NAME);
			}
			if ( !FUNC2( ci, newTeamName, modelName, skinName, headName, headSkinName ) ) {
				FUNC3( "Failed to load skin file: %s : %s : %s, %s : %s\n", newTeamName, modelName, skinName, headName, headSkinName );
				return qfalse;
			}
		} else {
			FUNC3( "Failed to load skin file: %s : %s, %s : %s\n", modelName, skinName, headName, headSkinName );
			return qfalse;
		}
	}

	// load the animations
	FUNC4( filename, sizeof( filename ), "models/players/%s/animation.cfg", modelName );
	if ( !FUNC1( filename, ci ) ) {
		FUNC4( filename, sizeof( filename ), "models/players/characters/%s/animation.cfg", modelName );
		if ( !FUNC1( filename, ci ) ) {
			FUNC3( "Failed to load animation file %s\n", filename );
			return qfalse;
		}
	}

	if ( FUNC0( filename, sizeof(filename), ci, teamName, headName, headSkinName, "icon", "skin" ) ) {
		ci->modelIcon = FUNC6( filename );
	}
	else if ( FUNC0( filename, sizeof(filename), ci, teamName, headName, headSkinName, "icon", "tga" ) ) {
		ci->modelIcon = FUNC6( filename );
	}

	if ( !ci->modelIcon ) {
		return qfalse;
	}

	return qtrue;
}