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
struct TYPE_6__ {int /*<<< orphan*/  readyweapon; int /*<<< orphan*/  pendingweapon; TYPE_1__* psprites; } ;
typedef  TYPE_2__ player_t ;
struct TYPE_5__ {int /*<<< orphan*/ * state; } ;

/* Variables and functions */
 int NUMPSPRITES ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 

void FUNC1 (player_t* player) 
{
    int	i;
	
    // remove all psprites
    for (i=0 ; i<NUMPSPRITES ; i++)
	player->psprites[i].state = NULL;
		
    // spawn the gun
    player->pendingweapon = player->readyweapon;
    FUNC0 (player);
}