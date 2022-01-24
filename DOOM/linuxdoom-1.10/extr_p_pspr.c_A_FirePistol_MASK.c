#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pspdef_t ;
struct TYPE_5__ {size_t readyweapon; int /*<<< orphan*/  refire; int /*<<< orphan*/  mo; int /*<<< orphan*/ * ammo; } ;
typedef  TYPE_1__ player_t ;
struct TYPE_6__ {size_t ammo; int /*<<< orphan*/  flashstate; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_PLAY_ATK2 ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ps_flash ; 
 int /*<<< orphan*/  sfx_pistol ; 
 TYPE_2__* weaponinfo ; 

void
FUNC5
( player_t*	player,
  pspdef_t*	psp ) 
{
    FUNC4 (player->mo, sfx_pistol);

    FUNC2 (player->mo, S_PLAY_ATK2);
    player->ammo[weaponinfo[player->readyweapon].ammo]--;

    FUNC3 (player,
		  ps_flash,
		  weaponinfo[player->readyweapon].flashstate);

    FUNC0 (player->mo);
    FUNC1 (player->mo, !player->refire);
}