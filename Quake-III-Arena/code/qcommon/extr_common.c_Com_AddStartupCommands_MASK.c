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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char*,char*,int) ; 
 char** com_consoleLines ; 
 int com_numConsoleLines ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  qtrue ; 

qboolean FUNC2( void ) {
	int		i;
	qboolean	added;

	added = qfalse;
	// quote every token, so args with semicolons can work
	for (i=0 ; i < com_numConsoleLines ; i++) {
		if ( !com_consoleLines[i] || !com_consoleLines[i][0] ) {
			continue;
		}

		// set commands won't override menu startup
		if ( FUNC1( com_consoleLines[i], "set", 3 ) ) {
			added = qtrue;
		}
		FUNC0( com_consoleLines[i] );
		FUNC0( "\n" );
	}

	return added;
}