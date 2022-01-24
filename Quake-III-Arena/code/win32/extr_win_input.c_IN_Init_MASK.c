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

/* Variables and functions */
 int CVAR_ARCHIVE ; 
 int CVAR_LATCH ; 
 int CVAR_TEMP ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 void* FUNC1 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  MidiInfo_f ; 
 void* in_debugJoystick ; 
 void* in_joyBallScale ; 
 void* in_joystick ; 
 void* in_logitechbug ; 
 void* in_midi ; 
 void* in_midichannel ; 
 void* in_mididevice ; 
 void* in_midiport ; 
 void* in_mouse ; 
 void* joy_threshold ; 

void FUNC3( void ) {
	// MIDI input controler variables
	in_midi					= FUNC1 ("in_midi",					"0",		CVAR_ARCHIVE);
	in_midiport				= FUNC1 ("in_midiport",				"1",		CVAR_ARCHIVE);
	in_midichannel			= FUNC1 ("in_midichannel",			"1",		CVAR_ARCHIVE);
	in_mididevice			= FUNC1 ("in_mididevice",			"0",		CVAR_ARCHIVE);

	FUNC0( "midiinfo", MidiInfo_f );

	// mouse variables
  in_mouse				= FUNC1 ("in_mouse",					"1",		CVAR_ARCHIVE|CVAR_LATCH);
	in_logitechbug  = FUNC1 ("in_logitechbug", "0", CVAR_ARCHIVE);

	// joystick variables
	in_joystick				= FUNC1 ("in_joystick",				"0",		CVAR_ARCHIVE|CVAR_LATCH);
	in_joyBallScale			= FUNC1 ("in_joyBallScale",			"0.02",		CVAR_ARCHIVE);
	in_debugJoystick		= FUNC1 ("in_debugjoystick",			"0",		CVAR_TEMP);

	joy_threshold			= FUNC1 ("joy_threshold",			"0.15",		CVAR_ARCHIVE);

	FUNC2();
}