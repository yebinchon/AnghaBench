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
typedef  int /*<<< orphan*/  filename ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,char*) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int MAX_QPATH ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int) ; 

void FUNC6( void ) {
	char	filename[MAX_QPATH];

	if ( FUNC1() != 2 ) {
		FUNC3( "Usage: writeconfig <filename>\n" );
		return;
	}

	FUNC5( filename, FUNC2(1), sizeof( filename ) );
	FUNC0( filename, sizeof( filename ), ".cfg" );
	FUNC3( "Writing %s.\n", filename );
	FUNC4( filename );
}