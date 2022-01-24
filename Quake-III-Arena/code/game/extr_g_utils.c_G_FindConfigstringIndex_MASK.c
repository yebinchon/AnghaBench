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
typedef  int /*<<< orphan*/  s ;
typedef  int /*<<< orphan*/  qboolean ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int MAX_STRING_CHARS ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 

int FUNC4( char *name, int start, int max, qboolean create ) {
	int		i;
	char	s[MAX_STRING_CHARS];

	if ( !name || !name[0] ) {
		return 0;
	}

	for ( i=1 ; i<max ; i++ ) {
		FUNC2( start + i, s, sizeof( s ) );
		if ( !s[0] ) {
			break;
		}
		if ( !FUNC1( s, name ) ) {
			return i;
		}
	}

	if ( !create ) {
		return 0;
	}

	if ( i == max ) {
		FUNC0( "G_FindConfigstringIndex: overflow" );
	}

	FUNC3( start + i, name );

	return i;
}