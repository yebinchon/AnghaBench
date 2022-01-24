#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vec3_t ;
struct TYPE_6__ {int /*<<< orphan*/  origin; int /*<<< orphan*/  angles; } ;
struct TYPE_7__ {TYPE_1__ s; scalar_t__ target; } ;
typedef  TYPE_2__ gentity_t ;
struct TYPE_8__ {int /*<<< orphan*/  intermission_angle; int /*<<< orphan*/  intermission_origin; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 TYPE_2__* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  classname ; 
 TYPE_3__ level ; 
 int /*<<< orphan*/  vec3_origin ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC7( void ) {
	gentity_t	*ent, *target;
	vec3_t		dir;

	// find the intermission spot
	ent = FUNC1 (NULL, FUNC0(classname), "info_player_intermission");
	if ( !ent ) {	// the map creator forgot to put in an intermission point...
		FUNC3 ( vec3_origin, level.intermission_origin, level.intermission_angle );
	} else {
		FUNC4 (ent->s.origin, level.intermission_origin);
		FUNC4 (ent->s.angles, level.intermission_angle);
		// if it has a target, look towards it
		if ( ent->target ) {
			target = FUNC2( ent->target );
			if ( target ) {
				FUNC5( target->s.origin, level.intermission_origin, dir );
				FUNC6( dir, level.intermission_angle );
			}
		}
	}

}