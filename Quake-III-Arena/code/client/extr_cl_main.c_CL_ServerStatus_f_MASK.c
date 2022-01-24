#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {void* pending; void* print; int /*<<< orphan*/  address; } ;
typedef  TYPE_1__ serverStatus_t ;
typedef  int /*<<< orphan*/  netadr_t ;
struct TYPE_7__ {scalar_t__ demoplaying; } ;
struct TYPE_6__ {scalar_t__ state; char* servername; } ;

/* Variables and functions */
 scalar_t__ CA_ACTIVE ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 () ; 
 char* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  NS_CLIENT ; 
 TYPE_3__ clc ; 
 TYPE_2__ cls ; 
 void* qtrue ; 

void FUNC7(void) {
	netadr_t	to;
	char		*server;
	serverStatus_t *serverStatus;

	FUNC3( &to, 0, sizeof(netadr_t) );

	if ( FUNC1() != 2 ) {
		if ( cls.state != CA_ACTIVE || clc.demoplaying ) {
			FUNC4 ("Not connected to a server.\n");
			FUNC4( "Usage: serverstatus [server]\n");
			return;	
		}
		server = cls.servername;
	}
	else {
		server = FUNC2(1);
	}

	if ( !FUNC6( server, &to ) ) {
		return;
	}

	FUNC5( NS_CLIENT, to, "getstatus" );

	serverStatus = FUNC0( to );
	serverStatus->address = to;
	serverStatus->print = qtrue;
	serverStatus->pending = qtrue;
}