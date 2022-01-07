
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int result_e ;
struct TYPE_5__ {int status; int crush; int type; TYPE_3__* sector; int low; int count; int wait; int speed; int high; } ;
typedef TYPE_1__ plat_t ;
typedef int mobj_t ;
struct TYPE_6__ {int soundorg; int floorheight; } ;


 int P_RemoveActivePlat (TYPE_1__*) ;
 int S_StartSound (int *,int ) ;
 int T_MovePlane (TYPE_3__*,int ,int ,int,int ,int) ;

 int crushed ;



 int leveltime ;
 int pastdest ;


 int sfx_pstart ;
 int sfx_pstop ;
 int sfx_stnmov ;



void T_PlatRaise(plat_t* plat)
{
    result_e res;

    switch(plat->status)
    {
      case 129:
 res = T_MovePlane(plat->sector,
     plat->speed,
     plat->high,
     plat->crush,0,1);

 if (plat->type == 131
     || plat->type == 130)
 {
     if (!(leveltime&7))
  S_StartSound((mobj_t *)&plat->sector->soundorg,
        sfx_stnmov);
 }


 if (res == crushed && (!plat->crush))
 {
     plat->count = plat->wait;
     plat->status = 134;
     S_StartSound((mobj_t *)&plat->sector->soundorg,
    sfx_pstart);
 }
 else
 {
     if (res == pastdest)
     {
  plat->count = plat->wait;
  plat->status = 128;
  S_StartSound((mobj_t *)&plat->sector->soundorg,
        sfx_pstop);

  switch(plat->type)
  {
    case 135:
    case 133:
      P_RemoveActivePlat(plat);
      break;

    case 131:
    case 130:
      P_RemoveActivePlat(plat);
      break;

    default:
      break;
  }
     }
 }
 break;

      case 134:
 res = T_MovePlane(plat->sector,plat->speed,plat->low,0,0,-1);

 if (res == pastdest)
 {
     plat->count = plat->wait;
     plat->status = 128;
     S_StartSound((mobj_t *)&plat->sector->soundorg,sfx_pstop);
 }
 break;

      case 128:
 if (!--plat->count)
 {
     if (plat->sector->floorheight == plat->low)
  plat->status = 129;
     else
  plat->status = 134;
     S_StartSound((mobj_t *)&plat->sector->soundorg,sfx_pstart);
 }
      case 132:
 break;
    }
}
