#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ deferred; scalar_t__ infoValid; } ;
typedef  TYPE_1__ clientInfo_t ;
struct TYPE_5__ {int maxclients; TYPE_1__* clientinfo; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 TYPE_2__ cgs ; 
 scalar_t__ qfalse ; 
 int FUNC2 () ; 

void FUNC3( void ) {
	int		i;
	clientInfo_t	*ci;

	// scan for a deferred player to load
	for ( i = 0, ci = cgs.clientinfo ; i < cgs.maxclients ; i++, ci++ ) {
		if ( ci->infoValid && ci->deferred ) {
			// if we are low on memory, leave it deferred
			if ( FUNC2() < 4000000 ) {
				FUNC1( "Memory is low.  Using deferred model.\n" );
				ci->deferred = qfalse;
				continue;
			}
			FUNC0( ci );
//			break;
		}
	}
}