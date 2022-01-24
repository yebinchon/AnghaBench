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
typedef  int* vec3_t ;
typedef  int /*<<< orphan*/  usercmd_t ;
typedef  int /*<<< orphan*/  cmd ;
struct TYPE_4__ {int* viewangles; } ;
struct TYPE_3__ {int integer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 size_t PITCH ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int*,int*) ; 
 size_t YAW ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 TYPE_2__ cl ; 
 TYPE_1__* cl_debugMove ; 

usercmd_t FUNC10( void ) {
	usercmd_t	cmd;
	vec3_t		oldAngles;

	FUNC8( cl.viewangles, oldAngles );

	// keyboard angle adjustment
	FUNC0 ();
	
	FUNC6( &cmd, 0, sizeof( cmd ) );

	FUNC1( &cmd );

	// get basic movement from keyboard
	FUNC4( &cmd );

	// get basic movement from mouse
	FUNC5( &cmd );

	// get basic movement from joystick
	FUNC3( &cmd );

	// check to make sure the angles haven't wrapped
	if ( cl.viewangles[PITCH] - oldAngles[PITCH] > 90 ) {
		cl.viewangles[PITCH] = oldAngles[PITCH] + 90;
	} else if ( oldAngles[PITCH] - cl.viewangles[PITCH] > 90 ) {
		cl.viewangles[PITCH] = oldAngles[PITCH] - 90;
	} 

	// store out the final values
	FUNC2( &cmd );

	// draw debug graphs of turning for mouse testing
	if ( cl_debugMove->integer ) {
		if ( cl_debugMove->integer == 1 ) {
			FUNC7( FUNC9(cl.viewangles[YAW] - oldAngles[YAW]), 0 );
		}
		if ( cl_debugMove->integer == 2 ) {
			FUNC7( FUNC9(cl.viewangles[PITCH] - oldAngles[PITCH]), 0 );
		}
	}

	return cmd;
}