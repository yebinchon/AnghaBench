
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
struct TYPE_9__ {int type; int speed; int topheight; int direction; TYPE_3__* sector; int topwait; TYPE_7__ thinker; } ;
typedef TYPE_2__ vldoor_t ;
typedef int vldoor_e ;
struct TYPE_10__ {int ceilingheight; int soundorg; TYPE_2__* specialdata; } ;
typedef TYPE_3__ sector_t ;
typedef int mobj_t ;
typedef int line_t ;
typedef scalar_t__ actionf_p1 ;


 int FRACUNIT ;
 int PU_LEVSPEC ;
 int P_AddThinker (TYPE_7__*) ;
 void* P_FindLowestCeilingSurrounding (TYPE_3__*) ;
 int P_FindSectorFromLineTag (int *,int) ;
 int S_StartSound (int *,int ) ;
 scalar_t__ T_VerticalDoor ;
 int VDOORSPEED ;
 int VDOORWAIT ;
 TYPE_2__* Z_Malloc (int,int ,int ) ;







 TYPE_3__* sectors ;
 int sfx_bdcls ;
 int sfx_bdopn ;
 int sfx_dorcls ;
 int sfx_doropn ;

int
EV_DoDoor
( line_t* line,
  vldoor_e type )
{
    int secnum,rtn;
    sector_t* sec;
    vldoor_t* door;

    secnum = -1;
    rtn = 0;

    while ((secnum = P_FindSectorFromLineTag(line,secnum)) >= 0)
    {
 sec = &sectors[secnum];
 if (sec->specialdata)
     continue;



 rtn = 1;
 door = Z_Malloc (sizeof(*door), PU_LEVSPEC, 0);
 P_AddThinker (&door->thinker);
 sec->specialdata = door;

 door->thinker.function.acp1 = (actionf_p1) T_VerticalDoor;
 door->sector = sec;
 door->type = type;
 door->topwait = VDOORWAIT;
 door->speed = VDOORSPEED;

 switch(type)
 {
   case 134:
     door->topheight = P_FindLowestCeilingSurrounding(sec);
     door->topheight -= 4*FRACUNIT;
     door->direction = -1;
     door->speed = VDOORSPEED * 4;
     S_StartSound((mobj_t *)&door->sector->soundorg,
    sfx_bdcls);
     break;

   case 131:
     door->topheight = P_FindLowestCeilingSurrounding(sec);
     door->topheight -= 4*FRACUNIT;
     door->direction = -1;
     S_StartSound((mobj_t *)&door->sector->soundorg,
    sfx_dorcls);
     break;

   case 130:
     door->topheight = sec->ceilingheight;
     door->direction = -1;
     S_StartSound((mobj_t *)&door->sector->soundorg,
    sfx_dorcls);
     break;

   case 132:
   case 133:
     door->direction = 1;
     door->topheight = P_FindLowestCeilingSurrounding(sec);
     door->topheight -= 4*FRACUNIT;
     door->speed = VDOORSPEED * 4;
     if (door->topheight != sec->ceilingheight)
  S_StartSound((mobj_t *)&door->sector->soundorg,
        sfx_bdopn);
     break;

   case 129:
   case 128:
     door->direction = 1;
     door->topheight = P_FindLowestCeilingSurrounding(sec);
     door->topheight -= 4*FRACUNIT;
     if (door->topheight != sec->ceilingheight)
  S_StartSound((mobj_t *)&door->sector->soundorg,
        sfx_doropn);
     break;

   default:
     break;
 }

    }
    return rtn;
}
