#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  size_t fileHandle_t ;
struct TYPE_14__ {int /*<<< orphan*/  string; } ;
struct TYPE_13__ {int /*<<< orphan*/  string; } ;
struct TYPE_12__ {scalar_t__ integer; } ;
struct TYPE_11__ {int /*<<< orphan*/  string; } ;
struct TYPE_8__ {void* o; } ;
struct TYPE_9__ {TYPE_1__ file; } ;
struct TYPE_10__ {TYPE_2__ handleFiles; void* handleSync; int /*<<< orphan*/  name; void* zipFile; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  ERR_FATAL ; 
 char* FUNC2 (int /*<<< orphan*/ ,char const*,char*) ; 
 size_t FUNC3 () ; 
 int FUNC4 (size_t) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 void* FUNC8 (char*,char*) ; 
 TYPE_7__* fs_basepath ; 
 TYPE_6__* fs_cdpath ; 
 TYPE_5__* fs_debug ; 
 TYPE_4__* fs_homepath ; 
 int /*<<< orphan*/  fs_searchpaths ; 
 TYPE_3__* fsh ; 
 void* qfalse ; 
 int FUNC9 (char*) ; 

int FUNC10( const char *filename, fileHandle_t *fp ) {
	char *ospath;
	fileHandle_t	f = 0;

	if ( !fs_searchpaths ) {
		FUNC0( ERR_FATAL, "Filesystem call made without initialization\n" );
	}

	f = FUNC3();
	fsh[f].zipFile = qfalse;

	FUNC6( fsh[f].name, filename, sizeof( fsh[f].name ) );

	// don't let sound stutter
	FUNC7();

  // search homepath
	ospath = FUNC2( fs_homepath->string, filename, "" );
	// remove trailing slash
	ospath[FUNC9(ospath)-1] = '\0';

	if ( fs_debug->integer ) {
		FUNC1( "FS_SV_FOpenFileRead (fs_homepath): %s\n", ospath );
	}

	fsh[f].handleFiles.file.o = FUNC8( ospath, "rb" );
	fsh[f].handleSync = qfalse;
  if (!fsh[f].handleFiles.file.o)
  {
    // NOTE TTimo on non *nix systems, fs_homepath == fs_basepath, might want to avoid
    if (FUNC5(fs_homepath->string,fs_basepath->string))
    {
      // search basepath
      ospath = FUNC2( fs_basepath->string, filename, "" );
      ospath[FUNC9(ospath)-1] = '\0';

      if ( fs_debug->integer )
      {
        FUNC1( "FS_SV_FOpenFileRead (fs_basepath): %s\n", ospath );
      }

      fsh[f].handleFiles.file.o = FUNC8( ospath, "rb" );
      fsh[f].handleSync = qfalse;

      if ( !fsh[f].handleFiles.file.o )
      {
        f = 0;
      }
    }
  }

	if (!fsh[f].handleFiles.file.o) {
    // search cd path
    ospath = FUNC2( fs_cdpath->string, filename, "" );
    ospath[FUNC9(ospath)-1] = '\0';

    if (fs_debug->integer)
    {
      FUNC1( "FS_SV_FOpenFileRead (fs_cdpath) : %s\n", ospath );
    }

	  fsh[f].handleFiles.file.o = FUNC8( ospath, "rb" );
	  fsh[f].handleSync = qfalse;

	  if( !fsh[f].handleFiles.file.o ) {
	    f = 0;
	  }
  }
  
	*fp = f;
	if (f) {
		return FUNC4(f);
	}
	return 0;
}