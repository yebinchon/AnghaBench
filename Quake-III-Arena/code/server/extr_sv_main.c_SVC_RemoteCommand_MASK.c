#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  remaining ;
typedef  int /*<<< orphan*/  qboolean ;
typedef  int /*<<< orphan*/  netadr_t ;
typedef  int /*<<< orphan*/  msg_t ;
struct TYPE_4__ {int /*<<< orphan*/  string; } ;
struct TYPE_3__ {int /*<<< orphan*/  redirectAddress; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 char* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 unsigned int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,char*) ; 
 int /*<<< orphan*/  SV_FlushRedirect ; 
 int SV_OUTPUTBUF_LENGTH ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  qtrue ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 TYPE_2__* sv_rconPassword ; 
 TYPE_1__ svs ; 

void FUNC11( netadr_t from, msg_t *msg ) {
	qboolean	valid;
	unsigned int time;
	char		remaining[1024];
	// TTimo - scaled down to accumulate, but not overflow anything network wise, print wise etc.
	// (OOB messages are the bottleneck here)
#define SV_OUTPUTBUF_LENGTH (1024 - 16)
	char		sv_outputbuf[SV_OUTPUTBUF_LENGTH];
	static unsigned int lasttime = 0;
	char *cmd_aux;

	// TTimo - https://zerowing.idsoftware.com/bugzilla/show_bug.cgi?id=534
	time = FUNC5();
	if (time<(lasttime+500)) {
		return;
	}
	lasttime = time;

	if ( !FUNC10( sv_rconPassword->string ) ||
		FUNC9 (FUNC0(1), sv_rconPassword->string) ) {
		valid = qfalse;
		FUNC6 ("Bad rcon from %s:\n%s\n", FUNC7 (from), FUNC0(2) );
	} else {
		valid = qtrue;
		FUNC6 ("Rcon from %s:\n%s\n", FUNC7 (from), FUNC0(2) );
	}

	// start redirecting all print outputs to the packet
	svs.redirectAddress = from;
	FUNC3 (sv_outputbuf, SV_OUTPUTBUF_LENGTH, SV_FlushRedirect);

	if ( !FUNC10( sv_rconPassword->string ) ) {
		FUNC6 ("No rconpassword set on the server.\n");
	} else if ( !valid ) {
		FUNC6 ("Bad rconpassword.\n");
	} else {
		remaining[0] = 0;
		
		// https://zerowing.idsoftware.com/bugzilla/show_bug.cgi?id=543
		// get the command directly, "rcon <pass> <command>" to avoid quoting issues
		// extract the command by walking
		// since the cmd formatting can fuckup (amount of spaces), using a dumb step by step parsing
		cmd_aux = FUNC1();
		cmd_aux+=4;
		while(cmd_aux[0]==' ')
			cmd_aux++;
		while(cmd_aux[0] && cmd_aux[0]!=' ') // password
			cmd_aux++;
		while(cmd_aux[0]==' ')
			cmd_aux++;
		
		FUNC8( remaining, sizeof(remaining), cmd_aux);
		
		FUNC2 (remaining);

	}

	FUNC4 ();
}