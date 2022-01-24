#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ stereoEnabled; } ;
struct TYPE_8__ {TYPE_1__ glconfig; } ;
struct TYPE_7__ {scalar_t__ integer; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* EndFrame ) (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  ERR_FATAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STEREO_CENTER ; 
 int /*<<< orphan*/  STEREO_LEFT ; 
 int /*<<< orphan*/  STEREO_RIGHT ; 
 TYPE_4__ cls ; 
 TYPE_3__* com_speeds ; 
 TYPE_2__ re ; 
 int /*<<< orphan*/  scr_initialized ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  time_backend ; 
 int /*<<< orphan*/  time_frontend ; 

void FUNC4( void ) {
	static int	recursive;

	if ( !scr_initialized ) {
		return;				// not initialized yet
	}

	if ( ++recursive > 2 ) {
		FUNC0( ERR_FATAL, "SCR_UpdateScreen: recursively called" );
	}
	recursive = 1;

	// if running in stereo, we need to draw the frame twice
	if ( cls.glconfig.stereoEnabled ) {
		FUNC1( STEREO_LEFT );
		FUNC1( STEREO_RIGHT );
	} else {
		FUNC1( STEREO_CENTER );
	}

	if ( com_speeds->integer ) {
		re.EndFrame( &time_frontend, &time_backend );
	} else {
		re.EndFrame( NULL, NULL );
	}

	recursive = 0;
}