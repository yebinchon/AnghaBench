#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ state; TYPE_2__* gentity; } ;
typedef  TYPE_3__ client_t ;
struct TYPE_13__ {scalar_t__ state; scalar_t__ restarting; int /*<<< orphan*/ * configstrings; } ;
struct TYPE_12__ {int integer; } ;
struct TYPE_11__ {TYPE_3__* clients; } ;
struct TYPE_8__ {int svFlags; } ;
struct TYPE_9__ {TYPE_1__ r; } ;

/* Variables and functions */
 scalar_t__ CS_PRIMED ; 
 int CS_SERVERINFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/  ERR_DROP ; 
 int MAX_CONFIGSTRINGS ; 
 int MAX_STRING_CHARS ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,int) ; 
 scalar_t__ SS_GAME ; 
 int SVF_NOSERVERINFO ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char const*,int /*<<< orphan*/ ) ; 
 int FUNC6 (char const*) ; 
 TYPE_6__ sv ; 
 TYPE_5__* sv_maxclients ; 
 TYPE_4__ svs ; 

void FUNC7 (int index, const char *val) {
	int		len, i;
	int		maxChunkSize = MAX_STRING_CHARS - 24;
	client_t	*client;

	if ( index < 0 || index >= MAX_CONFIGSTRINGS ) {
		FUNC0 (ERR_DROP, "SV_SetConfigstring: bad index %i\n", index);
	}

	if ( !val ) {
		val = "";
	}

	// don't bother broadcasting an update if no change
	if ( !FUNC5( val, sv.configstrings[ index ] ) ) {
		return;
	}

	// change the string in sv
	FUNC4( sv.configstrings[index] );
	sv.configstrings[index] = FUNC1( val );

	// send it to all the clients if we aren't
	// spawning a new server
	if ( sv.state == SS_GAME || sv.restarting ) {

		// send the data to all relevent clients
		for (i = 0, client = svs.clients; i < sv_maxclients->integer ; i++, client++) {
			if ( client->state < CS_PRIMED ) {
				continue;
			}
			// do not always send server info to all clients
			if ( index == CS_SERVERINFO && client->gentity && (client->gentity->r.svFlags & SVF_NOSERVERINFO) ) {
				continue;
			}

			len = FUNC6( val );
			if( len >= maxChunkSize ) {
				int		sent = 0;
				int		remaining = len;
				char	*cmd;
				char	buf[MAX_STRING_CHARS];

				while (remaining > 0 ) {
					if ( sent == 0 ) {
						cmd = "bcs0";
					}
					else if( remaining < maxChunkSize ) {
						cmd = "bcs2";
					}
					else {
						cmd = "bcs1";
					}
					FUNC2( buf, &val[sent], maxChunkSize );

					FUNC3( client, "%s %i \"%s\"\n", cmd, index, buf );

					sent += (maxChunkSize - 1);
					remaining -= (maxChunkSize - 1);
				}
			} else {
				// standard cs, just send it
				FUNC3( client, "cs %i \"%s\"\n", index, val );
			}
		}
	}
}