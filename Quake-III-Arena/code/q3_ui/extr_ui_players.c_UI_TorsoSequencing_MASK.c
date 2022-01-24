#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int torsoAnim; scalar_t__ weapon; scalar_t__ currentWeapon; scalar_t__ torsoAnimationTimer; } ;
typedef  TYPE_1__ playerInfo_t ;

/* Variables and functions */
 int ANIM_TOGGLEBIT ; 
 int TORSO_ATTACK ; 
 int TORSO_ATTACK2 ; 
 int TORSO_DROP ; 
 int TORSO_GESTURE ; 
 int TORSO_RAISE ; 
 int /*<<< orphan*/  TORSO_STAND ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 void* UI_TIMER_WEAPON_SWITCH ; 

__attribute__((used)) static void FUNC3( playerInfo_t *pi ) {
	int		currentAnim;

	currentAnim = pi->torsoAnim & ~ANIM_TOGGLEBIT;

	if ( pi->weapon != pi->currentWeapon ) {
		if ( currentAnim != TORSO_DROP ) {
			pi->torsoAnimationTimer = UI_TIMER_WEAPON_SWITCH;
			FUNC0( pi, TORSO_DROP );
		}
	}

	if ( pi->torsoAnimationTimer > 0 ) {
		return;
	}

	if( currentAnim == TORSO_GESTURE ) {
		FUNC2( pi, TORSO_STAND );
		return;
	}

	if( currentAnim == TORSO_ATTACK || currentAnim == TORSO_ATTACK2 ) {
		FUNC2( pi, TORSO_STAND );
		return;
	}

	if ( currentAnim == TORSO_DROP ) {
		FUNC1( pi, pi->weapon );
		pi->torsoAnimationTimer = UI_TIMER_WEAPON_SWITCH;
		FUNC0( pi, TORSO_RAISE );
		return;
	}

	if ( currentAnim == TORSO_RAISE ) {
		FUNC2( pi, TORSO_STAND );
		return;
	}
}