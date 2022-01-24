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
struct TYPE_4__ {int /*<<< orphan*/  adr; scalar_t__ time; int /*<<< orphan*/  start; } ;
typedef  TYPE_1__ ping_t ;
typedef  int /*<<< orphan*/  netadr_t ;
struct TYPE_5__ {int /*<<< orphan*/  realtime; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 () ; 
 char* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  NS_CLIENT ; 
 TYPE_2__ cls ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

void FUNC9( void ) {
	netadr_t	to;
	ping_t*		pingptr;
	char*		server;

	if ( FUNC2() != 2 ) {
		FUNC5( "usage: ping [server]\n");
		return;	
	}

	FUNC4( &to, 0, sizeof(netadr_t) );

	server = FUNC3(1);

	if ( !FUNC7( server, &to ) ) {
		return;
	}

	pingptr = FUNC0();

	FUNC8( &pingptr->adr, &to, sizeof (netadr_t) );
	pingptr->start = cls.realtime;
	pingptr->time  = 0;

	FUNC1(pingptr->adr, NULL, 0);
		
	FUNC6( NS_CLIENT, to, "getinfo xxx" );
}