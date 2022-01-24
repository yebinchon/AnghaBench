#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ state; } ;
typedef  TYPE_1__ client_t ;
struct TYPE_13__ {scalar_t__ integer; } ;
struct TYPE_12__ {int integer; } ;
struct TYPE_11__ {int numSnapshotEntities; TYPE_1__* clients; } ;

/* Variables and functions */
 scalar_t__ CS_CONNECTED ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int PACKET_BACKUP ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 TYPE_1__* FUNC5 (int) ; 
 TYPE_4__* com_dedicated ; 
 TYPE_3__* sv_maxclients ; 
 TYPE_2__ svs ; 

void FUNC6( void ) {
	int		oldMaxClients;
	int		i;
	client_t	*oldClients;
	int		count;

	// get the highest client number in use
	count = 0;
	for ( i = 0 ; i < sv_maxclients->integer ; i++ ) {
		if ( svs.clients[i].state >= CS_CONNECTED ) {
			if (i > count)
				count = i;
		}
	}
	count++;

	oldMaxClients = sv_maxclients->integer;
	// never go below the highest client number in use
	FUNC3( count );
	// if still the same
	if ( sv_maxclients->integer == oldMaxClients ) {
		return;
	}

	oldClients = FUNC1( count * sizeof(client_t) );
	// copy the clients to hunk memory
	for ( i = 0 ; i < count ; i++ ) {
		if ( svs.clients[i].state >= CS_CONNECTED ) {
			oldClients[i] = svs.clients[i];
		}
		else {
			FUNC0(&oldClients[i], 0, sizeof(client_t));
		}
	}

	// free old clients arrays
	FUNC4( svs.clients );

	// allocate new clients
	svs.clients = FUNC5 ( sv_maxclients->integer * sizeof(client_t) );
	FUNC0( svs.clients, 0, sv_maxclients->integer * sizeof(client_t) );

	// copy the clients over
	for ( i = 0 ; i < count ; i++ ) {
		if ( oldClients[i].state >= CS_CONNECTED ) {
			svs.clients[i] = oldClients[i];
		}
	}

	// free the old clients on the hunk
	FUNC2( oldClients );
	
	// allocate new snapshot entities
	if ( com_dedicated->integer ) {
		svs.numSnapshotEntities = sv_maxclients->integer * PACKET_BACKUP * 64;
	} else {
		// we don't need nearly as many when playing locally
		svs.numSnapshotEntities = sv_maxclients->integer * 4 * 64;
	}
}