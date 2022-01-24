#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_30__   TYPE_6__ ;
typedef  struct TYPE_29__   TYPE_5__ ;
typedef  struct TYPE_28__   TYPE_4__ ;
typedef  struct TYPE_27__   TYPE_3__ ;
typedef  struct TYPE_26__   TYPE_2__ ;
typedef  struct TYPE_25__   TYPE_1__ ;
typedef  struct TYPE_24__   TYPE_12__ ;
typedef  struct TYPE_23__   TYPE_11__ ;

/* Type definitions */
struct TYPE_29__ {int weapon; } ;
struct TYPE_30__ {TYPE_5__ s; TYPE_4__* client; } ;
typedef  TYPE_6__ gentity_t ;
struct TYPE_27__ {int /*<<< orphan*/  viewangles; scalar_t__* powerups; } ;
struct TYPE_28__ {int /*<<< orphan*/  oldOrigin; TYPE_3__ ps; scalar_t__ accuracy_shots; TYPE_2__* persistantPowerup; } ;
struct TYPE_26__ {TYPE_1__* item; } ;
struct TYPE_25__ {scalar_t__ giTag; } ;
struct TYPE_24__ {int /*<<< orphan*/  integer; } ;
struct TYPE_23__ {int value; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CHAINGUN_SPREAD ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GT_TEAM ; 
 int /*<<< orphan*/  MACHINEGUN_DAMAGE ; 
 int /*<<< orphan*/  MACHINEGUN_SPREAD ; 
 int /*<<< orphan*/  MACHINEGUN_TEAM_DAMAGE ; 
 scalar_t__ NUM_NAILSHOTS ; 
 scalar_t__ PW_DOUBLER ; 
 size_t PW_QUAD ; 
#define  WP_BFG 140 
#define  WP_CHAINGUN 139 
#define  WP_GAUNTLET 138 
#define  WP_GRAPPLING_HOOK 137 
#define  WP_GRENADE_LAUNCHER 136 
#define  WP_LIGHTNING 135 
#define  WP_MACHINEGUN 134 
#define  WP_NAILGUN 133 
#define  WP_PLASMAGUN 132 
#define  WP_PROX_LAUNCHER 131 
#define  WP_RAILGUN 130 
#define  WP_ROCKET_LAUNCHER 129 
#define  WP_SHOTGUN 128 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_6__*) ; 
 int /*<<< orphan*/  forward ; 
 TYPE_12__ g_gametype ; 
 TYPE_11__ g_quadfactor ; 
 int /*<<< orphan*/  muzzle ; 
 int /*<<< orphan*/  right ; 
 int s_quadFactor ; 
 int /*<<< orphan*/  up ; 
 int /*<<< orphan*/  FUNC10 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_6__*) ; 

void FUNC14( gentity_t *ent ) {
	if (ent->client->ps.powerups[PW_QUAD] ) {
		s_quadFactor = g_quadfactor.value;
	} else {
		s_quadFactor = 1;
	}
#ifdef MISSIONPACK
	if( ent->client->persistantPowerup && ent->client->persistantPowerup->item && ent->client->persistantPowerup->item->giTag == PW_DOUBLER ) {
		s_quadFactor *= 2;
	}
#endif

	// track shots taken for accuracy tracking.  Grapple is not a weapon and gauntet is just not tracked
	if( ent->s.weapon != WP_GRAPPLING_HOOK && ent->s.weapon != WP_GAUNTLET ) {
#ifdef MISSIONPACK
		if( ent->s.weapon == WP_NAILGUN ) {
			ent->client->accuracy_shots += NUM_NAILSHOTS;
		} else {
			ent->client->accuracy_shots++;
		}
#else
		ent->client->accuracy_shots++;
#endif
	}

	// set aiming directions
	FUNC0 (ent->client->ps.viewangles, forward, right, up);

	FUNC3 ( ent, ent->client->oldOrigin, forward, right, up, muzzle );

	// fire the specific weapon
	switch( ent->s.weapon ) {
	case WP_GAUNTLET:
		FUNC4( ent );
		break;
	case WP_LIGHTNING:
		FUNC6( ent );
		break;
	case WP_SHOTGUN:
		FUNC13( ent );
		break;
	case WP_MACHINEGUN:
		if ( g_gametype.integer != GT_TEAM ) {
			FUNC2( ent, MACHINEGUN_SPREAD, MACHINEGUN_DAMAGE );
		} else {
			FUNC2( ent, MACHINEGUN_SPREAD, MACHINEGUN_TEAM_DAMAGE );
		}
		break;
	case WP_GRENADE_LAUNCHER:
		FUNC10( ent );
		break;
	case WP_ROCKET_LAUNCHER:
		FUNC9( ent );
		break;
	case WP_PLASMAGUN:
		FUNC8( ent );
		break;
	case WP_RAILGUN:
		FUNC12( ent );
		break;
	case WP_BFG:
		FUNC1( ent );
		break;
	case WP_GRAPPLING_HOOK:
		FUNC5( ent );
		break;
#ifdef MISSIONPACK
	case WP_NAILGUN:
		Weapon_Nailgun_Fire( ent );
		break;
	case WP_PROX_LAUNCHER:
		weapon_proxlauncher_fire( ent );
		break;
	case WP_CHAINGUN:
		Bullet_Fire( ent, CHAINGUN_SPREAD, MACHINEGUN_DAMAGE );
		break;
#endif
	default:
// FIXME		G_Error( "Bad ent->s.weapon" );
		break;
	}
}