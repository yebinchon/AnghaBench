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
typedef  int /*<<< orphan*/  sfx_t ;
typedef  scalar_t__ qboolean ;
struct TYPE_2__ {int /*<<< orphan*/  integer; } ;
typedef  TYPE_1__ cvar_t ;

/* Variables and functions */
 int /*<<< orphan*/  CVAR_ARCHIVE ; 
 int /*<<< orphan*/  CVAR_CHEAT ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/  (*) ()) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 void* FUNC3 (char*,char*,int /*<<< orphan*/ ) ; 
 int LOOP_HASH ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 void* s_doppler ; 
 void* s_khz ; 
 void* s_mixPreStep ; 
 void* s_mixahead ; 
 void* s_musicVolume ; 
 scalar_t__ s_paintedtime ; 
 void* s_separation ; 
 void* s_show ; 
 int s_soundMuted ; 
 int s_soundStarted ; 
 scalar_t__ s_soundtime ; 
 void* s_testsound ; 
 void* s_volume ; 
 int /*<<< orphan*/  sfxHash ; 

void FUNC10( void ) {
	cvar_t	*cv;
	qboolean	r;

	FUNC2("\n------- sound initialization -------\n");

	s_volume = FUNC3 ("s_volume", "0.8", CVAR_ARCHIVE);
	s_musicVolume = FUNC3 ("s_musicvolume", "0.25", CVAR_ARCHIVE);
	s_separation = FUNC3 ("s_separation", "0.5", CVAR_ARCHIVE);
	s_doppler = FUNC3 ("s_doppler", "1", CVAR_ARCHIVE);
	s_khz = FUNC3 ("s_khz", "22", CVAR_ARCHIVE);
	s_mixahead = FUNC3 ("s_mixahead", "0.2", CVAR_ARCHIVE);

	s_mixPreStep = FUNC3 ("s_mixPreStep", "0.05", CVAR_ARCHIVE);
	s_show = FUNC3 ("s_show", "0", CVAR_CHEAT);
	s_testsound = FUNC3 ("s_testsound", "0", CVAR_CHEAT);

	cv = FUNC3 ("s_initsound", "1", 0);
	if ( !cv->integer ) {
		FUNC2 ("not initializing.\n");
		FUNC2("------------------------------------\n");
		return;
	}

	FUNC0("play", S_Play_f);
	FUNC0("music", S_Music_f);
	FUNC0("s_list", S_SoundList_f);
	FUNC0("s_info", S_SoundInfo_f);
	FUNC0("s_stop", S_StopAllSounds);

	r = FUNC4();
	FUNC2("------------------------------------\n");

	if ( r ) {
		s_soundStarted = 1;
		s_soundMuted = 1;
//		s_numSfx = 0;

		FUNC1(sfxHash, 0, sizeof(sfx_t *)*LOOP_HASH);

		s_soundtime = 0;
		s_paintedtime = 0;

		FUNC9 ();

		FUNC7();
	}

}