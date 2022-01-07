
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {int flags; scalar_t__ radius; scalar_t__ z; scalar_t__ height; scalar_t__ type; struct TYPE_12__* target; TYPE_1__* info; scalar_t__ momz; scalar_t__ momy; scalar_t__ momx; scalar_t__ y; scalar_t__ x; } ;
typedef TYPE_2__ mobj_t ;
typedef scalar_t__ fixed_t ;
typedef int boolean ;
struct TYPE_11__ {int damage; int spawnstate; } ;


 int MF_MISSILE ;
 int MF_PICKUP ;
 int MF_SHOOTABLE ;
 int MF_SKULLFLY ;
 int MF_SOLID ;
 int MF_SPECIAL ;
 scalar_t__ MT_BRUISER ;
 scalar_t__ MT_KNIGHT ;
 scalar_t__ MT_PLAYER ;
 int P_DamageMobj (TYPE_2__*,TYPE_2__*,TYPE_2__*,int) ;
 int P_Random () ;
 int P_SetMobjState (TYPE_2__*,int ) ;
 int P_TouchSpecialThing (TYPE_2__*,TYPE_2__*) ;
 scalar_t__ abs (scalar_t__) ;
 int tmflags ;
 TYPE_2__* tmthing ;
 scalar_t__ tmx ;
 scalar_t__ tmy ;

boolean PIT_CheckThing (mobj_t* thing)
{
    fixed_t blockdist;
    boolean solid;
    int damage;

    if (!(thing->flags & (MF_SOLID|MF_SPECIAL|MF_SHOOTABLE) ))
 return 1;

    blockdist = thing->radius + tmthing->radius;

    if ( abs(thing->x - tmx) >= blockdist
  || abs(thing->y - tmy) >= blockdist )
    {

 return 1;
    }


    if (thing == tmthing)
 return 1;


    if (tmthing->flags & MF_SKULLFLY)
    {
 damage = ((P_Random()%8)+1)*tmthing->info->damage;

 P_DamageMobj (thing, tmthing, tmthing, damage);

 tmthing->flags &= ~MF_SKULLFLY;
 tmthing->momx = tmthing->momy = tmthing->momz = 0;

 P_SetMobjState (tmthing, tmthing->info->spawnstate);

 return 0;
    }



    if (tmthing->flags & MF_MISSILE)
    {

 if (tmthing->z > thing->z + thing->height)
     return 1;
 if (tmthing->z+tmthing->height < thing->z)
     return 1;

 if (tmthing->target && (
     tmthing->target->type == thing->type ||
     (tmthing->target->type == MT_KNIGHT && thing->type == MT_BRUISER)||
     (tmthing->target->type == MT_BRUISER && thing->type == MT_KNIGHT) ) )
 {

     if (thing == tmthing->target)
  return 1;

     if (thing->type != MT_PLAYER)
     {


  return 0;
     }
 }

 if (! (thing->flags & MF_SHOOTABLE) )
 {

     return !(thing->flags & MF_SOLID);
 }


 damage = ((P_Random()%8)+1)*tmthing->info->damage;
 P_DamageMobj (thing, tmthing, tmthing->target, damage);


 return 0;
    }


    if (thing->flags & MF_SPECIAL)
    {
 solid = thing->flags&MF_SOLID;
 if (tmflags&MF_PICKUP)
 {

     P_TouchSpecialThing (thing, tmthing);
 }
 return !solid;
    }

    return !(thing->flags & MF_SOLID);
}
