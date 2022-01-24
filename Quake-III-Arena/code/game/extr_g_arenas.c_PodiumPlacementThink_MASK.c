#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_8__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/ * vec3_t ;
struct TYPE_13__ {int /*<<< orphan*/ * currentOrigin; } ;
struct TYPE_11__ {scalar_t__* trBase; } ;
struct TYPE_12__ {TYPE_1__ apos; } ;
struct TYPE_14__ {TYPE_3__ r; TYPE_2__ s; scalar_t__ nextthink; } ;
typedef  TYPE_4__ gentity_t ;
struct TYPE_15__ {int /*<<< orphan*/ * intermission_origin; scalar_t__* intermission_angle; scalar_t__ time; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 size_t PITCH ; 
 size_t ROLL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_8__ level ; 
 scalar_t__* offsetFirst ; 
 scalar_t__* offsetSecond ; 
 scalar_t__* offsetThird ; 
 TYPE_4__* podium1 ; 
 TYPE_4__* podium2 ; 
 TYPE_4__* podium3 ; 
 scalar_t__ FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__*) ; 

__attribute__((used)) static void FUNC6( gentity_t *podium ) {
	vec3_t		vec;
	vec3_t		origin;
	vec3_t		f, r, u;

	podium->nextthink = level.time + 100;

	FUNC0( level.intermission_angle, vec, NULL, NULL );
	FUNC2( level.intermission_origin, FUNC4( "g_podiumDist" ), vec, origin );
	origin[2] -= FUNC4( "g_podiumDrop" );
	FUNC1( podium, origin );

	if( podium1 ) {
		FUNC3( level.intermission_origin, podium->r.currentOrigin, vec );
		FUNC5( vec, podium1->s.apos.trBase );
		podium1->s.apos.trBase[PITCH] = 0;
		podium1->s.apos.trBase[ROLL] = 0;

		FUNC0( podium1->s.apos.trBase, f, r, u );
		FUNC2( podium->r.currentOrigin, offsetFirst[0], f, vec );
		FUNC2( vec, offsetFirst[1], r, vec );
		FUNC2( vec, offsetFirst[2], u, vec );

		FUNC1( podium1, vec );
	}

	if( podium2 ) {
		FUNC3( level.intermission_origin, podium->r.currentOrigin, vec );
		FUNC5( vec, podium2->s.apos.trBase );
		podium2->s.apos.trBase[PITCH] = 0;
		podium2->s.apos.trBase[ROLL] = 0;

		FUNC0( podium2->s.apos.trBase, f, r, u );
		FUNC2( podium->r.currentOrigin, offsetSecond[0], f, vec );
		FUNC2( vec, offsetSecond[1], r, vec );
		FUNC2( vec, offsetSecond[2], u, vec );

		FUNC1( podium2, vec );
	}

	if( podium3 ) {
		FUNC3( level.intermission_origin, podium->r.currentOrigin, vec );
		FUNC5( vec, podium3->s.apos.trBase );
		podium3->s.apos.trBase[PITCH] = 0;
		podium3->s.apos.trBase[ROLL] = 0;

		FUNC0( podium3->s.apos.trBase, f, r, u );
		FUNC2( podium->r.currentOrigin, offsetThird[0], f, vec );
		FUNC2( vec, offsetThird[1], r, vec );
		FUNC2( vec, offsetThird[2], u, vec );

		FUNC1( podium3, vec );
	}
}