#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int angle; TYPE_1__* info; void* momy; void* momx; int /*<<< orphan*/  target; } ;
typedef  TYPE_2__ mobj_t ;
struct TYPE_7__ {int /*<<< orphan*/  speed; } ;

/* Variables and functions */
 int ANGLETOFINESHIFT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int FATSPREAD ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MT_FATSHOT ; 
 TYPE_2__* FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * finecosine ; 
 int /*<<< orphan*/ * finesine ; 

void FUNC3 (mobj_t* actor)
{
    mobj_t*	mo;
    int		an;

    FUNC0 (actor);
    // Now here choose opposite deviation.
    actor->angle -= FATSPREAD;
    FUNC2 (actor, actor->target, MT_FATSHOT);

    mo = FUNC2 (actor, actor->target, MT_FATSHOT);
    mo->angle -= FATSPREAD*2;
    an = mo->angle >> ANGLETOFINESHIFT;
    mo->momx = FUNC1 (mo->info->speed, finecosine[an]);
    mo->momy = FUNC1 (mo->info->speed, finesine[an]);
}