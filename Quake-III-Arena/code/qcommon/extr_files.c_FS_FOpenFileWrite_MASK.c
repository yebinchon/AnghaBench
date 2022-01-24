#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  size_t fileHandle_t ;
struct TYPE_10__ {scalar_t__ integer; } ;
struct TYPE_9__ {int /*<<< orphan*/  string; } ;
struct TYPE_6__ {int /*<<< orphan*/  o; } ;
struct TYPE_7__ {TYPE_1__ file; } ;
struct TYPE_8__ {TYPE_2__ handleFiles; void* handleSync; int /*<<< orphan*/  name; void* zipFile; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  ERR_FATAL ; 
 char* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC3 (char*) ; 
 size_t FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 TYPE_5__* fs_debug ; 
 int /*<<< orphan*/  fs_gamedir ; 
 TYPE_4__* fs_homepath ; 
 int /*<<< orphan*/  fs_searchpaths ; 
 TYPE_3__* fsh ; 
 void* qfalse ; 

fileHandle_t FUNC7( const char *filename ) {
	char			*ospath;
	fileHandle_t	f;

	if ( !fs_searchpaths ) {
		FUNC0( ERR_FATAL, "Filesystem call made without initialization\n" );
	}

	f = FUNC4();
	fsh[f].zipFile = qfalse;

	ospath = FUNC2( fs_homepath->string, fs_gamedir, filename );

	if ( fs_debug->integer ) {
		FUNC1( "FS_FOpenFileWrite: %s\n", ospath );
	}

	if( FUNC3( ospath ) ) {
		return 0;
	}

	// enabling the following line causes a recursive function call loop
	// when running with +set logfile 1 +set developer 1
	//Com_DPrintf( "writing to: %s\n", ospath );
	fsh[f].handleFiles.file.o = FUNC6( ospath, "wb" );

	FUNC5( fsh[f].name, filename, sizeof( fsh[f].name ) );

	fsh[f].handleSync = qfalse;
	if (!fsh[f].handleFiles.file.o) {
		f = 0;
	}
	return f;
}