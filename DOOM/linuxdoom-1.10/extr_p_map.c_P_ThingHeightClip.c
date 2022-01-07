
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ z; scalar_t__ floorz; scalar_t__ ceilingz; scalar_t__ height; int y; int x; } ;
typedef TYPE_1__ mobj_t ;
typedef int boolean ;


 int P_CheckPosition (TYPE_1__*,int ,int ) ;
 scalar_t__ tmceilingz ;
 scalar_t__ tmfloorz ;

boolean P_ThingHeightClip (mobj_t* thing)
{
    boolean onfloor;

    onfloor = (thing->z == thing->floorz);

    P_CheckPosition (thing, thing->x, thing->y);


    thing->floorz = tmfloorz;
    thing->ceilingz = tmceilingz;

    if (onfloor)
    {

 thing->z = thing->floorz;
    }
    else
    {

 if (thing->z+thing->height > thing->ceilingz)
     thing->z = thing->ceilingz - thing->height;
    }

    if (thing->ceilingz - thing->floorz < thing->height)
 return 0;

    return 1;
}
