#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
struct TYPE_20__ {scalar_t__ overflowed; int /*<<< orphan*/  allowoverflow; } ;
typedef  TYPE_3__ msg_t ;
typedef  int /*<<< orphan*/  msg_buf ;
struct TYPE_21__ {int /*<<< orphan*/  name; int /*<<< orphan*/  lastClientCommand; TYPE_2__* gentity; } ;
typedef  TYPE_4__ client_t ;
typedef  int /*<<< orphan*/  byte ;
struct TYPE_18__ {int svFlags; } ;
struct TYPE_19__ {TYPE_1__ r; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int MAX_MSGLEN ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int SVF_BOT ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,TYPE_3__*) ; 
 int /*<<< orphan*/  qtrue ; 

void FUNC9( client_t *client ) {
	byte		msg_buf[MAX_MSGLEN];
	msg_t		msg;

	// build the snapshot
	FUNC4( client );

	// bots need to have their snapshots build, but
	// the query them directly without needing to be sent
	if ( client->gentity && client->gentity->r.svFlags & SVF_BOT ) {
		return;
	}

	FUNC2 (&msg, msg_buf, sizeof(msg_buf));
	msg.allowoverflow = qtrue;

	// NOTE, MRE: all server->client messages now acknowledge
	// let the client know which reliable clientCommands we have received
	FUNC3( &msg, client->lastClientCommand );

	// (re)send any reliable server commands
	FUNC6( client, &msg );

	// send over all the relevant entityState_t
	// and the playerState_t
	FUNC8( client, &msg );

	// Add any download data if the client is downloading
	FUNC7( client, &msg );

	// check for overflow
	if ( msg.overflowed ) {
		FUNC0 ("WARNING: msg overflowed for %s\n", client->name);
		FUNC1 (&msg);
	}

	FUNC5( &msg, client );
}