#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ integer; } ;
struct TYPE_3__ {int /*<<< orphan*/  string; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char*) ; 
 int /*<<< orphan*/  ERR_FATAL ; 
 char* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 TYPE_2__* fs_debug ; 
 int /*<<< orphan*/  fs_gamedir ; 
 TYPE_1__* fs_homepath ; 
 int /*<<< orphan*/  fs_searchpaths ; 
 scalar_t__ FUNC6 (char*,char*) ; 

void FUNC7( const char *from, const char *to ) {
	char			*from_ospath, *to_ospath;

	if ( !fs_searchpaths ) {
		FUNC0( ERR_FATAL, "Filesystem call made without initialization\n" );
	}

	// don't let sound stutter
	FUNC5();

	from_ospath = FUNC2( fs_homepath->string, fs_gamedir, from );
	to_ospath = FUNC2( fs_homepath->string, fs_gamedir, to );

	if ( fs_debug->integer ) {
		FUNC1( "FS_Rename: %s --> %s\n", from_ospath, to_ospath );
	}

	if (FUNC6( from_ospath, to_ospath )) {
		// Failed, try copying it and deleting the original
		FUNC3 ( from_ospath, to_ospath );
		FUNC4 ( from_ospath );
	}
}