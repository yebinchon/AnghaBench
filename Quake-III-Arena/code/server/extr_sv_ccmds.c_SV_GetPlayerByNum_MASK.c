#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  state; } ;
typedef  TYPE_1__ client_t ;
struct TYPE_9__ {int /*<<< orphan*/  integer; } ;
struct TYPE_8__ {int integer; } ;
struct TYPE_7__ {TYPE_1__* clients; } ;

/* Variables and functions */
 int FUNC0 () ; 
 char* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int FUNC3 (char*) ; 
 TYPE_4__* com_sv_running ; 
 TYPE_3__* sv_maxclients ; 
 TYPE_2__ svs ; 

__attribute__((used)) static client_t *FUNC4( void ) {
	client_t	*cl;
	int			i;
	int			idnum;
	char		*s;

	// make sure server is running
	if ( !com_sv_running->integer ) {
		return NULL;
	}

	if ( FUNC0() < 2 ) {
		FUNC2( "No player specified.\n" );
		return NULL;
	}

	s = FUNC1(1);

	for (i = 0; s[i]; i++) {
		if (s[i] < '0' || s[i] > '9') {
			FUNC2( "Bad slot number: %s\n", s);
			return NULL;
		}
	}
	idnum = FUNC3( s );
	if ( idnum < 0 || idnum >= sv_maxclients->integer ) {
		FUNC2( "Bad client slot: %i\n", idnum );
		return NULL;
	}

	cl = &svs.clients[idnum];
	if ( !cl->state ) {
		FUNC2( "Client %i is not active\n", idnum );
		return NULL;
	}
	return cl;

	return NULL;
}