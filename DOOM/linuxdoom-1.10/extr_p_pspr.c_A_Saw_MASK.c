#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pspdef_t ;
struct TYPE_7__ {TYPE_3__* mo; } ;
typedef  TYPE_1__ player_t ;
typedef  int angle_t ;
struct TYPE_9__ {int angle; int /*<<< orphan*/  flags; int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
struct TYPE_8__ {int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;

/* Variables and functions */
 int ANG180 ; 
 int ANG90 ; 
 scalar_t__ MELEERANGE ; 
 int /*<<< orphan*/  MF_JUSTATTACKED ; 
 int FUNC0 (TYPE_3__*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int,scalar_t__,int,int) ; 
 int FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 TYPE_2__* linetarget ; 
 int /*<<< orphan*/  sfx_sawful ; 
 int /*<<< orphan*/  sfx_sawhit ; 

void
FUNC5
( player_t*	player,
  pspdef_t*	psp ) 
{
    angle_t	angle;
    int		damage;
    int		slope;

    damage = 2*(FUNC2 ()%10+1);
    angle = player->mo->angle;
    angle += (FUNC2()-FUNC2())<<18;
    
    // use meleerange + 1 se the puff doesn't skip the flash
    slope = FUNC0 (player->mo, angle, MELEERANGE+1);
    FUNC1 (player->mo, angle, MELEERANGE+1, slope, damage);

    if (!linetarget)
    {
	FUNC4 (player->mo, sfx_sawful);
	return;
    }
    FUNC4 (player->mo, sfx_sawhit);
	
    // turn to face target
    angle = FUNC3 (player->mo->x, player->mo->y,
			     linetarget->x, linetarget->y);
    if (angle - player->mo->angle > ANG180)
    {
	if (angle - player->mo->angle < -ANG90/20)
	    player->mo->angle = angle + ANG90/21;
	else
	    player->mo->angle -= ANG90/20;
    }
    else
    {
	if (angle - player->mo->angle > ANG90/20)
	    player->mo->angle = angle - ANG90/21;
	else
	    player->mo->angle += ANG90/20;
    }
    player->mo->flags |= MF_JUSTATTACKED;
}