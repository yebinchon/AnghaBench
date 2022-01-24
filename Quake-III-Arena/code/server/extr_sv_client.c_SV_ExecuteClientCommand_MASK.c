#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ name; int /*<<< orphan*/  (* func ) (TYPE_2__*) ;} ;
typedef  TYPE_1__ ucmd_t ;
typedef  scalar_t__ qboolean ;
struct TYPE_10__ {int /*<<< orphan*/  name; } ;
typedef  TYPE_2__ client_t ;
struct TYPE_12__ {scalar_t__ state; } ;
struct TYPE_11__ {int clients; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GAME_CLIENT_COMMAND ; 
 scalar_t__ SS_GAME ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  gvm ; 
 scalar_t__ qfalse ; 
 scalar_t__ qtrue ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 TYPE_5__ sv ; 
 TYPE_4__ svs ; 
 TYPE_1__* ucmds ; 

void FUNC6( client_t *cl, const char *s, qboolean clientOK ) {
	ucmd_t	*u;
	qboolean bProcessed = qfalse;
	
	FUNC1( s );

	// see if it is a server level command
	for (u=ucmds ; u->name ; u++) {
		if (!FUNC4 (FUNC0(0), u->name) ) {
			u->func( cl );
			bProcessed = qtrue;
			break;
		}
	}

	if (clientOK) {
		// pass unknown strings to the game
		if (!u->name && sv.state == SS_GAME) {
			FUNC3( gvm, GAME_CLIENT_COMMAND, cl - svs.clients );
		}
	}
	else if (!bProcessed)
		FUNC2( "client text ignored for %s: %s\n", cl->name, FUNC0(0) );
}