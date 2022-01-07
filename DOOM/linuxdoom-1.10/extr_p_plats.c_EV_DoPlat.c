
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_13__ ;


struct TYPE_19__ {int soundorg; void* floorheight; int floorpic; int special; TYPE_4__* specialdata; } ;
typedef TYPE_3__ sector_t ;
typedef int plattype_e ;
struct TYPE_17__ {scalar_t__ acp1; } ;
struct TYPE_16__ {TYPE_1__ function; } ;
struct TYPE_20__ {int type; int crush; int speed; int wait; int status; void* high; void* low; int tag; TYPE_13__ thinker; TYPE_3__* sector; } ;
typedef TYPE_4__ plat_t ;
typedef int mobj_t ;
struct TYPE_21__ {size_t* sidenum; int tag; } ;
typedef TYPE_5__ line_t ;
typedef scalar_t__ actionf_p1 ;
struct TYPE_22__ {TYPE_2__* sector; } ;
struct TYPE_18__ {int floorpic; } ;


 int FRACUNIT ;
 int PLATSPEED ;
 int PLATWAIT ;
 int PU_LEVSPEC ;
 int P_ActivateInStasis (int ) ;
 int P_AddActivePlat (TYPE_4__*) ;
 int P_AddThinker (TYPE_13__*) ;
 void* P_FindHighestFloorSurrounding (TYPE_3__*) ;
 void* P_FindLowestFloorSurrounding (TYPE_3__*) ;
 void* P_FindNextHighestFloor (TYPE_3__*,void*) ;
 int P_FindSectorFromLineTag (TYPE_5__*,int) ;
 int P_Random () ;
 int S_StartSound (int *,int ) ;
 scalar_t__ T_PlatRaise ;
 TYPE_4__* Z_Malloc (int,int ,int ) ;

 void* down ;




 TYPE_3__* sectors ;
 int sfx_pstart ;
 int sfx_stnmov ;
 TYPE_6__* sides ;
 void* up ;

int
EV_DoPlat
( line_t* line,
  plattype_e type,
  int amount )
{
    plat_t* plat;
    int secnum;
    int rtn;
    sector_t* sec;

    secnum = -1;
    rtn = 0;



    switch(type)
    {
      case 130:
 P_ActivateInStasis(line->tag);
 break;

      default:
 break;
    }

    while ((secnum = P_FindSectorFromLineTag(line,secnum)) >= 0)
    {
 sec = &sectors[secnum];

 if (sec->specialdata)
     continue;


 rtn = 1;
 plat = Z_Malloc( sizeof(*plat), PU_LEVSPEC, 0);
 P_AddThinker(&plat->thinker);

 plat->type = type;
 plat->sector = sec;
 plat->sector->specialdata = plat;
 plat->thinker.function.acp1 = (actionf_p1) T_PlatRaise;
 plat->crush = 0;
 plat->tag = line->tag;

 switch(type)
 {
   case 128:
     plat->speed = PLATSPEED/2;
     sec->floorpic = sides[line->sidenum[0]].sector->floorpic;
     plat->high = P_FindNextHighestFloor(sec,sec->floorheight);
     plat->wait = 0;
     plat->status = up;

     sec->special = 0;

     S_StartSound((mobj_t *)&sec->soundorg,sfx_stnmov);
     break;

   case 129:
     plat->speed = PLATSPEED/2;
     sec->floorpic = sides[line->sidenum[0]].sector->floorpic;
     plat->high = sec->floorheight + amount*FRACUNIT;
     plat->wait = 0;
     plat->status = up;

     S_StartSound((mobj_t *)&sec->soundorg,sfx_stnmov);
     break;

   case 131:
     plat->speed = PLATSPEED * 4;
     plat->low = P_FindLowestFloorSurrounding(sec);

     if (plat->low > sec->floorheight)
  plat->low = sec->floorheight;

     plat->high = sec->floorheight;
     plat->wait = 35*PLATWAIT;
     plat->status = down;
     S_StartSound((mobj_t *)&sec->soundorg,sfx_pstart);
     break;

   case 132:
     plat->speed = PLATSPEED * 8;
     plat->low = P_FindLowestFloorSurrounding(sec);

     if (plat->low > sec->floorheight)
  plat->low = sec->floorheight;

     plat->high = sec->floorheight;
     plat->wait = 35*PLATWAIT;
     plat->status = down;
     S_StartSound((mobj_t *)&sec->soundorg,sfx_pstart);
     break;

   case 130:
     plat->speed = PLATSPEED;
     plat->low = P_FindLowestFloorSurrounding(sec);

     if (plat->low > sec->floorheight)
  plat->low = sec->floorheight;

     plat->high = P_FindHighestFloorSurrounding(sec);

     if (plat->high < sec->floorheight)
  plat->high = sec->floorheight;

     plat->wait = 35*PLATWAIT;
     plat->status = P_Random()&1;

     S_StartSound((mobj_t *)&sec->soundorg,sfx_pstart);
     break;
 }
 P_AddActivePlat(plat);
    }
    return rtn;
}
