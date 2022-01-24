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
 int /*<<< orphan*/  FUNC2 (char*,char*,char*) ; 
 char* FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 

void FUNC7( void ) {
	int argc = FUNC0();

	if ( argc > 2 ) {
		char buffer[1024];
		int i;

		FUNC6( buffer, FUNC1(1) );
		FUNC5( buffer, "=" );

		for ( i = 2; i < argc; i++ ) {
			FUNC5( buffer, FUNC1( i ) );
			FUNC5( buffer, " " );
		}

		FUNC4( buffer );
	} else if ( argc == 2 ) {
		char *env = FUNC3( FUNC1(1) );

		if ( env ) {
			FUNC2( "%s=%s\n", FUNC1(1), env );
		} else {
			FUNC2( "%s undefined\n", FUNC1(1), env );
		}
	}
}