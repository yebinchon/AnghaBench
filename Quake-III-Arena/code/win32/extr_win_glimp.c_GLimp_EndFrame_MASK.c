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
struct TYPE_12__ {scalar_t__ driverType; int /*<<< orphan*/  stereoEnabled; } ;
struct TYPE_11__ {int /*<<< orphan*/  hDC; } ;
struct TYPE_10__ {int /*<<< orphan*/  string; } ;
struct TYPE_9__ {int /*<<< orphan*/  integer; } ;
struct TYPE_8__ {int /*<<< orphan*/  integer; scalar_t__ modified; } ;
struct TYPE_7__ {int /*<<< orphan*/  (* Error ) (int /*<<< orphan*/ ,char*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_FATAL ; 
 scalar_t__ GLDRV_ICD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_6__ glConfig ; 
 TYPE_5__ glw_state ; 
 scalar_t__ qfalse ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_4__* r_drawBuffer ; 
 TYPE_3__* r_logFile ; 
 TYPE_2__* r_swapInterval ; 
 TYPE_1__ ri ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 

void FUNC6 (void)
{
	//
	// swapinterval stuff
	//
	if ( r_swapInterval->modified ) {
		r_swapInterval->modified = qfalse;

		if ( !glConfig.stereoEnabled ) {	// why?
			if ( &qwglSwapIntervalEXT ) {
				FUNC4( r_swapInterval->integer );
			}
		}
	}


	// don't flip if drawing to front buffer
	if ( FUNC1( r_drawBuffer->string, "GL_FRONT" ) != 0 )
	{
		if ( glConfig.driverType > GLDRV_ICD )
		{
			if ( !FUNC3( glw_state.hDC ) )
			{
				ri.Error( ERR_FATAL, "GLimp_EndFrame() - SwapBuffers() failed!\n" );
			}
		}
		else
		{
			FUNC2( glw_state.hDC );
		}
	}

	// check logging
	FUNC0( r_logFile->integer );
}