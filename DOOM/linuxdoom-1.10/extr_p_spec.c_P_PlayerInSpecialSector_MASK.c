#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ floorheight; int special; } ;
typedef  TYPE_2__ sector_t ;
struct TYPE_8__ {int health; TYPE_5__* mo; int /*<<< orphan*/  cheats; int /*<<< orphan*/  secretcount; int /*<<< orphan*/ * powers; } ;
typedef  TYPE_3__ player_t ;
struct TYPE_9__ {scalar_t__ z; TYPE_1__* subsector; } ;
struct TYPE_6__ {TYPE_2__* sector; } ;

/* Variables and functions */
 int /*<<< orphan*/  CF_GODMODE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC3 () ; 
 int leveltime ; 
 size_t pw_ironfeet ; 

void FUNC4 (player_t* player)
{
    sector_t*	sector;
	
    sector = player->mo->subsector->sector;

    // Falling, not all the way down yet?
    if (player->mo->z != sector->floorheight)
	return;	

    // Has hitten ground.
    switch (sector->special)
    {
      case 5:
	// HELLSLIME DAMAGE
	if (!player->powers[pw_ironfeet])
	    if (!(leveltime&0x1f))
		FUNC2 (player->mo, NULL, NULL, 10);
	break;
	
      case 7:
	// NUKAGE DAMAGE
	if (!player->powers[pw_ironfeet])
	    if (!(leveltime&0x1f))
		FUNC2 (player->mo, NULL, NULL, 5);
	break;
	
      case 16:
	// SUPER HELLSLIME DAMAGE
      case 4:
	// STROBE HURT
	if (!player->powers[pw_ironfeet]
	    || (FUNC3()<5) )
	{
	    if (!(leveltime&0x1f))
		FUNC2 (player->mo, NULL, NULL, 20);
	}
	break;
			
      case 9:
	// SECRET SECTOR
	player->secretcount++;
	sector->special = 0;
	break;
			
      case 11:
	// EXIT SUPER DAMAGE! (for E1M8 finale)
	player->cheats &= ~CF_GODMODE;

	if (!(leveltime&0x1f))
	    FUNC2 (player->mo, NULL, NULL, 20);

	if (player->health <= 10)
	    FUNC0();
	break;
			
      default:
	FUNC1 ("P_PlayerInSpecialSector: "
		 "unknown special %i",
		 sector->special);
	break;
    };
}