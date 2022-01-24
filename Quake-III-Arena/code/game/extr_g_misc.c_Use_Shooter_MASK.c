#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vec3_t ;
struct TYPE_14__ {int weapon; int /*<<< orphan*/  origin; } ;
struct TYPE_15__ {float random; TYPE_3__ s; int /*<<< orphan*/  movedir; TYPE_2__* enemy; } ;
typedef  TYPE_4__ gentity_t ;
struct TYPE_12__ {int /*<<< orphan*/  currentOrigin; } ;
struct TYPE_13__ {TYPE_1__ r; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EV_FIRE_WEAPON ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,float,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  WP_GRENADE_LAUNCHER 130 
#define  WP_PLASMAGUN 129 
#define  WP_ROCKET_LAUNCHER 128 
 float FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC11( gentity_t *ent, gentity_t *other, gentity_t *activator ) {
	vec3_t		dir;
	float		deg;
	vec3_t		up, right;

	// see if we have a target
	if ( ent->enemy ) {
		FUNC6( ent->enemy->r.currentOrigin, ent->s.origin, dir );
		FUNC5( dir );
	} else {
		FUNC3( ent->movedir, dir );
	}

	// randomize a bit
	FUNC2( up, dir );
	FUNC0( up, dir, right );

	deg = FUNC7() * ent->random;
	FUNC4( dir, deg, up, dir );

	deg = FUNC7() * ent->random;
	FUNC4( dir, deg, right, dir );

	FUNC5( dir );

	switch ( ent->s.weapon ) {
	case WP_GRENADE_LAUNCHER:
		FUNC8( ent, ent->s.origin, dir );
		break;
	case WP_ROCKET_LAUNCHER:
		FUNC10( ent, ent->s.origin, dir );
		break;
	case WP_PLASMAGUN:
		FUNC9( ent, ent->s.origin, dir );
		break;
	}

	FUNC1( ent, EV_FIRE_WEAPON, 0 );
}