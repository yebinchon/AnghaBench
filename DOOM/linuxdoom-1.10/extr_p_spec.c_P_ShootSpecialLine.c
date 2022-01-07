
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int player; } ;
typedef TYPE_1__ mobj_t ;
struct TYPE_10__ {int special; } ;
typedef TYPE_2__ line_t ;


 int EV_DoDoor (TYPE_2__*,int ) ;
 int EV_DoFloor (TYPE_2__*,int ) ;
 int EV_DoPlat (TYPE_2__*,int ,int ) ;
 int P_ChangeSwitchTexture (TYPE_2__*,int) ;
 int open ;
 int raiseFloor ;
 int raiseToNearestAndChange ;

void
P_ShootSpecialLine
( mobj_t* thing,
  line_t* line )
{
    int ok;


    if (!thing->player)
    {
 ok = 0;
 switch(line->special)
 {
   case 46:

     ok = 1;
     break;
 }
 if (!ok)
     return;
    }

    switch(line->special)
    {
      case 24:

 EV_DoFloor(line,raiseFloor);
 P_ChangeSwitchTexture(line,0);
 break;

      case 46:

 EV_DoDoor(line,open);
 P_ChangeSwitchTexture(line,1);
 break;

      case 47:

 EV_DoPlat(line,raiseToNearestAndChange,0);
 P_ChangeSwitchTexture(line,0);
 break;
    }
}
