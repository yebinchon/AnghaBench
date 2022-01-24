#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ qboolean ;

/* Variables and functions */
 int /*<<< orphan*/  ART_MENU0 ; 
 int /*<<< orphan*/  ART_MENU1 ; 
 int /*<<< orphan*/  ART_NEXT0 ; 
 int /*<<< orphan*/  ART_NEXT1 ; 
 int /*<<< orphan*/  ART_REPLAY0 ; 
 int /*<<< orphan*/  ART_REPLAY1 ; 
 int /*<<< orphan*/  qfalse ; 
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * ui_medalPicNames ; 
 char** ui_medalSounds ; 

void FUNC3( void ) {
	int			n;
	qboolean	buildscript;

	buildscript = FUNC0("com_buildscript");

	FUNC1( ART_MENU0 );
	FUNC1( ART_MENU1 );
	FUNC1( ART_REPLAY0 );
	FUNC1( ART_REPLAY1 );
	FUNC1( ART_NEXT0 );
	FUNC1( ART_NEXT1 );
	for( n = 0; n < 6; n++ ) {
		FUNC1( ui_medalPicNames[n] );
		FUNC2( ui_medalSounds[n], qfalse );
	}

	if( buildscript ) {
		FUNC2( "music/loss.wav", qfalse );
		FUNC2( "music/win.wav", qfalse );
		FUNC2( "sound/player/announce/youwin.wav", qfalse );
	}
}