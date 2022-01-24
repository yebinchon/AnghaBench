#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  s ;
struct TYPE_4__ {int integer; } ;
struct TYPE_3__ {int /*<<< orphan*/  newSession; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int MAX_STRING_CHARS ; 
 int FUNC1 (char*) ; 
 TYPE_2__ g_gametype ; 
 TYPE_1__ level ; 
 int /*<<< orphan*/  qtrue ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 

void FUNC3( void ) {
	char	s[MAX_STRING_CHARS];
	int			gt;

	FUNC2( "session", s, sizeof(s) );
	gt = FUNC1( s );
	
	// if the gametype changed since the last session, don't use any
	// client sessions
	if ( g_gametype.integer != gt ) {
		level.newSession = qtrue;
		FUNC0( "Gametype changed, clearing session data.\n" );
	}
}