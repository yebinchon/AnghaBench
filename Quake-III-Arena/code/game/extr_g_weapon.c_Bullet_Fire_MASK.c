#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_7__ ;
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vec3_t ;
struct TYPE_17__ {int /*<<< orphan*/  normal; } ;
struct TYPE_20__ {int surfaceFlags; size_t entityNum; int /*<<< orphan*/  endpos; TYPE_1__ plane; } ;
typedef  TYPE_4__ trace_t ;
struct TYPE_19__ {int number; int eventParm; int otherEntityNum; } ;
struct TYPE_21__ {TYPE_3__ s; TYPE_2__* client; scalar_t__ takedamage; } ;
typedef  TYPE_5__ gentity_t ;
struct TYPE_22__ {scalar_t__ time; } ;
struct TYPE_18__ {scalar_t__ invulnerabilityTime; int /*<<< orphan*/  accuracy_hits; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int ENTITYNUM_NONE ; 
 int /*<<< orphan*/  EV_BULLET_HIT_FLESH ; 
 int /*<<< orphan*/  EV_BULLET_HIT_WALL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,TYPE_5__*,TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (TYPE_5__*,TYPE_5__*) ; 
 int /*<<< orphan*/  MASK_SHOT ; 
 int /*<<< orphan*/  MOD_MACHINEGUN ; 
 float M_PI ; 
 int SURF_NOIMPACT ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,float,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 float FUNC9 (float) ; 
 float FUNC10 () ; 
 int /*<<< orphan*/  forward ; 
 TYPE_5__* g_entities ; 
 TYPE_7__ level ; 
 int /*<<< orphan*/  muzzle ; 
 float FUNC11 () ; 
 int /*<<< orphan*/  right ; 
 int s_quadFactor ; 
 float FUNC12 (float) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  up ; 

void FUNC14 (gentity_t *ent, float spread, int damage ) {
	trace_t		tr;
	vec3_t		end;
#ifdef MISSIONPACK
	vec3_t		impactpoint, bouncedir;
#endif
	float		r;
	float		u;
	gentity_t	*tent;
	gentity_t	*traceEnt;
	int			i, passent;

	damage *= s_quadFactor;

	r = FUNC11() * M_PI * 2.0f;
	u = FUNC12(r) * FUNC10() * spread * 16;
	r = FUNC9(r) * FUNC10() * spread * 16;
	FUNC8 (muzzle, 8192*16, forward, end);
	FUNC8 (end, r, right, end);
	FUNC8 (end, u, up, end);

	passent = ent->s.number;
	for (i = 0; i < 10; i++) {

		FUNC13 (&tr, muzzle, NULL, NULL, end, passent, MASK_SHOT);
		if ( tr.surfaceFlags & SURF_NOIMPACT ) {
			return;
		}

		traceEnt = &g_entities[ tr.entityNum ];

		// snap the endpos to integers, but nudged towards the line
		FUNC6( tr.endpos, muzzle );

		// send bullet impact
		if ( traceEnt->takedamage && traceEnt->client ) {
			tent = FUNC4( tr.endpos, EV_BULLET_HIT_FLESH );
			tent->s.eventParm = traceEnt->s.number;
			if( FUNC5( traceEnt, ent ) ) {
				ent->client->accuracy_hits++;
			}
		} else {
			tent = FUNC4( tr.endpos, EV_BULLET_HIT_WALL );
			tent->s.eventParm = FUNC0( tr.plane.normal );
		}
		tent->s.otherEntityNum = ent->s.number;

		if ( traceEnt->takedamage) {
#ifdef MISSIONPACK
			if ( traceEnt->client && traceEnt->client->invulnerabilityTime > level.time ) {
				if (G_InvulnerabilityEffect( traceEnt, forward, tr.endpos, impactpoint, bouncedir )) {
					G_BounceProjectile( muzzle, impactpoint, bouncedir, end );
					VectorCopy( impactpoint, muzzle );
					// the player can hit him/herself with the bounced rail
					passent = ENTITYNUM_NONE;
				}
				else {
					VectorCopy( tr.endpos, muzzle );
					passent = traceEnt->s.number;
				}
				continue;
			}
			else {
#endif
				FUNC2( traceEnt, ent, ent, forward, tr.endpos,
					damage, 0, MOD_MACHINEGUN);
#ifdef MISSIONPACK
			}
#endif
		}
		break;
	}
}