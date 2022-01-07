
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int floorheight; int tag; int ceilingheight; TYPE_3__* specialdata; } ;
typedef TYPE_2__ sector_t ;
typedef int line_t ;
struct TYPE_9__ {scalar_t__ acp1; } ;
struct TYPE_12__ {TYPE_1__ function; } ;
struct TYPE_11__ {int crush; int bottomheight; int direction; int speed; int type; int tag; int topheight; TYPE_2__* sector; TYPE_7__ thinker; } ;
typedef TYPE_3__ ceiling_t ;
typedef int ceiling_e ;
typedef scalar_t__ actionf_p1 ;


 int CEILSPEED ;
 int FRACUNIT ;
 int PU_LEVSPEC ;
 int P_ActivateInStasisCeiling (int *) ;
 int P_AddActiveCeiling (TYPE_3__*) ;
 int P_AddThinker (TYPE_7__*) ;
 int P_FindHighestCeilingSurrounding (TYPE_2__*) ;
 int P_FindSectorFromLineTag (int *,int) ;
 scalar_t__ T_MoveCeiling ;
 TYPE_3__* Z_Malloc (int,int ,int ) ;





 TYPE_2__* sectors ;


int
EV_DoCeiling
( line_t* line,
  ceiling_e type )
{
    int secnum;
    int rtn;
    sector_t* sec;
    ceiling_t* ceiling;

    secnum = -1;
    rtn = 0;


    switch(type)
    {
      case 132:
      case 128:
      case 133:
 P_ActivateInStasisCeiling(line);
      default:
 break;
    }

    while ((secnum = P_FindSectorFromLineTag(line,secnum)) >= 0)
    {
 sec = &sectors[secnum];
 if (sec->specialdata)
     continue;


 rtn = 1;
 ceiling = Z_Malloc (sizeof(*ceiling), PU_LEVSPEC, 0);
 P_AddThinker (&ceiling->thinker);
 sec->specialdata = ceiling;
 ceiling->thinker.function.acp1 = (actionf_p1)T_MoveCeiling;
 ceiling->sector = sec;
 ceiling->crush = 0;

 switch(type)
 {
   case 132:
     ceiling->crush = 1;
     ceiling->topheight = sec->ceilingheight;
     ceiling->bottomheight = sec->floorheight + (8*FRACUNIT);
     ceiling->direction = -1;
     ceiling->speed = CEILSPEED * 2;
     break;

   case 128:
   case 133:
     ceiling->crush = 1;
     ceiling->topheight = sec->ceilingheight;
   case 131:
   case 130:
     ceiling->bottomheight = sec->floorheight;
     if (type != 130)
  ceiling->bottomheight += 8*FRACUNIT;
     ceiling->direction = -1;
     ceiling->speed = CEILSPEED;
     break;

   case 129:
     ceiling->topheight = P_FindHighestCeilingSurrounding(sec);
     ceiling->direction = 1;
     ceiling->speed = CEILSPEED;
     break;
 }

 ceiling->tag = sec->tag;
 ceiling->type = type;
 P_AddActiveCeiling(ceiling);
    }
    return rtn;
}
