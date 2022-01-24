#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {void** fxPic; void* fxBasePic; } ;

/* Variables and functions */
 int /*<<< orphan*/  ART_BACK0 ; 
 int /*<<< orphan*/  ART_BACK1 ; 
 int /*<<< orphan*/  ART_FRAMEL ; 
 int /*<<< orphan*/  ART_FRAMER ; 
 int /*<<< orphan*/  ART_FX_BASE ; 
 int /*<<< orphan*/  ART_FX_BLUE ; 
 int /*<<< orphan*/  ART_FX_CYAN ; 
 int /*<<< orphan*/  ART_FX_GREEN ; 
 int /*<<< orphan*/  ART_FX_RED ; 
 int /*<<< orphan*/  ART_FX_TEAL ; 
 int /*<<< orphan*/  ART_FX_WHITE ; 
 int /*<<< orphan*/  ART_FX_YELLOW ; 
 int /*<<< orphan*/  ART_MODEL0 ; 
 int /*<<< orphan*/  ART_MODEL1 ; 
 TYPE_1__ s_playersettings ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 

void FUNC1( void ) {
	FUNC0( ART_FRAMEL );
	FUNC0( ART_FRAMER );
	FUNC0( ART_MODEL0 );
	FUNC0( ART_MODEL1 );
	FUNC0( ART_BACK0 );
	FUNC0( ART_BACK1 );

	s_playersettings.fxBasePic = FUNC0( ART_FX_BASE );
	s_playersettings.fxPic[0] = FUNC0( ART_FX_RED );
	s_playersettings.fxPic[1] = FUNC0( ART_FX_YELLOW );
	s_playersettings.fxPic[2] = FUNC0( ART_FX_GREEN );
	s_playersettings.fxPic[3] = FUNC0( ART_FX_TEAL );
	s_playersettings.fxPic[4] = FUNC0( ART_FX_BLUE );
	s_playersettings.fxPic[5] = FUNC0( ART_FX_CYAN );
	s_playersettings.fxPic[6] = FUNC0( ART_FX_WHITE );
}