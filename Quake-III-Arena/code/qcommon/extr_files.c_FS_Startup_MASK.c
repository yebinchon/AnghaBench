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
struct TYPE_7__ {scalar_t__* string; } ;
typedef  TYPE_1__ cvar_t ;
struct TYPE_12__ {char const* string; } ;
struct TYPE_11__ {char* string; } ;
struct TYPE_10__ {char* string; } ;
struct TYPE_9__ {char const* string; int /*<<< orphan*/  modified; } ;
struct TYPE_8__ {char const* string; } ;

/* Variables and functions */
 char const* BASEGAME ; 
 int CVAR_INIT ; 
 int CVAR_SYSTEMINFO ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/  (*) ()) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 void* FUNC4 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 scalar_t__ FUNC11 (char const*,char const*) ; 
 char* FUNC12 () ; 
 char* FUNC13 () ; 
 char* FUNC14 () ; 
 int /*<<< orphan*/ * FUNC15 (char*,char*) ; 
 TYPE_6__* fs_basegame ; 
 TYPE_5__* fs_basepath ; 
 TYPE_4__* fs_cdpath ; 
 void* fs_copyfiles ; 
 void* fs_debug ; 
 TYPE_3__* fs_gamedirvar ; 
 TYPE_2__* fs_homepath ; 
 int /*<<< orphan*/  fs_packFiles ; 
 void* fs_restrict ; 
 int /*<<< orphan*/ * missingFiles ; 
 int /*<<< orphan*/  qfalse ; 

__attribute__((used)) static void FUNC16( const char *gameName ) {
        const char *homePath;
	cvar_t	*fs;

	FUNC2( "----- FS_Startup -----\n" );

	fs_debug = FUNC4( "fs_debug", "0", 0 );
	fs_copyfiles = FUNC4( "fs_copyfiles", "0", CVAR_INIT );
	fs_cdpath = FUNC4 ("fs_cdpath", FUNC12(), CVAR_INIT );
	fs_basepath = FUNC4 ("fs_basepath", FUNC14(), CVAR_INIT );
	fs_basegame = FUNC4 ("fs_basegame", "", CVAR_INIT );
  homePath = FUNC13();
  if (!homePath || !homePath[0]) {
		homePath = fs_basepath->string;
	}
	fs_homepath = FUNC4 ("fs_homepath", homePath, CVAR_INIT );
	fs_gamedirvar = FUNC4 ("fs_game", "", CVAR_INIT|CVAR_SYSTEMINFO );
	fs_restrict = FUNC4 ("fs_restrict", "", CVAR_INIT );

	// add search path elements in reverse priority order
	if (fs_cdpath->string[0]) {
		FUNC5( fs_cdpath->string, gameName );
	}
	if (fs_basepath->string[0]) {
		FUNC5( fs_basepath->string, gameName );
	}
  // fs_homepath is somewhat particular to *nix systems, only add if relevant
  // NOTE: same filtering below for mods and basegame
	if (fs_basepath->string[0] && FUNC11(fs_homepath->string,fs_basepath->string)) {
		FUNC5 ( fs_homepath->string, gameName );
	}
        
	// check for additional base game so mods can be based upon other mods
	if ( fs_basegame->string[0] && !FUNC11( gameName, BASEGAME ) && FUNC11( fs_basegame->string, gameName ) ) {
		if (fs_cdpath->string[0]) {
			FUNC5(fs_cdpath->string, fs_basegame->string);
		}
		if (fs_basepath->string[0]) {
			FUNC5(fs_basepath->string, fs_basegame->string);
		}
		if (fs_homepath->string[0] && FUNC11(fs_homepath->string,fs_basepath->string)) {
			FUNC5(fs_homepath->string, fs_basegame->string);
		}
	}

	// check for additional game folder for mods
	if ( fs_gamedirvar->string[0] && !FUNC11( gameName, BASEGAME ) && FUNC11( fs_gamedirvar->string, gameName ) ) {
		if (fs_cdpath->string[0]) {
			FUNC5(fs_cdpath->string, fs_gamedirvar->string);
		}
		if (fs_basepath->string[0]) {
			FUNC5(fs_basepath->string, fs_gamedirvar->string);
		}
		if (fs_homepath->string[0] && FUNC11(fs_homepath->string,fs_basepath->string)) {
			FUNC5(fs_homepath->string, fs_gamedirvar->string);
		}
	}

	FUNC3( "baseq3" );
	fs = FUNC4 ("fs_game", "", CVAR_INIT|CVAR_SYSTEMINFO );
	if (fs && fs->string[0] != 0) {
		FUNC1( fs->string );
	}

	// add our commands
	FUNC0 ("path", FS_Path_f);
	FUNC0 ("dir", FS_Dir_f );
	FUNC0 ("fdir", FS_NewDir_f );
	FUNC0 ("touchFile", FS_TouchFile_f );

	// https://zerowing.idsoftware.com/bugzilla/show_bug.cgi?id=506
	// reorder the pure pk3 files according to server order
	FUNC9();
	
	// print the current search paths
	FUNC8();

	fs_gamedirvar->modified = qfalse; // We just loaded, it's not modified

	FUNC2( "----------------------\n" );

#ifdef FS_MISSING
	if (missingFiles == NULL) {
		missingFiles = fopen( "\\missing.txt", "ab" );
	}
#endif
	FUNC2( "%d files in pk3 files\n", fs_packFiles );
}