
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int flags; scalar_t__ radius; int player; scalar_t__ y; scalar_t__ x; } ;
typedef TYPE_1__ mobj_t ;
typedef scalar_t__ fixed_t ;
typedef int boolean ;


 int MF_SHOOTABLE ;
 int P_DamageMobj (TYPE_1__*,TYPE_1__*,TYPE_1__*,int) ;
 scalar_t__ abs (scalar_t__) ;
 int gamemap ;
 TYPE_1__* tmthing ;
 scalar_t__ tmx ;
 scalar_t__ tmy ;

boolean PIT_StompThing (mobj_t* thing)
{
    fixed_t blockdist;

    if (!(thing->flags & MF_SHOOTABLE) )
 return 1;

    blockdist = thing->radius + tmthing->radius;

    if ( abs(thing->x - tmx) >= blockdist
  || abs(thing->y - tmy) >= blockdist )
    {

 return 1;
    }


    if (thing == tmthing)
 return 1;


    if ( !tmthing->player && gamemap != 30)
 return 0;

    P_DamageMobj (thing, tmthing, tmthing, 10000);

    return 1;
}
