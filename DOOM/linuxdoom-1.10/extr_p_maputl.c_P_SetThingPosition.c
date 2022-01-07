
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* sector; } ;
typedef TYPE_1__ subsector_t ;
struct TYPE_8__ {TYPE_3__* thinglist; } ;
typedef TYPE_2__ sector_t ;
struct TYPE_9__ {int x; int y; int flags; struct TYPE_9__* bprev; struct TYPE_9__* bnext; struct TYPE_9__* sprev; struct TYPE_9__* snext; TYPE_1__* subsector; } ;
typedef TYPE_3__ mobj_t ;


 int MAPBLOCKSHIFT ;
 int MF_NOBLOCKMAP ;
 int MF_NOSECTOR ;
 TYPE_1__* R_PointInSubsector (int,int) ;
 TYPE_3__** blocklinks ;
 int bmapheight ;
 int bmaporgx ;
 int bmaporgy ;
 int bmapwidth ;

void
P_SetThingPosition (mobj_t* thing)
{
    subsector_t* ss;
    sector_t* sec;
    int blockx;
    int blocky;
    mobj_t** link;



    ss = R_PointInSubsector (thing->x,thing->y);
    thing->subsector = ss;

    if ( ! (thing->flags & MF_NOSECTOR) )
    {

 sec = ss->sector;

 thing->sprev = ((void*)0);
 thing->snext = sec->thinglist;

 if (sec->thinglist)
     sec->thinglist->sprev = thing;

 sec->thinglist = thing;
    }



    if ( ! (thing->flags & MF_NOBLOCKMAP) )
    {

 blockx = (thing->x - bmaporgx)>>MAPBLOCKSHIFT;
 blocky = (thing->y - bmaporgy)>>MAPBLOCKSHIFT;

 if (blockx>=0
     && blockx < bmapwidth
     && blocky>=0
     && blocky < bmapheight)
 {
     link = &blocklinks[blocky*bmapwidth+blockx];
     thing->bprev = ((void*)0);
     thing->bnext = *link;
     if (*link)
  (*link)->bprev = thing;

     *link = thing;
 }
 else
 {

     thing->bnext = thing->bprev = ((void*)0);
 }
    }
}
