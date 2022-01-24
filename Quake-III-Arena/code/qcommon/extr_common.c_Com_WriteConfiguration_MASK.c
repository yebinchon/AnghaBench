#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__* string; } ;
typedef  TYPE_1__ cvar_t ;

/* Variables and functions */
 int CVAR_ARCHIVE ; 
 int CVAR_INIT ; 
 int CVAR_SYSTEMINFO ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 TYPE_1__* FUNC2 (char*,char*,int) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/ * cl_cdkey ; 
 int /*<<< orphan*/  com_fullyInitialized ; 
 int cvar_modifiedFlags ; 

void FUNC4( void ) {
#ifndef DEDICATED // bk001204
	cvar_t	*fs;
#endif
	// if we are quiting without fully initializing, make sure
	// we don't write out anything
	if ( !com_fullyInitialized ) {
		return;
	}

	if ( !(cvar_modifiedFlags & CVAR_ARCHIVE ) ) {
		return;
	}
	cvar_modifiedFlags &= ~CVAR_ARCHIVE;

	FUNC1( "q3config.cfg" );

	// bk001119 - tentative "not needed for dedicated"
#ifndef DEDICATED
	fs = FUNC2 ("fs_game", "", CVAR_INIT|CVAR_SYSTEMINFO );
	if (FUNC3() && fs && fs->string[0] != 0) {
		FUNC0( fs->string, &cl_cdkey[16] );
	} else {
		FUNC0( "baseq3", cl_cdkey );
	}
#endif
}