#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vec3_t ;
struct TYPE_7__ {scalar_t__ inMemory; int /*<<< orphan*/  soundName; int /*<<< orphan*/  soundLength; } ;
typedef  TYPE_1__ sfx_t ;
typedef  size_t sfxHandle_t ;
struct TYPE_10__ {scalar_t__ framecount; } ;
struct TYPE_9__ {double oldDopplerScale; double dopplerScale; scalar_t__ framenum; void* doppler; int /*<<< orphan*/  origin; int /*<<< orphan*/  velocity; TYPE_1__* sfx; void* kill; void* active; } ;
struct TYPE_8__ {scalar_t__ integer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,size_t) ; 
 float FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_DROP ; 
 int /*<<< orphan*/  S_COLOR_YELLOW ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const,int /*<<< orphan*/ ) ; 
 double FUNC6 (int /*<<< orphan*/  const) ; 
 TYPE_5__ cls ; 
 size_t listener_number ; 
 TYPE_4__* loopSounds ; 
 scalar_t__ qfalse ; 
 void* qtrue ; 
 TYPE_3__* s_doppler ; 
 TYPE_1__* s_knownSfx ; 
 size_t s_numSfx ; 
 scalar_t__ s_soundMuted ; 
 int /*<<< orphan*/  s_soundStarted ; 

void FUNC7( int entityNum, const vec3_t origin, const vec3_t velocity, sfxHandle_t sfxHandle ) {
	sfx_t *sfx;

	if ( !s_soundStarted || s_soundMuted ) {
		return;
	}

	if ( sfxHandle < 0 || sfxHandle >= s_numSfx ) {
		FUNC1( S_COLOR_YELLOW, "S_AddLoopingSound: handle %i out of range\n", sfxHandle );
		return;
	}

	sfx = &s_knownSfx[ sfxHandle ];

	if (sfx->inMemory == qfalse) {
		FUNC3(sfx);
	}

	if ( !sfx->soundLength ) {
		FUNC0( ERR_DROP, "%s has length 0", sfx->soundName );
	}

	FUNC5( origin, loopSounds[entityNum].origin );
	FUNC5( velocity, loopSounds[entityNum].velocity );
	loopSounds[entityNum].active = qtrue;
	loopSounds[entityNum].kill = qtrue;
	loopSounds[entityNum].doppler = qfalse;
	loopSounds[entityNum].oldDopplerScale = 1.0;
	loopSounds[entityNum].dopplerScale = 1.0;
	loopSounds[entityNum].sfx = sfx;

	if (s_doppler->integer && FUNC6(velocity)>0.0) {
		vec3_t	out;
		float	lena, lenb;

		loopSounds[entityNum].doppler = qtrue;
		lena = FUNC2(loopSounds[listener_number].origin, loopSounds[entityNum].origin);
		FUNC4(loopSounds[entityNum].origin, loopSounds[entityNum].velocity, out);
		lenb = FUNC2(loopSounds[listener_number].origin, out);
		if ((loopSounds[entityNum].framenum+1) != cls.framecount) {
			loopSounds[entityNum].oldDopplerScale = 1.0;
		} else {
			loopSounds[entityNum].oldDopplerScale = loopSounds[entityNum].dopplerScale;
		}
		loopSounds[entityNum].dopplerScale = lenb/(lena*100);
		if (loopSounds[entityNum].dopplerScale<=1.0) {
			loopSounds[entityNum].doppler = qfalse;			// don't bother doing the math
		}
	}

	loopSounds[entityNum].framenum = cls.framecount;
}