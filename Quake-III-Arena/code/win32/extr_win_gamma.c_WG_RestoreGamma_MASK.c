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
struct TYPE_4__ {scalar_t__ deviceSupportsGamma; } ;
struct TYPE_3__ {int /*<<< orphan*/  hDC; } ;
typedef  int /*<<< orphan*/  HDC ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__ glConfig ; 
 TYPE_1__ glw_state ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  s_oldHardwareGamma ; 

void FUNC5( void )
{
	if ( glConfig.deviceSupportsGamma )
	{
		if ( &qwglSetDeviceGammaRamp3DFX )
		{
			FUNC4( glw_state.hDC, s_oldHardwareGamma );
		}
		else
		{
			HDC hDC;
			
			hDC = FUNC0( FUNC1() );
			FUNC3( hDC, s_oldHardwareGamma );
			FUNC2( FUNC1(), hDC );
		}
	}
}