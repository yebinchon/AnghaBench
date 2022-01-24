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
typedef  int /*<<< orphan*/  qboolean ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__** com_consoleLines ; 
 int com_numConsoleLines ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  qtrue ; 

qboolean FUNC3( void ) {
	int		i;

	for ( i = 0 ; i < com_numConsoleLines ; i++ ) {
		FUNC1( com_consoleLines[i] );
		if ( !FUNC2( FUNC0(0), "safe" )
			|| !FUNC2( FUNC0(0), "cvar_restart" ) ) {
			com_consoleLines[i][0] = 0;
			return qtrue;
		}
	}
	return qfalse;
}