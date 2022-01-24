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

/* Variables and functions */
 int FUNC0 () ; 
 char* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char**) ; 
 char** FUNC4 (char*,char*,int*) ; 

void FUNC5( void ) {
	char	*path;
	char	*extension;
	char	**dirnames;
	int		ndirs;
	int		i;

	if ( FUNC0() < 2 || FUNC0() > 3 ) {
		FUNC2( "usage: dir <directory> [extension]\n" );
		return;
	}

	if ( FUNC0() == 2 ) {
		path = FUNC1( 1 );
		extension = "";
	} else {
		path = FUNC1( 1 );
		extension = FUNC1( 2 );
	}

	FUNC2( "Directory of %s %s\n", path, extension );
	FUNC2( "---------------\n" );

	dirnames = FUNC4( path, extension, &ndirs );

	for ( i = 0; i < ndirs; i++ ) {
		FUNC2( "%s\n", dirnames[i] );
	}
	FUNC3( dirnames );
}