#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  integer; void* modified; int /*<<< orphan*/  value; } ;
struct TYPE_11__ {int integer; } ;
struct TYPE_10__ {scalar_t__ integer; } ;
struct TYPE_9__ {scalar_t__ integer; } ;
struct TYPE_8__ {int /*<<< orphan*/  integer; } ;
struct TYPE_7__ {int integer; void* modified; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 () ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,int,int,int,...) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int,void*) ; 
 int /*<<< orphan*/  abortframe ; 
 TYPE_6__* com_dedicated ; 
 int com_frameMsec ; 
 int /*<<< orphan*/  com_frameNumber ; 
 int com_frameTime ; 
 TYPE_5__* com_maxfps ; 
 TYPE_4__* com_showtrace ; 
 TYPE_3__* com_speeds ; 
 TYPE_2__* com_timedemo ; 
 TYPE_1__* com_viewlog ; 
 void* qfalse ; 
 void* qtrue ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ time_backend ; 
 scalar_t__ time_frontend ; 
 scalar_t__ time_game ; 

void FUNC13( void ) {

	int		msec, minMsec;
	static int	lastTime;
	int key;
 
	int		timeBeforeFirstEvents;
	int           timeBeforeServer;
	int           timeBeforeEvents;
	int           timeBeforeClient;
	int           timeAfter;
  




	if ( FUNC12 (abortframe) ) {
		return;			// an ERR_DROP was thrown
	}

	// bk001204 - init to zero.
	//  also:  might be clobbered by `longjmp' or `vfork'
	timeBeforeFirstEvents =0;
	timeBeforeServer =0;
	timeBeforeEvents =0;
	timeBeforeClient = 0;
	timeAfter = 0;


	// old net chan encryption key
	key = 0x87243987;

	// write config file if anything changed
	FUNC7(); 

	// if "viewlog" has been modified, show or hide the log console
	if ( com_viewlog->modified ) {
		if ( !com_dedicated->value ) {
			FUNC11( com_viewlog->integer, qfalse );
		}
		com_viewlog->modified = qfalse;
	}

	//
	// main event loop
	//
	if ( com_speeds->integer ) {
		timeBeforeFirstEvents = FUNC10 ();
	}

	// we may want to spin here if things are going too fast
	if ( !com_dedicated->integer && com_maxfps->integer > 0 && !com_timedemo->integer ) {
		minMsec = 1000 / com_maxfps->integer;
	} else {
		minMsec = 1;
	}
	do {
		com_frameTime = FUNC4();
		if ( lastTime > com_frameTime ) {
			lastTime = com_frameTime;		// possible on first frame
		}
		msec = com_frameTime - lastTime;
	} while ( msec < minMsec );
	FUNC3 ();

	lastTime = com_frameTime;

	// mess with msec if needed
	com_frameMsec = msec;
	msec = FUNC5( msec );

	//
	// server side
	//
	if ( com_speeds->integer ) {
		timeBeforeServer = FUNC10 ();
	}

	FUNC9( msec );

	// if "dedicated" has been modified, start up
	// or shut down the client system.
	// Do this after the server may have started,
	// but before the client tries to auto-connect
	if ( com_dedicated->modified ) {
		// get the latched value
		FUNC8( "dedicated", "0", 0 );
		com_dedicated->modified = qfalse;
		if ( !com_dedicated->integer ) {
			FUNC1();
			FUNC11( com_viewlog->integer, qfalse );
		} else {
			FUNC2();
			FUNC11( 1, qtrue );
		}
	}

	//
	// client system
	//
	if ( !com_dedicated->integer ) {
		//
		// run event loop a second time to get server to client packets
		// without a frame of latency
		//
		if ( com_speeds->integer ) {
			timeBeforeEvents = FUNC10 ();
		}
		FUNC4();
		FUNC3 ();


		//
		// client side
		//
		if ( com_speeds->integer ) {
			timeBeforeClient = FUNC10 ();
		}

		FUNC0( msec );

		if ( com_speeds->integer ) {
			timeAfter = FUNC10 ();
		}
	}

	//
	// report timing information
	//
	if ( com_speeds->integer ) {
		int			all, sv, ev, cl;

		all = timeAfter - timeBeforeServer;
		sv = timeBeforeEvents - timeBeforeServer;
		ev = timeBeforeServer - timeBeforeFirstEvents + timeBeforeClient - timeBeforeEvents;
		cl = timeAfter - timeBeforeClient;
		sv -= time_game;
		cl -= time_frontend + time_backend;

		FUNC6 ("frame:%i all:%3i sv:%3i ev:%3i cl:%3i gm:%3i rf:%3i bk:%3i\n", 
					 com_frameNumber, all, sv, ev, cl, time_game, time_frontend, time_backend );
	}	

	//
	// trace optimization tracking
	//
	if ( com_showtrace->integer ) {
	
		extern	int c_traces, c_brush_traces, c_patch_traces;
		extern	int	c_pointcontents;

		FUNC6 ("%4i traces  (%ib %ip) %4i points\n", c_traces,
			c_brush_traces, c_patch_traces, c_pointcontents);
		c_traces = 0;
		c_brush_traces = 0;
		c_patch_traces = 0;
		c_pointcontents = 0;
	}

	// old net chan encryption key
	key = lastTime * 0x87243987;

	com_frameNumber++;
}