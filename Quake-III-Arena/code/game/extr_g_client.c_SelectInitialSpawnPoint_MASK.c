#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int* vec3_t ;
struct TYPE_8__ {int /*<<< orphan*/  angles; int /*<<< orphan*/  origin; } ;
struct TYPE_9__ {int spawnflags; TYPE_1__ s; } ;
typedef  TYPE_2__ gentity_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,char*) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ ,int*,int*) ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  classname ; 
 int /*<<< orphan*/  vec3_origin ; 

gentity_t *FUNC5( vec3_t origin, vec3_t angles ) {
	gentity_t	*spot;

	spot = NULL;
	while ((spot = FUNC1 (spot, FUNC0(classname), "info_player_deathmatch")) != NULL) {
		if ( spot->spawnflags & 1 ) {
			break;
		}
	}

	if ( !spot || FUNC3( spot ) ) {
		return FUNC2( vec3_origin, origin, angles );
	}

	FUNC4 (spot->s.origin, origin);
	origin[2] += 9;
	FUNC4 (spot->s.angles, angles);

	return spot;
}