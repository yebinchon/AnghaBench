#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/ * vec3_t ;
struct TYPE_9__ {int /*<<< orphan*/ * origin; int /*<<< orphan*/  angles; } ;
struct TYPE_8__ {int /*<<< orphan*/  mins; int /*<<< orphan*/  maxs; } ;
struct TYPE_10__ {int speed; int wait; int damage; int spawnflags; int flags; int /*<<< orphan*/  think; scalar_t__ targetname; int /*<<< orphan*/  takedamage; scalar_t__ nextthink; int /*<<< orphan*/ * pos1; int /*<<< orphan*/ * pos2; TYPE_2__ s; int /*<<< orphan*/ * movedir; TYPE_1__ r; int /*<<< orphan*/  model; int /*<<< orphan*/  blocked; void* soundPos2; void* soundPos1; void* sound2to1; void* sound1to2; } ;
typedef  TYPE_3__ gentity_t ;
struct TYPE_11__ {scalar_t__ time; } ;

/* Variables and functions */
 int /*<<< orphan*/  Blocked_Door ; 
 float FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FL_TEAMSLAVE ; 
 scalar_t__ FRAMETIME ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,float*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  Think_MatchTeam ; 
 int /*<<< orphan*/  Think_SpawnNewDoorTrigger ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,float,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 TYPE_5__ level ; 
 int /*<<< orphan*/  qtrue ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,int /*<<< orphan*/ ) ; 

void FUNC11 (gentity_t *ent) {
	vec3_t	abs_movedir;
	float	distance;
	vec3_t	size;
	float	lip;

	ent->sound1to2 = ent->sound2to1 = FUNC2("sound/movers/doors/dr1_strt.wav");
	ent->soundPos1 = ent->soundPos2 = FUNC2("sound/movers/doors/dr1_end.wav");

	ent->blocked = Blocked_Door;

	// default speed of 400
	if (!ent->speed)
		ent->speed = 400;

	// default wait of 2 seconds
	if (!ent->wait)
		ent->wait = 2;
	ent->wait *= 1000;

	// default lip of 8 units
	FUNC3( "lip", "8", &lip );

	// default damage of 2 points
	FUNC4( "dmg", "2", &ent->damage );

	// first position at start
	FUNC6( ent->s.origin, ent->pos1 );

	// calculate second position
	FUNC10( ent, ent->model );
	FUNC1 (ent->s.angles, ent->movedir);
	abs_movedir[0] = FUNC9(ent->movedir[0]);
	abs_movedir[1] = FUNC9(ent->movedir[1]);
	abs_movedir[2] = FUNC9(ent->movedir[2]);
	FUNC8( ent->r.maxs, ent->r.mins, size );
	distance = FUNC0( abs_movedir, size ) - lip;
	FUNC7( ent->pos1, distance, ent->movedir, ent->pos2 );

	// if "start_open", reverse position 1 and 2
	if ( ent->spawnflags & 1 ) {
		vec3_t	temp;

		FUNC6( ent->pos2, temp );
		FUNC6( ent->s.origin, ent->pos2 );
		FUNC6( temp, ent->pos1 );
	}

	FUNC5( ent );

	ent->nextthink = level.time + FRAMETIME;

	if ( ! (ent->flags & FL_TEAMSLAVE ) ) {
		int health;

		FUNC4( "health", "0", &health );
		if ( health ) {
			ent->takedamage = qtrue;
		}
		if ( ent->targetname || health ) {
			// non touch/shoot doors
			ent->think = Think_MatchTeam;
		} else {
			ent->think = Think_SpawnNewDoorTrigger;
		}
	}


}