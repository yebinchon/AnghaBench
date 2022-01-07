
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ validcount; int lightlevel; TYPE_2__* thinglist; } ;
typedef TYPE_1__ sector_t ;
struct TYPE_6__ {struct TYPE_6__* snext; } ;
typedef TYPE_2__ mobj_t ;


 int LIGHTLEVELS ;
 int LIGHTSEGSHIFT ;
 int R_ProjectSprite (TYPE_2__*) ;
 int extralight ;
 int * scalelight ;
 int spritelights ;
 scalar_t__ validcount ;

void R_AddSprites (sector_t* sec)
{
    mobj_t* thing;
    int lightnum;





    if (sec->validcount == validcount)
 return;


    sec->validcount = validcount;

    lightnum = (sec->lightlevel >> LIGHTSEGSHIFT)+extralight;

    if (lightnum < 0)
 spritelights = scalelight[0];
    else if (lightnum >= LIGHTLEVELS)
 spritelights = scalelight[LIGHTLEVELS-1];
    else
 spritelights = scalelight[lightnum];


    for (thing = sec->thinglist ; thing ; thing = thing->snext)
 R_ProjectSprite (thing);
}
