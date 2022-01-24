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
struct TYPE_8__ {size_t type; int tics; TYPE_1__* info; int /*<<< orphan*/  flags; scalar_t__ momz; scalar_t__ momy; scalar_t__ momx; } ;
typedef  TYPE_2__ mobj_t ;
struct TYPE_9__ {int /*<<< orphan*/  deathstate; } ;
struct TYPE_7__ {scalar_t__ deathsound; } ;

/* Variables and functions */
 int /*<<< orphan*/  MF_MISSILE ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,scalar_t__) ; 
 TYPE_3__* mobjinfo ; 

void FUNC3 (mobj_t* mo)
{
    mo->momx = mo->momy = mo->momz = 0;

    FUNC1 (mo, mobjinfo[mo->type].deathstate);

    mo->tics -= FUNC0()&3;

    if (mo->tics < 1)
	mo->tics = 1;

    mo->flags &= ~MF_MISSILE;

    if (mo->info->deathsound)
	FUNC2 (mo, mo->info->deathsound);
}