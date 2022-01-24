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
struct TYPE_6__ {scalar_t__ driverType; void* deviceSupportsGamma; } ;
struct TYPE_5__ {int /*<<< orphan*/  integer; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* Printf ) (int /*<<< orphan*/ ,char*) ;} ;
typedef  int /*<<< orphan*/  HDC ;

/* Variables and functions */
 scalar_t__ GLDRV_STANDALONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 void* FUNC2 (int /*<<< orphan*/ ,int**) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  PRINT_WARNING ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__ glConfig ; 
 void* qfalse ; 
 void* qtrue ; 
 void* FUNC5 (int /*<<< orphan*/ ,int**) ; 
 scalar_t__ qwglSetDeviceGammaRamp3DFX ; 
 TYPE_2__* r_ignorehwgamma ; 
 TYPE_1__ ri ; 
 int** s_oldHardwareGamma ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 

void FUNC8( void )
{
	HDC			hDC;

	glConfig.deviceSupportsGamma = qfalse;

	if ( qwglSetDeviceGammaRamp3DFX )
	{
		glConfig.deviceSupportsGamma = qtrue;

		hDC = FUNC0( FUNC1() );
		glConfig.deviceSupportsGamma = FUNC5( hDC, s_oldHardwareGamma );
		FUNC4( FUNC1(), hDC );

		return;
	}

	// non-3Dfx standalone drivers don't support gamma changes, period
	if ( glConfig.driverType == GLDRV_STANDALONE )
	{
		return;
	}

	if ( !r_ignorehwgamma->integer )
	{
		hDC = FUNC0( FUNC1() );
		glConfig.deviceSupportsGamma = FUNC2( hDC, s_oldHardwareGamma );
		FUNC4( FUNC1(), hDC );

		if ( glConfig.deviceSupportsGamma )
		{
			//
			// do a sanity check on the gamma values
			//
			if ( ( FUNC3( s_oldHardwareGamma[0][255] ) <= FUNC3( s_oldHardwareGamma[0][0] ) ) ||
				 ( FUNC3( s_oldHardwareGamma[1][255] ) <= FUNC3( s_oldHardwareGamma[1][0] ) ) ||
				 ( FUNC3( s_oldHardwareGamma[2][255] ) <= FUNC3( s_oldHardwareGamma[2][0] ) ) )
			{
				glConfig.deviceSupportsGamma = qfalse;
				ri.Printf( PRINT_WARNING, "WARNING: device has broken gamma support, generated gamma.dat\n" );
			}

			//
			// make sure that we didn't have a prior crash in the game, and if so we need to
			// restore the gamma values to at least a linear value
			//
			if ( ( FUNC3( s_oldHardwareGamma[0][181] ) == 255 ) )
			{
				int g;

				ri.Printf( PRINT_WARNING, "WARNING: suspicious gamma tables, using linear ramp for restoration\n" );

				for ( g = 0; g < 255; g++ )
				{
					s_oldHardwareGamma[0][g] = g << 8;
					s_oldHardwareGamma[1][g] = g << 8;
					s_oldHardwareGamma[2][g] = g << 8;
				}
			}
		}
	}
}