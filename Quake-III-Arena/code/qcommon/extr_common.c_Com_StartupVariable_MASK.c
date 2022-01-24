#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  flags; } ;
typedef  TYPE_1__ cvar_t ;

/* Variables and functions */
 int /*<<< orphan*/  CVAR_USER_CREATED ; 
 char* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/ * com_consoleLines ; 
 int com_numConsoleLines ; 
 scalar_t__ FUNC4 (char*,char const*) ; 

void FUNC5( const char *match ) {
	int		i;
	char	*s;
	cvar_t	*cv;

	for (i=0 ; i < com_numConsoleLines ; i++) {
		FUNC1( com_consoleLines[i] );
		if ( FUNC4( FUNC0(0), "set" ) ) {
			continue;
		}

		s = FUNC0(1);
		if ( !match || !FUNC4( s, match ) ) {
			FUNC3( s, FUNC0(2) );
			cv = FUNC2( s, "", 0 );
			cv->flags |= CVAR_USER_CREATED;
//			com_consoleLines[i] = 0;
		}
	}
}