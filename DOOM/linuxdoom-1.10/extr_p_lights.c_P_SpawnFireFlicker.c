
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_7__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int lightlevel; scalar_t__ special; } ;
typedef TYPE_2__ sector_t ;
struct TYPE_8__ {scalar_t__ acp1; } ;
struct TYPE_11__ {TYPE_1__ function; } ;
struct TYPE_10__ {int count; scalar_t__ minlight; int maxlight; TYPE_2__* sector; TYPE_7__ thinker; } ;
typedef TYPE_3__ fireflicker_t ;
typedef scalar_t__ actionf_p1 ;


 int PU_LEVSPEC ;
 int P_AddThinker (TYPE_7__*) ;
 scalar_t__ P_FindMinSurroundingLight (TYPE_2__*,int ) ;
 scalar_t__ T_FireFlicker ;
 TYPE_3__* Z_Malloc (int,int ,int ) ;

void P_SpawnFireFlicker (sector_t* sector)
{
    fireflicker_t* flick;



    sector->special = 0;

    flick = Z_Malloc ( sizeof(*flick), PU_LEVSPEC, 0);

    P_AddThinker (&flick->thinker);

    flick->thinker.function.acp1 = (actionf_p1) T_FireFlicker;
    flick->sector = sector;
    flick->maxlight = sector->lightlevel;
    flick->minlight = P_FindMinSurroundingLight(sector,sector->lightlevel)+16;
    flick->count = 4;
}
