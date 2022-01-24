#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int* vec3_t ;
typedef  int /*<<< orphan*/  team_t ;
struct TYPE_6__ {int /*<<< orphan*/  angles; int /*<<< orphan*/  origin; } ;
struct TYPE_7__ {TYPE_1__ s; } ;
typedef  TYPE_2__ gentity_t ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  vec3_origin ; 

gentity_t *FUNC3 ( team_t team, int teamstate, vec3_t origin, vec3_t angles ) {
	gentity_t	*spot;

	spot = FUNC0 ( teamstate, team );

	if (!spot) {
		return FUNC1( vec3_origin, origin, angles );
	}

	FUNC2 (spot->s.origin, origin);
	origin[2] += 9;
	FUNC2 (spot->s.angles, angles);

	return spot;
}