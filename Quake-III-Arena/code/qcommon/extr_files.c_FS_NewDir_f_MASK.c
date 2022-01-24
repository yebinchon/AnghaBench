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
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char**) ; 
 char** FUNC5 (char*,char*,char*,int*) ; 
 int /*<<< orphan*/  FUNC6 (char**,int) ; 

void FUNC7( void ) {
	char	*filter;
	char	**dirnames;
	int		ndirs;
	int		i;

	if ( FUNC0() < 2 ) {
		FUNC2( "usage: fdir <filter>\n" );
		FUNC2( "example: fdir *q3dm*.bsp\n");
		return;
	}

	filter = FUNC1( 1 );

	FUNC2( "---------------\n" );

	dirnames = FUNC5( "", "", filter, &ndirs );

	FUNC6(dirnames, ndirs);

	for ( i = 0; i < ndirs; i++ ) {
		FUNC3(dirnames[i]);
		FUNC2( "%s\n", dirnames[i] );
	}
	FUNC2( "%d files listed\n", ndirs );
	FUNC4( dirnames );
}