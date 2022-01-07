
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
struct TYPE_10__ {int maxtime; int mintime; int count; int minlight; int maxlight; TYPE_2__* sector; TYPE_7__ thinker; } ;
typedef TYPE_3__ lightflash_t ;
typedef scalar_t__ actionf_p1 ;


 int PU_LEVSPEC ;
 int P_AddThinker (TYPE_7__*) ;
 int P_FindMinSurroundingLight (TYPE_2__*,int ) ;
 int P_Random () ;
 scalar_t__ T_LightFlash ;
 TYPE_3__* Z_Malloc (int,int ,int ) ;

void P_SpawnLightFlash (sector_t* sector)
{
    lightflash_t* flash;


    sector->special = 0;

    flash = Z_Malloc ( sizeof(*flash), PU_LEVSPEC, 0);

    P_AddThinker (&flash->thinker);

    flash->thinker.function.acp1 = (actionf_p1) T_LightFlash;
    flash->sector = sector;
    flash->maxlight = sector->lightlevel;

    flash->minlight = P_FindMinSurroundingLight(sector,sector->lightlevel);
    flash->maxtime = 64;
    flash->mintime = 7;
    flash->count = (P_Random()&flash->maxtime)+1;
}
