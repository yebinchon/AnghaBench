#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int momz; int tics; } ;
typedef  TYPE_1__ mobj_t ;
typedef  int fixed_t ;

/* Variables and functions */
 int FRACUNIT ; 
 int /*<<< orphan*/  MT_BLOOD ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_BLOOD2 ; 
 int /*<<< orphan*/  S_BLOOD3 ; 

void
FUNC3
( fixed_t	x,
  fixed_t	y,
  fixed_t	z,
  int		damage )
{
    mobj_t*	th;
	
    z += ((FUNC0()-FUNC0())<<10);
    th = FUNC2 (x,y,z, MT_BLOOD);
    th->momz = FRACUNIT*2;
    th->tics -= FUNC0()&3;

    if (th->tics < 1)
	th->tics = 1;
		
    if (damage <= 12 && damage >= 9)
	FUNC1 (th,S_BLOOD2);
    else if (damage < 9)
	FUNC1 (th,S_BLOOD3);
}