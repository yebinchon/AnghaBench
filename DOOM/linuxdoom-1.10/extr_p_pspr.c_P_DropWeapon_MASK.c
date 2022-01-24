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
struct TYPE_5__ {size_t readyweapon; } ;
typedef  TYPE_1__ player_t ;
struct TYPE_6__ {int /*<<< orphan*/  downstate; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ps_weapon ; 
 TYPE_2__* weaponinfo ; 

void FUNC1 (player_t* player)
{
    FUNC0 (player,
		  ps_weapon,
		  weaponinfo[player->readyweapon].downstate);
}