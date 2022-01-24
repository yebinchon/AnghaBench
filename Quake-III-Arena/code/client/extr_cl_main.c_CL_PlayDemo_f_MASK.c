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
typedef  int /*<<< orphan*/  retry ;
typedef  int /*<<< orphan*/  name ;
struct TYPE_4__ {char* demoName; int /*<<< orphan*/  firstDemoFrameSkipped; int /*<<< orphan*/  demoplaying; int /*<<< orphan*/  demofile; } ;
struct TYPE_3__ {scalar_t__ state; char* servername; } ;

/* Variables and functions */
 scalar_t__ CA_CONNECTED ; 
 scalar_t__ CA_PRIMED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int /*<<< orphan*/ *) ; 
 int FUNC3 () ; 
 char* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 
 int /*<<< orphan*/  ERR_DROP ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int MAX_OSPATH ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,int) ; 
 int FUNC12 (char*) ; 
 TYPE_2__ clc ; 
 TYPE_1__ cls ; 
 int* demo_protocols ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  qtrue ; 
 int FUNC13 (char*) ; 

void FUNC14( void ) {
	char		name[MAX_OSPATH];
	char		*arg, *ext_test;
	int			protocol, i;
	char		retry[MAX_OSPATH];

	if (FUNC3() != 2) {
		FUNC6 ("playdemo <demoname>\n");
		return;
	}

	// make sure a local server is killed
	FUNC9( "sv_killserver", "1" );

	FUNC0( qtrue );

	// open the demo file
	arg = FUNC4(1);
	
	// check for an extension .dm_?? (?? is protocol)
	ext_test = arg + FUNC13(arg) - 6;
	if ((FUNC13(arg) > 6) && (ext_test[0] == '.') && ((ext_test[1] == 'd') || (ext_test[1] == 'D')) && ((ext_test[2] == 'm') || (ext_test[2] == 'M')) && (ext_test[3] == '_'))
	{
		protocol = FUNC12(ext_test+4);
		i=0;
		while(demo_protocols[i])
		{
			if (demo_protocols[i] == protocol)
				break;
			i++;
		}
		if (demo_protocols[i])
		{
			FUNC7 (name, sizeof(name), "demos/%s", arg);
			FUNC10( name, &clc.demofile, qtrue );
		} else {
			FUNC6("Protocol %d not supported for demos\n", protocol);
			FUNC11(retry, arg, sizeof(retry));
			retry[FUNC13(retry)-6] = 0;
			FUNC2( retry, name, &clc.demofile );
		}
	} else {
		FUNC2( arg, name, &clc.demofile );
	}
	
	if (!clc.demofile) {
		FUNC5( ERR_DROP, "couldn't open %s", name);
		return;
	}
	FUNC11( clc.demoName, FUNC4(1), sizeof( clc.demoName ) );

	FUNC8();

	cls.state = CA_CONNECTED;
	clc.demoplaying = qtrue;
	FUNC11( cls.servername, FUNC4(1), sizeof( cls.servername ) );

	// read demo messages until connected
	while ( cls.state >= CA_CONNECTED && cls.state < CA_PRIMED ) {
		FUNC1();
	}
	// don't get the first snapshot this frame, to prevent the long
	// time from the gamestate load from messing causing a time skip
	clc.firstDemoFrameSkipped = qfalse;
}