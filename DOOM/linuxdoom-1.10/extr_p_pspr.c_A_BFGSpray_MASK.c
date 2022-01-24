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
struct TYPE_5__ {int angle; int /*<<< orphan*/  target; } ;
typedef  TYPE_1__ mobj_t ;
typedef  int angle_t ;
struct TYPE_6__ {int height; scalar_t__ z; int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;

/* Variables and functions */
 int ANG90 ; 
 int FRACUNIT ; 
 int /*<<< orphan*/  MT_EXTRABFG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 TYPE_2__* linetarget ; 

void FUNC4 (mobj_t* mo) 
{
    int			i;
    int			j;
    int			damage;
    angle_t		an;
	
    // offset angles from its attack angle
    for (i=0 ; i<40 ; i++)
    {
	an = mo->angle - ANG90/2 + ANG90/40*i;

	// mo->target is the originator (player)
	//  of the missile
	FUNC0 (mo->target, an, 16*64*FRACUNIT);

	if (!linetarget)
	    continue;

	FUNC3 (linetarget->x,
		     linetarget->y,
		     linetarget->z + (linetarget->height>>2),
		     MT_EXTRABFG);
	
	damage = 0;
	for (j=0;j<15;j++)
	    damage += (FUNC2()&7) + 1;

	FUNC1 (linetarget, mo->target,mo->target, damage);
    }
}