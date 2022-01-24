#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int integer; int /*<<< orphan*/  modified; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int MAX_CLIENTS ; 
 int /*<<< orphan*/  qfalse ; 
 TYPE_1__* sv_maxclients ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 

void FUNC3( int minimum ) {
	// get the current maxclients value
	FUNC0( "sv_maxclients", "8", 0 );

	sv_maxclients->modified = qfalse;

	if ( sv_maxclients->integer < minimum ) {
		FUNC1( "sv_maxclients", FUNC2("%i", minimum) );
	} else if ( sv_maxclients->integer > MAX_CLIENTS ) {
		FUNC1( "sv_maxclients", FUNC2("%i", MAX_CLIENTS) );
	}
}