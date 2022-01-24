#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int x; int y; int momz; int tics; } ;
typedef  TYPE_1__ mobj_t ;

/* Variables and functions */
 int FRACUNIT ; 
 int /*<<< orphan*/  MT_ROCKET ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_BRAINEXPLODE1 ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sfx_bosdth ; 

void FUNC4 (mobj_t*	mo)
{
    int		x;
    int		y;
    int		z;
    mobj_t*	th;
	
    for (x=mo->x - 196*FRACUNIT ; x< mo->x + 320*FRACUNIT ; x+= FRACUNIT*8)
    {
	y = mo->y - 320*FRACUNIT;
	z = 128 + FUNC0()*2*FRACUNIT;
	th = FUNC2 (x,y,z, MT_ROCKET);
	th->momz = FUNC0()*512;

	FUNC1 (th, S_BRAINEXPLODE1);

	th->tics -= FUNC0()&7;
	if (th->tics < 1)
	    th->tics = 1;
    }
	
    FUNC3 (NULL,sfx_bosdth);
}