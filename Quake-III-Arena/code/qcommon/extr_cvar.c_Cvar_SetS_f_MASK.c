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
 int /*<<< orphan*/  CVAR_SERVERINFO ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 

void FUNC5( void ) {
	cvar_t	*v;

	if ( FUNC0() != 3 ) {
		FUNC2 ("usage: sets <variable> <value>\n");
		return;
	}
	FUNC4();
	v = FUNC3( FUNC1( 1 ) );
	if ( !v ) {
		return;
	}
	v->flags |= CVAR_SERVERINFO;
}