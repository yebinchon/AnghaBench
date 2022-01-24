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
struct TYPE_3__ {int reliableSent; int reliableSequence; char const** reliableCommands; } ;
typedef  TYPE_1__ client_t ;

/* Variables and functions */
 int MAX_RELIABLE_COMMANDS ; 
 int /*<<< orphan*/  FUNC0 (char const*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char const*,int) ; 
 int qfalse ; 
 int qtrue ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*,int*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

int FUNC4( client_t *client, const char *cmd ) {
	int i, index, csnum1, csnum2;

	for ( i = client->reliableSent+1; i <= client->reliableSequence; i++ ) {
		index = i & ( MAX_RELIABLE_COMMANDS - 1 );
		//
		if ( !FUNC0(cmd, client->reliableCommands[ index ], FUNC3("cs")) ) {
			FUNC2(cmd, "cs %i", &csnum1);
			FUNC2(client->reliableCommands[ index ], "cs %i", &csnum2);
			if ( csnum1 == csnum2 ) {
				FUNC1( client->reliableCommands[ index ], cmd, sizeof( client->reliableCommands[ index ] ) );
				/*
				if ( client->netchan.remoteAddress.type != NA_BOT ) {
					Com_Printf( "WARNING: client %i removed double pending config string %i: %s\n", client-svs.clients, csnum1, cmd );
				}
				*/
				return qtrue;
			}
		}
	}
	return qfalse;
}