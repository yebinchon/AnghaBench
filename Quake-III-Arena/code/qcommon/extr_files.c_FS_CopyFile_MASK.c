#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  byte ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  ERR_FATAL ; 
 scalar_t__ FUNC2 (char*) ; 
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char*,char*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int) ; 
 scalar_t__ FUNC11 (char*,char*) ; 

__attribute__((used)) static void FUNC12( char *fromOSPath, char *toOSPath ) {
	FILE	*f;
	int		len;
	byte	*buf;

	FUNC1( "copy %s to %s\n", fromOSPath, toOSPath );

	if (FUNC11(fromOSPath, "journal.dat") || FUNC11(fromOSPath, "journaldata.dat")) {
		FUNC1( "Ignoring journal files\n");
		return;
	}

	f = FUNC4( fromOSPath, "rb" );
	if ( !f ) {
		return;
	}
	FUNC7 (f, 0, SEEK_END);
	len = FUNC8 (f);
	FUNC7 (f, 0, SEEK_SET);

	// we are using direct malloc instead of Z_Malloc here, so it
	// probably won't work on a mac... Its only for developers anyway...
	buf = FUNC10( len );
	if (FUNC5( buf, 1, len, f ) != len)
		FUNC0( ERR_FATAL, "Short read in FS_Copyfiles()\n" );
	FUNC3( f );

	if( FUNC2( toOSPath ) ) {
		return;
	}

	f = FUNC4( toOSPath, "wb" );
	if ( !f ) {
		return;
	}
	if (FUNC9( buf, 1, len, f ) != len)
		FUNC0( ERR_FATAL, "Short write in FS_Copyfiles()\n" );
	FUNC3( f );
	FUNC6( buf );
}