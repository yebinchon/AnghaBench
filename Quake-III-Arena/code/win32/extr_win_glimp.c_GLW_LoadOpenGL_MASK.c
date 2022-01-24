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
typedef  scalar_t__ qboolean ;
typedef  int /*<<< orphan*/  buffer ;
struct TYPE_12__ {scalar_t__ driverType; scalar_t__ isFullscreen; } ;
struct TYPE_11__ {int integer; } ;
struct TYPE_10__ {scalar_t__ integer; } ;
struct TYPE_9__ {scalar_t__ integer; } ;
struct TYPE_8__ {int integer; } ;
struct TYPE_7__ {int /*<<< orphan*/  (* Printf ) (int /*<<< orphan*/ ,char*,char const*) ;} ;

/* Variables and functions */
 scalar_t__ GLDRV_ICD ; 
 scalar_t__ GLDRV_STANDALONE ; 
 scalar_t__ GLDRV_VOODOO ; 
 int /*<<< orphan*/  FUNC0 (char const*,int,int,scalar_t__) ; 
 int /*<<< orphan*/  PRINT_ALL ; 
 scalar_t__ FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,int) ; 
 char* _3DFX_DRIVER_NAME ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 TYPE_6__ glConfig ; 
 scalar_t__ qfalse ; 
 scalar_t__ qtrue ; 
 TYPE_5__* r_colorbits ; 
 TYPE_4__* r_fullscreen ; 
 TYPE_3__* r_maskMinidriver ; 
 TYPE_2__* r_mode ; 
 TYPE_1__ ri ; 
 scalar_t__ FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,char const*) ; 

__attribute__((used)) static qboolean FUNC8( const char *drivername )
{
	char buffer[1024];
	qboolean cdsFullscreen;

	FUNC4( buffer, drivername, sizeof(buffer) );
	FUNC3(buffer);

	//
	// determine if we're on a standalone driver
	//
	if ( FUNC6( buffer, "opengl32" ) != 0 || r_maskMinidriver->integer )
	{
		glConfig.driverType = GLDRV_ICD;
	}
	else
	{
		glConfig.driverType = GLDRV_STANDALONE;

		ri.Printf( PRINT_ALL, "...assuming '%s' is a standalone driver\n", drivername );

		if ( FUNC6( buffer, _3DFX_DRIVER_NAME ) )
		{
			glConfig.driverType = GLDRV_VOODOO;
		}
	}

	// disable the 3Dfx splash screen
	FUNC5("FX_GLIDE_NO_SPLASH=0");

	//
	// load the driver and bind our function pointers to it
	// 
	if ( FUNC1( buffer ) ) 
	{
		cdsFullscreen = r_fullscreen->integer;

		// create the window and set up the context
		if ( !FUNC0( drivername, r_mode->integer, r_colorbits->integer, cdsFullscreen ) )
		{
			// if we're on a 24/32-bit desktop and we're going fullscreen on an ICD,
			// try it again but with a 16-bit desktop
			if ( glConfig.driverType == GLDRV_ICD )
			{
				if ( r_colorbits->integer != 16 ||
					 cdsFullscreen != qtrue ||
					 r_mode->integer != 3 )
				{
					if ( !FUNC0( drivername, 3, 16, qtrue ) )
					{
						goto fail;
					}
				}
			}
			else
			{
				goto fail;
			}
		}

		if ( glConfig.driverType == GLDRV_VOODOO )
		{
			glConfig.isFullscreen = qtrue;
		}

		return qtrue;
	}
fail:

	FUNC2();

	return qfalse;
}