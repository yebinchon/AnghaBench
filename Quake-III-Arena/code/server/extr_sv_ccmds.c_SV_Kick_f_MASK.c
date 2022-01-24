#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ type; } ;
struct TYPE_10__ {TYPE_1__ remoteAddress; } ;
struct TYPE_11__ {int /*<<< orphan*/  lastPacketTime; TYPE_2__ netchan; int /*<<< orphan*/  state; } ;
typedef  TYPE_3__ client_t ;
struct TYPE_14__ {int /*<<< orphan*/  integer; } ;
struct TYPE_13__ {int integer; } ;
struct TYPE_12__ {int /*<<< orphan*/  time; TYPE_3__* clients; } ;

/* Variables and functions */
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ NA_BOT ; 
 scalar_t__ NA_LOOPBACK ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,char*) ; 
 TYPE_3__* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,char*) ; 
 TYPE_6__* com_sv_running ; 
 TYPE_5__* sv_maxclients ; 
 TYPE_4__ svs ; 

__attribute__((used)) static void FUNC7( void ) {
	client_t	*cl;
	int			i;

	// make sure server is running
	if ( !com_sv_running->integer ) {
		FUNC2( "Server is not running.\n" );
		return;
	}

	if ( FUNC0() != 2 ) {
		FUNC2 ("Usage: kick <player name>\nkick all = kick everyone\nkick allbots = kick all bots\n");
		return;
	}

	cl = FUNC5();
	if ( !cl ) {
		if ( !FUNC3(FUNC1(1), "all") ) {
			for ( i=0, cl=svs.clients ; i < sv_maxclients->integer ; i++,cl++ ) {
				if ( !cl->state ) {
					continue;
				}
				if( cl->netchan.remoteAddress.type == NA_LOOPBACK ) {
					continue;
				}
				FUNC4( cl, "was kicked" );
				cl->lastPacketTime = svs.time;	// in case there is a funny zombie
			}
		}
		else if ( !FUNC3(FUNC1(1), "allbots") ) {
			for ( i=0, cl=svs.clients ; i < sv_maxclients->integer ; i++,cl++ ) {
				if ( !cl->state ) {
					continue;
				}
				if( cl->netchan.remoteAddress.type != NA_BOT ) {
					continue;
				}
				FUNC4( cl, "was kicked" );
				cl->lastPacketTime = svs.time;	// in case there is a funny zombie
			}
		}
		return;
	}
	if( cl->netchan.remoteAddress.type == NA_LOOPBACK ) {
		FUNC6(NULL, "print \"%s\"", "Cannot kick host player\n");
		return;
	}

	FUNC4( cl, "was kicked" );
	cl->lastPacketTime = svs.time;	// in case there is a funny zombie
}