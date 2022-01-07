
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {size_t type; int tics; TYPE_1__* info; int flags; scalar_t__ momz; scalar_t__ momy; scalar_t__ momx; } ;
typedef TYPE_2__ mobj_t ;
struct TYPE_9__ {int deathstate; } ;
struct TYPE_7__ {scalar_t__ deathsound; } ;


 int MF_MISSILE ;
 int P_Random () ;
 int P_SetMobjState (TYPE_2__*,int ) ;
 int S_StartSound (TYPE_2__*,scalar_t__) ;
 TYPE_3__* mobjinfo ;

void P_ExplodeMissile (mobj_t* mo)
{
    mo->momx = mo->momy = mo->momz = 0;

    P_SetMobjState (mo, mobjinfo[mo->type].deathstate);

    mo->tics -= P_Random()&3;

    if (mo->tics < 1)
 mo->tics = 1;

    mo->flags &= ~MF_MISSILE;

    if (mo->info->deathsound)
 S_StartSound (mo, mo->info->deathsound);
}
