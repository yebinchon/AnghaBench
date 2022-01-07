
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ health; int flags; int height; int momx; int momy; scalar_t__ z; int y; int x; scalar_t__ radius; } ;
typedef TYPE_1__ mobj_t ;
typedef int boolean ;


 int MF_DROPPED ;
 int MF_SHOOTABLE ;
 int MF_SOLID ;
 int MT_BLOOD ;
 int P_DamageMobj (TYPE_1__*,int *,int *,int) ;
 int P_Random () ;
 int P_RemoveMobj (TYPE_1__*) ;
 int P_SetMobjState (TYPE_1__*,int ) ;
 TYPE_1__* P_SpawnMobj (int ,int ,scalar_t__,int ) ;
 scalar_t__ P_ThingHeightClip (TYPE_1__*) ;
 int S_GIBS ;
 scalar_t__ crushchange ;
 int leveltime ;
 int nofit ;

boolean PIT_ChangeSector (mobj_t* thing)
{
    mobj_t* mo;

    if (P_ThingHeightClip (thing))
    {

 return 1;
    }



    if (thing->health <= 0)
    {
 P_SetMobjState (thing, S_GIBS);

 thing->flags &= ~MF_SOLID;
 thing->height = 0;
 thing->radius = 0;


 return 1;
    }


    if (thing->flags & MF_DROPPED)
    {
 P_RemoveMobj (thing);


 return 1;
    }

    if (! (thing->flags & MF_SHOOTABLE) )
    {

 return 1;
    }

    nofit = 1;

    if (crushchange && !(leveltime&3) )
    {
 P_DamageMobj(thing,((void*)0),((void*)0),10);


 mo = P_SpawnMobj (thing->x,
     thing->y,
     thing->z + thing->height/2, MT_BLOOD);

 mo->momx = (P_Random() - P_Random ())<<12;
 mo->momy = (P_Random() - P_Random ())<<12;
    }


    return 1;
}
