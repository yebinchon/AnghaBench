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
struct TYPE_6__ {int numstrings; char** strings; int /*<<< orphan*/  menu; } ;
struct TYPE_4__ {char* vendor_string; char* version_string; char* renderer_string; int /*<<< orphan*/  stencilBits; int /*<<< orphan*/  depthBits; int /*<<< orphan*/  colorBits; } ;
struct TYPE_5__ {TYPE_1__ glconfig; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ SMALLCHAR_HEIGHT ; 
 int UI_CENTER ; 
 int /*<<< orphan*/  FUNC1 (int,int,char*,int,int /*<<< orphan*/ ) ; 
 int UI_LEFT ; 
 int UI_RIGHT ; 
 int UI_SMALLFONT ; 
 int /*<<< orphan*/  color_red ; 
 TYPE_3__ s_driverinfo ; 
 int /*<<< orphan*/  text_color_normal ; 
 TYPE_2__ uis ; 
 char* FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3( void )
{
	int	i;
	int	y;

	FUNC0( &s_driverinfo.menu );

	FUNC1( 320, 80, "VENDOR", UI_CENTER|UI_SMALLFONT, color_red );
	FUNC1( 320, 152, "PIXELFORMAT", UI_CENTER|UI_SMALLFONT, color_red );
	FUNC1( 320, 192, "EXTENSIONS", UI_CENTER|UI_SMALLFONT, color_red );

	FUNC1( 320, 80+16, uis.glconfig.vendor_string, UI_CENTER|UI_SMALLFONT, text_color_normal );
	FUNC1( 320, 96+16, uis.glconfig.version_string, UI_CENTER|UI_SMALLFONT, text_color_normal );
	FUNC1( 320, 112+16, uis.glconfig.renderer_string, UI_CENTER|UI_SMALLFONT, text_color_normal );
	FUNC1( 320, 152+16, FUNC2 ("color(%d-bits) Z(%d-bits) stencil(%d-bits)", uis.glconfig.colorBits, uis.glconfig.depthBits, uis.glconfig.stencilBits), UI_CENTER|UI_SMALLFONT, text_color_normal );

	// double column
	y = 192+16;
	for (i=0; i<s_driverinfo.numstrings/2; i++) {
		FUNC1( 320-4, y, s_driverinfo.strings[i*2], UI_RIGHT|UI_SMALLFONT, text_color_normal );
		FUNC1( 320+4, y, s_driverinfo.strings[i*2+1], UI_LEFT|UI_SMALLFONT, text_color_normal );
		y += SMALLCHAR_HEIGHT;
	}

	if (s_driverinfo.numstrings & 1)
		FUNC1( 320, y, s_driverinfo.strings[s_driverinfo.numstrings-1], UI_CENTER|UI_SMALLFONT, text_color_normal );
}