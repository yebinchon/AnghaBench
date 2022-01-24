#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int* vec3_t ;
struct TYPE_7__ {int /*<<< orphan*/  angles; int /*<<< orphan*/  origin; } ;
struct TYPE_8__ {TYPE_1__ s; } ;
typedef  TYPE_2__ gentity_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 TYPE_2__* FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int*) ; 
 float FUNC5 (int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/  classname ; 
 int FUNC7 () ; 

gentity_t *FUNC8 ( vec3_t avoidPoint, vec3_t origin, vec3_t angles ) {
	gentity_t	*spot;
	vec3_t		delta;
	float		dist;
	float		list_dist[64];
	gentity_t	*list_spot[64];
	int			numSpots, rnd, i, j;

	numSpots = 0;
	spot = NULL;

	while ((spot = FUNC2 (spot, FUNC0(classname), "info_player_deathmatch")) != NULL) {
		if ( FUNC3( spot ) ) {
			continue;
		}
		FUNC6( spot->s.origin, avoidPoint, delta );
		dist = FUNC5( delta );
		for (i = 0; i < numSpots; i++) {
			if ( dist > list_dist[i] ) {
				if ( numSpots >= 64 )
					numSpots = 64-1;
				for (j = numSpots; j > i; j--) {
					list_dist[j] = list_dist[j-1];
					list_spot[j] = list_spot[j-1];
				}
				list_dist[i] = dist;
				list_spot[i] = spot;
				numSpots++;
				if (numSpots > 64)
					numSpots = 64;
				break;
			}
		}
		if (i >= numSpots && numSpots < 64) {
			list_dist[numSpots] = dist;
			list_spot[numSpots] = spot;
			numSpots++;
		}
	}
	if (!numSpots) {
		spot = FUNC2( NULL, FUNC0(classname), "info_player_deathmatch");
		if (!spot)
			FUNC1( "Couldn't find a spawn point" );
		FUNC4 (spot->s.origin, origin);
		origin[2] += 9;
		FUNC4 (spot->s.angles, angles);
		return spot;
	}

	// select a random spot from the spawn points furthest away
	rnd = FUNC7() * (numSpots / 2);

	FUNC4 (list_spot[rnd]->s.origin, origin);
	origin[2] += 9;
	FUNC4 (list_spot[rnd]->s.angles, angles);

	return list_spot[rnd];
}