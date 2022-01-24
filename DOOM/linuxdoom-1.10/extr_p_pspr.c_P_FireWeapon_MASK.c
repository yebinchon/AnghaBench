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
typedef  int /*<<< orphan*/  statenum_t ;
struct TYPE_6__ {size_t readyweapon; int /*<<< orphan*/  mo; } ;
typedef  TYPE_1__ player_t ;
struct TYPE_7__ {int /*<<< orphan*/  atkstate; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_PLAY_ATK1 ; 
 int /*<<< orphan*/  ps_weapon ; 
 TYPE_2__* weaponinfo ; 

void FUNC4 (player_t* player)
{
    statenum_t	newstate;
	
    if (!FUNC0 (player))
	return;
	
    FUNC2 (player->mo, S_PLAY_ATK1);
    newstate = weaponinfo[player->readyweapon].atkstate;
    FUNC3 (player, ps_weapon, newstate);
    FUNC1 (player->mo, player->mo);
}