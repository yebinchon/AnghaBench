#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int reliableSequence; int reliableAcknowledge; char const** reliableCommands; } ;
typedef  TYPE_1__ client_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int MAX_RELIABLE_COMMANDS ; 
 int /*<<< orphan*/  FUNC1 (char const*,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 

void FUNC3( client_t *client, const char *cmd ) {
	int		index, i;

	// this is very ugly but it's also a waste to for instance send multiple config string updates
	// for the same config string index in one snapshot
//	if ( SV_ReplacePendingServerCommands( client, cmd ) ) {
//		return;
//	}

	client->reliableSequence++;
	// if we would be losing an old command that hasn't been acknowledged,
	// we must drop the connection
	// we check == instead of >= so a broadcast print added by SV_DropClient()
	// doesn't cause a recursive drop client
	if ( client->reliableSequence - client->reliableAcknowledge == MAX_RELIABLE_COMMANDS + 1 ) {
		FUNC0( "===== pending server commands =====\n" );
		for ( i = client->reliableAcknowledge + 1 ; i <= client->reliableSequence ; i++ ) {
			FUNC0( "cmd %5d: %s\n", i, client->reliableCommands[ i & (MAX_RELIABLE_COMMANDS-1) ] );
		}
		FUNC0( "cmd %5d: %s\n", i, cmd );
		FUNC2( client, "Server command overflow" );
		return;
	}
	index = client->reliableSequence & ( MAX_RELIABLE_COMMANDS - 1 );
	FUNC1( client->reliableCommands[ index ], cmd, sizeof( client->reliableCommands[ index ] ) );
}