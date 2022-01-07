
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ result_e ;
typedef int mobj_t ;
struct TYPE_4__ {int direction; int type; TYPE_2__* sector; int thinker; int texture; int newspecial; int crush; int floordestheight; int speed; } ;
typedef TYPE_1__ floormove_t ;
struct TYPE_5__ {int soundorg; int floorpic; int special; int * specialdata; } ;


 int P_RemoveThinker (int *) ;
 int S_StartSound (int *,int ) ;
 scalar_t__ T_MovePlane (TYPE_2__*,int ,int ,int ,int ,int) ;

 int leveltime ;

 scalar_t__ pastdest ;
 int sfx_pstop ;
 int sfx_stnmov ;

void T_MoveFloor(floormove_t* floor)
{
    result_e res;

    res = T_MovePlane(floor->sector,
        floor->speed,
        floor->floordestheight,
        floor->crush,0,floor->direction);

    if (!(leveltime&7))
 S_StartSound((mobj_t *)&floor->sector->soundorg,
       sfx_stnmov);

    if (res == pastdest)
    {
 floor->sector->specialdata = ((void*)0);

 if (floor->direction == 1)
 {
     switch(floor->type)
     {
       case 129:
  floor->sector->special = floor->newspecial;
  floor->sector->floorpic = floor->texture;
       default:
  break;
     }
 }
 else if (floor->direction == -1)
 {
     switch(floor->type)
     {
       case 128:
  floor->sector->special = floor->newspecial;
  floor->sector->floorpic = floor->texture;
       default:
  break;
     }
 }
 P_RemoveThinker(&floor->thinker);

 S_StartSound((mobj_t *)&floor->sector->soundorg,
       sfx_pstop);
    }

}
