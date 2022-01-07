
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
struct TYPE_9__ {int direction; int topheight; int topcountdown; int topwait; int speed; int type; TYPE_3__* sector; TYPE_7__ thinker; } ;
typedef TYPE_2__ vldoor_t ;
struct TYPE_10__ {scalar_t__ special; TYPE_2__* specialdata; } ;
typedef TYPE_3__ sector_t ;
typedef scalar_t__ actionf_p1 ;


 int FRACUNIT ;
 int PU_LEVSPEC ;
 int P_AddThinker (TYPE_7__*) ;
 int P_FindLowestCeilingSurrounding (TYPE_3__*) ;
 scalar_t__ T_VerticalDoor ;
 int VDOORSPEED ;
 int VDOORWAIT ;
 TYPE_2__* Z_Malloc (int,int ,int ) ;
 int raiseIn5Mins ;

void
P_SpawnDoorRaiseIn5Mins
( sector_t* sec,
  int secnum )
{
    vldoor_t* door;

    door = Z_Malloc ( sizeof(*door), PU_LEVSPEC, 0);

    P_AddThinker (&door->thinker);

    sec->specialdata = door;
    sec->special = 0;

    door->thinker.function.acp1 = (actionf_p1)T_VerticalDoor;
    door->sector = sec;
    door->direction = 2;
    door->type = raiseIn5Mins;
    door->speed = VDOORSPEED;
    door->topheight = P_FindLowestCeilingSurrounding(sec);
    door->topheight -= 4*FRACUNIT;
    door->topwait = VDOORWAIT;
    door->topcountdown = 5 * 60 * 35;
}
