#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int* vec3_t ;
struct TYPE_8__ {int /*<<< orphan*/  integer; } ;
struct TYPE_7__ {int /*<<< orphan*/  integer; } ;
struct TYPE_5__ {int /*<<< orphan*/  gibLeg; int /*<<< orphan*/  gibIntestine; int /*<<< orphan*/  gibForearm; int /*<<< orphan*/  gibFoot; int /*<<< orphan*/  gibFist; int /*<<< orphan*/  gibChest; int /*<<< orphan*/  gibArm; int /*<<< orphan*/  gibAbdomen; int /*<<< orphan*/  gibBrain; int /*<<< orphan*/  gibSkull; } ;
struct TYPE_6__ {TYPE_1__ media; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,int*,int /*<<< orphan*/ ) ; 
 int GIB_JUMP ; 
 int GIB_VELOCITY ; 
 int /*<<< orphan*/  FUNC1 (int*,int*) ; 
 TYPE_4__ cg_blood ; 
 TYPE_3__ cg_gibs ; 
 TYPE_2__ cgs ; 
 int FUNC2 () ; 
 int FUNC3 () ; 

void FUNC4( vec3_t playerOrigin ) {
	vec3_t	origin, velocity;

	if ( !cg_blood.integer ) {
		return;
	}

	FUNC1( playerOrigin, origin );
	velocity[0] = FUNC2()*GIB_VELOCITY;
	velocity[1] = FUNC2()*GIB_VELOCITY;
	velocity[2] = GIB_JUMP + FUNC2()*GIB_VELOCITY;
	if ( FUNC3() & 1 ) {
		FUNC0( origin, velocity, cgs.media.gibSkull );
	} else {
		FUNC0( origin, velocity, cgs.media.gibBrain );
	}

	// allow gibs to be turned off for speed
	if ( !cg_gibs.integer ) {
		return;
	}

	FUNC1( playerOrigin, origin );
	velocity[0] = FUNC2()*GIB_VELOCITY;
	velocity[1] = FUNC2()*GIB_VELOCITY;
	velocity[2] = GIB_JUMP + FUNC2()*GIB_VELOCITY;
	FUNC0( origin, velocity, cgs.media.gibAbdomen );

	FUNC1( playerOrigin, origin );
	velocity[0] = FUNC2()*GIB_VELOCITY;
	velocity[1] = FUNC2()*GIB_VELOCITY;
	velocity[2] = GIB_JUMP + FUNC2()*GIB_VELOCITY;
	FUNC0( origin, velocity, cgs.media.gibArm );

	FUNC1( playerOrigin, origin );
	velocity[0] = FUNC2()*GIB_VELOCITY;
	velocity[1] = FUNC2()*GIB_VELOCITY;
	velocity[2] = GIB_JUMP + FUNC2()*GIB_VELOCITY;
	FUNC0( origin, velocity, cgs.media.gibChest );

	FUNC1( playerOrigin, origin );
	velocity[0] = FUNC2()*GIB_VELOCITY;
	velocity[1] = FUNC2()*GIB_VELOCITY;
	velocity[2] = GIB_JUMP + FUNC2()*GIB_VELOCITY;
	FUNC0( origin, velocity, cgs.media.gibFist );

	FUNC1( playerOrigin, origin );
	velocity[0] = FUNC2()*GIB_VELOCITY;
	velocity[1] = FUNC2()*GIB_VELOCITY;
	velocity[2] = GIB_JUMP + FUNC2()*GIB_VELOCITY;
	FUNC0( origin, velocity, cgs.media.gibFoot );

	FUNC1( playerOrigin, origin );
	velocity[0] = FUNC2()*GIB_VELOCITY;
	velocity[1] = FUNC2()*GIB_VELOCITY;
	velocity[2] = GIB_JUMP + FUNC2()*GIB_VELOCITY;
	FUNC0( origin, velocity, cgs.media.gibForearm );

	FUNC1( playerOrigin, origin );
	velocity[0] = FUNC2()*GIB_VELOCITY;
	velocity[1] = FUNC2()*GIB_VELOCITY;
	velocity[2] = GIB_JUMP + FUNC2()*GIB_VELOCITY;
	FUNC0( origin, velocity, cgs.media.gibIntestine );

	FUNC1( playerOrigin, origin );
	velocity[0] = FUNC2()*GIB_VELOCITY;
	velocity[1] = FUNC2()*GIB_VELOCITY;
	velocity[2] = GIB_JUMP + FUNC2()*GIB_VELOCITY;
	FUNC0( origin, velocity, cgs.media.gibLeg );

	FUNC1( playerOrigin, origin );
	velocity[0] = FUNC2()*GIB_VELOCITY;
	velocity[1] = FUNC2()*GIB_VELOCITY;
	velocity[2] = GIB_JUMP + FUNC2()*GIB_VELOCITY;
	FUNC0( origin, velocity, cgs.media.gibLeg );
}