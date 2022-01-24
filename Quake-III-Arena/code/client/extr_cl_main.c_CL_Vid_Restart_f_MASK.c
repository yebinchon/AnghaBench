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
struct TYPE_6__ {int /*<<< orphan*/  checksumFeed; } ;
struct TYPE_5__ {scalar_t__ state; void* cgameStarted; void* soundRegistered; void* uiStarted; void* rendererStarted; } ;
struct TYPE_4__ {int /*<<< orphan*/  integer; } ;

/* Variables and functions */
 scalar_t__ CA_CINEMATIC ; 
 scalar_t__ CA_CONNECTED ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 int FS_CGAME_REF ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int FS_UI_REF ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 TYPE_3__ clc ; 
 TYPE_2__ cls ; 
 TYPE_1__* com_sv_running ; 
 void* qfalse ; 
 void* qtrue ; 

void FUNC14( void ) {

	// don't let them loop during the restart
	FUNC13();
	// shutdown the UI
	FUNC6();
	// shutdown the CGame
	FUNC4();
	// shutdown the renderer and clear the renderer interface
	FUNC5();
	// client is no longer pure untill new checksums are sent
	FUNC2();
	// clear pak references
	FUNC9( FS_UI_REF | FS_CGAME_REF );
	// reinitialize the filesystem if the game directory or checksum has changed
	FUNC10( clc.checksumFeed );

	cls.rendererStarted = qfalse;
	cls.uiStarted = qfalse;
	cls.cgameStarted = qfalse;
	cls.soundRegistered = qfalse;

	// unpause so the cgame definately gets a snapshot and renders a frame
	FUNC8( "cl_paused", "0" );

	// if not running a server clear the whole hunk
	if ( !com_sv_running->integer ) {
		// clear the whole hunk
		FUNC11();
	}
	else {
		// clear all the client data on the hunk
		FUNC12();
	}

	// initialize the renderer interface
	FUNC1();

	// startup all the client stuff
	FUNC7();

	// start the cgame if connected
	if ( cls.state > CA_CONNECTED && cls.state != CA_CINEMATIC ) {
		cls.cgameStarted = qtrue;
		FUNC0();
		// send pure checksums
		FUNC3();
	}
}