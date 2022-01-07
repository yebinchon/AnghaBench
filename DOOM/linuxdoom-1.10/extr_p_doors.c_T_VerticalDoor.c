
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int direction; int topcountdown; int type; int topwait; int thinker; TYPE_3__* sector; int topheight; int speed; } ;
typedef TYPE_1__ vldoor_t ;
typedef int result_e ;
typedef int mobj_t ;
struct TYPE_5__ {int * specialdata; int soundorg; int floorheight; } ;


 int P_RemoveThinker (int *) ;
 int S_StartSound (int *,int ) ;
 int T_MovePlane (TYPE_3__*,int ,int ,int,int,int) ;





 int crushed ;


 int pastdest ;

 int sfx_bdcls ;
 int sfx_dorcls ;
 int sfx_doropn ;

void T_VerticalDoor (vldoor_t* door)
{
    result_e res;

    switch(door->direction)
    {
      case 0:

 if (!--door->topcountdown)
 {
     switch(door->type)
     {
       case 133:
  door->direction = -1;
  S_StartSound((mobj_t *)&door->sector->soundorg,
        sfx_bdcls);
  break;

       case 130:
  door->direction = -1;
  S_StartSound((mobj_t *)&door->sector->soundorg,
        sfx_dorcls);
  break;

       case 131:
  door->direction = 1;
  S_StartSound((mobj_t *)&door->sector->soundorg,
        sfx_doropn);
  break;

       default:
  break;
     }
 }
 break;

      case 2:

 if (!--door->topcountdown)
 {
     switch(door->type)
     {
       case 128:
  door->direction = 1;
  door->type = 130;
  S_StartSound((mobj_t *)&door->sector->soundorg,
        sfx_doropn);
  break;

       default:
  break;
     }
 }
 break;

      case -1:

 res = T_MovePlane(door->sector,
     door->speed,
     door->sector->floorheight,
     0,1,door->direction);
 if (res == pastdest)
 {
     switch(door->type)
     {
       case 133:
       case 135:
  door->sector->specialdata = ((void*)0);
  P_RemoveThinker (&door->thinker);
  S_StartSound((mobj_t *)&door->sector->soundorg,
        sfx_bdcls);
  break;

       case 130:
       case 132:
  door->sector->specialdata = ((void*)0);
  P_RemoveThinker (&door->thinker);
  break;

       case 131:
  door->direction = 0;
  door->topcountdown = 35*30;
  break;

       default:
  break;
     }
 }
 else if (res == crushed)
 {
     switch(door->type)
     {
       case 135:
       case 132:
  break;

       default:
  door->direction = 1;
  S_StartSound((mobj_t *)&door->sector->soundorg,
        sfx_doropn);
  break;
     }
 }
 break;

      case 1:

 res = T_MovePlane(door->sector,
     door->speed,
     door->topheight,
     0,1,door->direction);

 if (res == pastdest)
 {
     switch(door->type)
     {
       case 133:
       case 130:
  door->direction = 0;
  door->topcountdown = door->topwait;
  break;

       case 131:
       case 134:
       case 129:
  door->sector->specialdata = ((void*)0);
  P_RemoveThinker (&door->thinker);
  break;

       default:
  break;
     }
 }
 break;
    }
}
