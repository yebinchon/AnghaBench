#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  gentity_t ;
struct TYPE_4__ {scalar_t__ connected; char* netname; } ;
struct TYPE_5__ {TYPE_1__ pers; } ;
typedef  TYPE_2__ gclient_t ;
struct TYPE_6__ {int maxclients; TYPE_2__* clients; } ;

/* Variables and functions */
 scalar_t__ CON_CONNECTED ; 
 int MAX_STRING_CHARS ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int FUNC1 (char*) ; 
 int g_entities ; 
 TYPE_3__ level ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 

int FUNC5( gentity_t *to, char *s ) {
	gclient_t	*cl;
	int			idnum;
	char		s2[MAX_STRING_CHARS];
	char		n2[MAX_STRING_CHARS];

	// numeric values are just slot numbers
	if (s[0] >= '0' && s[0] <= '9') {
		idnum = FUNC1( s );
		if ( idnum < 0 || idnum >= level.maxclients ) {
			FUNC3( to-g_entities, FUNC4("print \"Bad client slot: %i\n\"", idnum));
			return -1;
		}

		cl = &level.clients[idnum];
		if ( cl->pers.connected != CON_CONNECTED ) {
			FUNC3( to-g_entities, FUNC4("print \"Client %i is not active\n\"", idnum));
			return -1;
		}
		return idnum;
	}

	// check for a name match
	FUNC0( s, s2 );
	for ( idnum=0,cl=level.clients ; idnum < level.maxclients ; idnum++,cl++ ) {
		if ( cl->pers.connected != CON_CONNECTED ) {
			continue;
		}
		FUNC0( cl->pers.netname, n2 );
		if ( !FUNC2( n2, s2 ) ) {
			return idnum;
		}
	}

	FUNC3( to-g_entities, FUNC4("print \"User %s is not on the server\n\"", s));
	return -1;
}