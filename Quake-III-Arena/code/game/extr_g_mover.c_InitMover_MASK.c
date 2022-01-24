#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int* vec3_t ;
typedef  scalar_t__ qboolean ;
struct TYPE_8__ {float trDuration; int /*<<< orphan*/  trDelta; int /*<<< orphan*/  trBase; int /*<<< orphan*/  trType; } ;
struct TYPE_9__ {int constantLight; TYPE_2__ pos; int /*<<< orphan*/  eType; int /*<<< orphan*/  loopSound; int /*<<< orphan*/  modelindex2; } ;
struct TYPE_7__ {int /*<<< orphan*/  currentOrigin; int /*<<< orphan*/  svFlags; } ;
struct TYPE_10__ {int speed; TYPE_3__ s; int /*<<< orphan*/  pos1; int /*<<< orphan*/  pos2; TYPE_1__ r; int /*<<< orphan*/  moverState; int /*<<< orphan*/  reached; int /*<<< orphan*/  use; scalar_t__ model2; } ;
typedef  TYPE_4__ gentity_t ;

/* Variables and functions */
 int /*<<< orphan*/  ET_MOVER ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char*,char*,float*) ; 
 scalar_t__ FUNC3 (char*,char*,char**) ; 
 scalar_t__ FUNC4 (char*,char*,int*) ; 
 int /*<<< orphan*/  MOVER_POS1 ; 
 int /*<<< orphan*/  Reached_BinaryMover ; 
 int /*<<< orphan*/  SVF_USE_CURRENT_ORIGIN ; 
 int /*<<< orphan*/  TR_STATIONARY ; 
 int /*<<< orphan*/  Use_BinaryMover ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 float FUNC6 (int*) ; 
 int /*<<< orphan*/  FUNC7 (int*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*) ; 

void FUNC10( gentity_t *ent ) {
	vec3_t		move;
	float		distance;
	float		light;
	vec3_t		color;
	qboolean	lightSet, colorSet;
	char		*sound;

	// if the "model2" key is set, use a seperate model
	// for drawing, but clip against the brushes
	if ( ent->model2 ) {
		ent->s.modelindex2 = FUNC0( ent->model2 );
	}

	// if the "loopsound" key is set, use a constant looping sound when moving
	if ( FUNC3( "noise", "100", &sound ) ) {
		ent->s.loopSound = FUNC1( sound );
	}

	// if the "color" or "light" keys are set, setup constantLight
	lightSet = FUNC2( "light", "100", &light );
	colorSet = FUNC4( "color", "1 1 1", color );
	if ( lightSet || colorSet ) {
		int		r, g, b, i;

		r = color[0] * 255;
		if ( r > 255 ) {
			r = 255;
		}
		g = color[1] * 255;
		if ( g > 255 ) {
			g = 255;
		}
		b = color[2] * 255;
		if ( b > 255 ) {
			b = 255;
		}
		i = light / 4;
		if ( i > 255 ) {
			i = 255;
		}
		ent->s.constantLight = r | ( g << 8 ) | ( b << 16 ) | ( i << 24 );
	}


	ent->use = Use_BinaryMover;
	ent->reached = Reached_BinaryMover;

	ent->moverState = MOVER_POS1;
	ent->r.svFlags = SVF_USE_CURRENT_ORIGIN;
	ent->s.eType = ET_MOVER;
	FUNC5 (ent->pos1, ent->r.currentOrigin);
	FUNC9 (ent);

	ent->s.pos.trType = TR_STATIONARY;
	FUNC5( ent->pos1, ent->s.pos.trBase );

	// calculate time to reach second position from speed
	FUNC8( ent->pos2, ent->pos1, move );
	distance = FUNC6( move );
	if ( ! ent->speed ) {
		ent->speed = 100;
	}
	FUNC7( move, ent->speed, ent->s.pos.trDelta );
	ent->s.pos.trDuration = distance * 1000 / ent->speed;
	if ( ent->s.pos.trDuration <= 0 ) {
		ent->s.pos.trDuration = 1;
	}
}