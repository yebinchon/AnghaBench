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
struct TYPE_6__ {int /*<<< orphan*/  remoteAddress; } ;
struct TYPE_7__ {int rate; int snapshotMsec; int /*<<< orphan*/  userinfo; TYPE_1__ netchan; int /*<<< orphan*/  name; } ;
typedef  TYPE_2__ client_t ;
struct TYPE_9__ {int integer; } ;
struct TYPE_8__ {int integer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 char* FUNC1 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (char*) ; 
 TYPE_4__* com_dedicated ; 
 int FUNC7 (char*) ; 
 TYPE_3__* sv_lanForceRate ; 

void FUNC8( client_t *cl ) {
	char	*val;
	int		i;

	// name for C code
	FUNC4( cl->name, FUNC1 (cl->userinfo, "name"), sizeof(cl->name) );

	// rate command

	// if the client is on the same subnet as the server and we aren't running an
	// internet public server, assume they don't need a rate choke
	if ( FUNC5( cl->netchan.remoteAddress ) && com_dedicated->integer != 2 && sv_lanForceRate->integer == 1) {
		cl->rate = 99999;	// lans should not rate limit
	} else {
		val = FUNC1 (cl->userinfo, "rate");
		if (FUNC7(val)) {
			i = FUNC6(val);
			cl->rate = i;
			if (cl->rate < 1000) {
				cl->rate = 1000;
			} else if (cl->rate > 90000) {
				cl->rate = 90000;
			}
		} else {
			cl->rate = 3000;
		}
	}
	val = FUNC1 (cl->userinfo, "handicap");
	if (FUNC7(val)) {
		i = FUNC6(val);
		if (i<=0 || i>100 || FUNC7(val) > 4) {
			FUNC0( cl->userinfo, "handicap", "100" );
		}
	}

	// snaps command
	val = FUNC1 (cl->userinfo, "snaps");
	if (FUNC7(val)) {
		i = FUNC6(val);
		if ( i < 1 ) {
			i = 1;
		} else if ( i > 30 ) {
			i = 30;
		}
		cl->snapshotMsec = 1000/i;
	} else {
		cl->snapshotMsec = 50;
	}
	
	// TTimo
	// maintain the IP information
	// this is set in SV_DirectConnect (directly on the server, not transmitted), may be lost when client updates it's userinfo
	// the banning code relies on this being consistently present
	val = FUNC1 (cl->userinfo, "ip");
	if (!val[0])
	{
		//Com_DPrintf("Maintain IP in userinfo for '%s'\n", cl->name);
		if ( !FUNC3(cl->netchan.remoteAddress) )
			FUNC0( cl->userinfo, "ip", FUNC2( cl->netchan.remoteAddress ) );
		else
			// force the "ip" info key to "localhost" for local clients
			FUNC0( cl->userinfo, "ip", "localhost" );
	}
}