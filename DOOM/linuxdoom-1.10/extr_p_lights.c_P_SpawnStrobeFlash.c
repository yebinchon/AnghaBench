
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_7__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ acp1; } ;
struct TYPE_11__ {TYPE_1__ function; } ;
struct TYPE_9__ {int darktime; scalar_t__ maxlight; scalar_t__ minlight; int count; TYPE_7__ thinker; int brighttime; TYPE_3__* sector; } ;
typedef TYPE_2__ strobe_t ;
struct TYPE_10__ {scalar_t__ lightlevel; scalar_t__ special; } ;
typedef TYPE_3__ sector_t ;
typedef scalar_t__ actionf_p1 ;


 int PU_LEVSPEC ;
 int P_AddThinker (TYPE_7__*) ;
 scalar_t__ P_FindMinSurroundingLight (TYPE_3__*,scalar_t__) ;
 int P_Random () ;
 int STROBEBRIGHT ;
 scalar_t__ T_StrobeFlash ;
 TYPE_2__* Z_Malloc (int,int ,int ) ;

void
P_SpawnStrobeFlash
( sector_t* sector,
  int fastOrSlow,
  int inSync )
{
    strobe_t* flash;

    flash = Z_Malloc ( sizeof(*flash), PU_LEVSPEC, 0);

    P_AddThinker (&flash->thinker);

    flash->sector = sector;
    flash->darktime = fastOrSlow;
    flash->brighttime = STROBEBRIGHT;
    flash->thinker.function.acp1 = (actionf_p1) T_StrobeFlash;
    flash->maxlight = sector->lightlevel;
    flash->minlight = P_FindMinSurroundingLight(sector, sector->lightlevel);

    if (flash->minlight == flash->maxlight)
 flash->minlight = 0;


    sector->special = 0;

    if (!inSync)
 flash->count = (P_Random()&7)+1;
    else
 flash->count = 1;
}
