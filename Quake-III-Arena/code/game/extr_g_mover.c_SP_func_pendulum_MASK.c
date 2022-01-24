#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int trDuration; float trTime; float* trDelta; int /*<<< orphan*/  trType; int /*<<< orphan*/  trBase; } ;
struct TYPE_10__ {int trDuration; int /*<<< orphan*/  trBase; } ;
struct TYPE_13__ {TYPE_3__ apos; int /*<<< orphan*/  angles; int /*<<< orphan*/  origin; TYPE_1__ pos; } ;
struct TYPE_11__ {int /*<<< orphan*/  currentOrigin; int /*<<< orphan*/ * mins; } ;
struct TYPE_14__ {TYPE_4__ s; TYPE_2__ r; int /*<<< orphan*/  model; int /*<<< orphan*/  damage; } ;
typedef  TYPE_5__ gentity_t ;
struct TYPE_15__ {int value; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,float*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*) ; 
 int M_PI ; 
 int /*<<< orphan*/  TR_SINE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 float FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_7__ g_gravity ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*,int /*<<< orphan*/ ) ; 

void FUNC7(gentity_t *ent) {
	float		freq;
	float		length;
	float		phase;
	float		speed;

	FUNC0( "speed", "30", &speed );
	FUNC1( "dmg", "2", &ent->damage );
	FUNC0( "phase", "0", &phase );

	FUNC6( ent, ent->model );

	// find pendulum length
	length = FUNC4( ent->r.mins[2] );
	if ( length < 8 ) {
		length = 8;
	}

	freq = 1 / ( M_PI * 2 ) * FUNC5( g_gravity.value / ( 3 * length ) );

	ent->s.pos.trDuration = ( 1000 / freq );

	FUNC2( ent );

	FUNC3( ent->s.origin, ent->s.pos.trBase );
	FUNC3( ent->s.origin, ent->r.currentOrigin );

	FUNC3( ent->s.angles, ent->s.apos.trBase );

	ent->s.apos.trDuration = 1000 / freq;
	ent->s.apos.trTime = ent->s.apos.trDuration * phase;
	ent->s.apos.trType = TR_SINE;
	ent->s.apos.trDelta[2] = speed;
}