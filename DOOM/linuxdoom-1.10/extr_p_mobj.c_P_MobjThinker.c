
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ acv; } ;
struct TYPE_11__ {TYPE_1__ function; } ;
struct TYPE_13__ {int flags; scalar_t__ z; scalar_t__ floorz; int tics; int movecount; TYPE_3__* state; TYPE_2__ thinker; scalar_t__ momz; scalar_t__ momy; scalar_t__ momx; } ;
typedef TYPE_4__ mobj_t ;
typedef scalar_t__ actionf_v ;
struct TYPE_12__ {int nextstate; } ;


 int MF_COUNTKILL ;
 int MF_SKULLFLY ;
 int P_NightmareRespawn (TYPE_4__*) ;
 int P_Random () ;
 int P_SetMobjState (TYPE_4__*,int ) ;
 int P_XYMovement (TYPE_4__*) ;
 int P_ZMovement (TYPE_4__*) ;
 int leveltime ;
 int respawnmonsters ;

void P_MobjThinker (mobj_t* mobj)
{

    if (mobj->momx
 || mobj->momy
 || (mobj->flags&MF_SKULLFLY) )
    {
 P_XYMovement (mobj);


 if (mobj->thinker.function.acv == (actionf_v) (-1))
     return;
    }
    if ( (mobj->z != mobj->floorz)
  || mobj->momz )
    {
 P_ZMovement (mobj);


 if (mobj->thinker.function.acv == (actionf_v) (-1))
     return;
    }




    if (mobj->tics != -1)
    {
 mobj->tics--;


 if (!mobj->tics)
     if (!P_SetMobjState (mobj, mobj->state->nextstate) )
  return;
    }
    else
    {

 if (! (mobj->flags & MF_COUNTKILL) )
     return;

 if (!respawnmonsters)
     return;

 mobj->movecount++;

 if (mobj->movecount < 12*35)
     return;

 if ( leveltime&31 )
     return;

 if (P_Random () > 4)
     return;

 P_NightmareRespawn (mobj);
    }

}
