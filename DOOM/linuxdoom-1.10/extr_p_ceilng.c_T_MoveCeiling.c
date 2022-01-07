
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int result_e ;
typedef int mobj_t ;
struct TYPE_5__ {int direction; int speed; int crush; int type; TYPE_2__* sector; int bottomheight; int topheight; } ;
typedef TYPE_1__ ceiling_t ;
struct TYPE_6__ {int soundorg; } ;


 int CEILSPEED ;
 int P_RemoveActiveCeiling (TYPE_1__*) ;
 int S_StartSound (int *,int ) ;
 int T_MovePlane (TYPE_2__*,int,int ,int,int,int) ;

 int crushed ;

 int leveltime ;


 int pastdest ;

 int sfx_pstop ;
 int sfx_stnmov ;


void T_MoveCeiling (ceiling_t* ceiling)
{
    result_e res;

    switch(ceiling->direction)
    {
      case 0:

 break;
      case 1:

 res = T_MovePlane(ceiling->sector,
     ceiling->speed,
     ceiling->topheight,
     0,1,ceiling->direction);

 if (!(leveltime&7))
 {
     switch(ceiling->type)
     {
       case 128:
  break;
       default:
  S_StartSound((mobj_t *)&ceiling->sector->soundorg,
        sfx_stnmov);

  break;
     }
 }

 if (res == pastdest)
 {
     switch(ceiling->type)
     {
       case 129:
  P_RemoveActiveCeiling(ceiling);
  break;

       case 128:
  S_StartSound((mobj_t *)&ceiling->sector->soundorg,
        sfx_pstop);
       case 132:
       case 133:
  ceiling->direction = -1;
  break;

       default:
  break;
     }

 }
 break;

      case -1:

 res = T_MovePlane(ceiling->sector,
     ceiling->speed,
     ceiling->bottomheight,
     ceiling->crush,1,ceiling->direction);

 if (!(leveltime&7))
 {
     switch(ceiling->type)
     {
       case 128: break;
       default:
  S_StartSound((mobj_t *)&ceiling->sector->soundorg,
        sfx_stnmov);
     }
 }

 if (res == pastdest)
 {
     switch(ceiling->type)
     {
       case 128:
  S_StartSound((mobj_t *)&ceiling->sector->soundorg,
        sfx_pstop);
       case 133:
  ceiling->speed = CEILSPEED;
       case 132:
  ceiling->direction = 1;
  break;

       case 131:
       case 130:
  P_RemoveActiveCeiling(ceiling);
  break;

       default:
  break;
     }
 }
 else
 {
     if (res == crushed)
     {
  switch(ceiling->type)
  {
    case 128:
    case 133:
    case 131:
      ceiling->speed = CEILSPEED / 8;
      break;

    default:
      break;
  }
     }
 }
 break;
    }
}
