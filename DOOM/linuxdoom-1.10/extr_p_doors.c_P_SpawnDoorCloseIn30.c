
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ acp1; } ;
struct TYPE_10__ {TYPE_1__ function; } ;
struct TYPE_8__ {int topcountdown; int speed; int type; scalar_t__ direction; TYPE_3__* sector; TYPE_6__ thinker; } ;
typedef TYPE_2__ vldoor_t ;
struct TYPE_9__ {scalar_t__ special; TYPE_2__* specialdata; } ;
typedef TYPE_3__ sector_t ;
typedef scalar_t__ actionf_p1 ;


 int PU_LEVSPEC ;
 int P_AddThinker (TYPE_6__*) ;
 scalar_t__ T_VerticalDoor ;
 int VDOORSPEED ;
 TYPE_2__* Z_Malloc (int,int ,int ) ;
 int normal ;

void P_SpawnDoorCloseIn30 (sector_t* sec)
{
    vldoor_t* door;

    door = Z_Malloc ( sizeof(*door), PU_LEVSPEC, 0);

    P_AddThinker (&door->thinker);

    sec->specialdata = door;
    sec->special = 0;

    door->thinker.function.acp1 = (actionf_p1)T_VerticalDoor;
    door->sector = sec;
    door->direction = 0;
    door->type = normal;
    door->speed = VDOORSPEED;
    door->topcountdown = 30 * 35;
}
