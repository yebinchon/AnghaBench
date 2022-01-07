
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_17__ {int player; } ;
typedef TYPE_1__ mobj_t ;
struct TYPE_18__ {int special; int flags; } ;
typedef TYPE_2__ line_t ;
typedef int boolean ;


 int EV_BuildStairs (TYPE_2__*,int ) ;
 int EV_DoCeiling (TYPE_2__*,int ) ;
 int EV_DoDonut (TYPE_2__*) ;
 int EV_DoDoor (TYPE_2__*,int ) ;
 int EV_DoFloor (TYPE_2__*,int ) ;
 int EV_DoLockedDoor (TYPE_2__*,int ,TYPE_1__*) ;
 int EV_DoPlat (TYPE_2__*,int ,int) ;
 int EV_LightTurnOn (TYPE_2__*,int) ;
 int EV_VerticalDoor (TYPE_2__*,TYPE_1__*) ;
 int G_ExitLevel () ;
 int G_SecretExitLevel () ;
 int ML_SECRET ;
 int P_ChangeSwitchTexture (TYPE_2__*,int) ;
 int blazeClose ;
 int blazeDWUS ;
 int blazeOpen ;
 int blazeRaise ;
 int build8 ;
 int close ;
 int crushAndRaise ;
 int downWaitUpStay ;
 int lowerFloor ;
 int lowerFloorToLowest ;
 int lowerToFloor ;
 int normal ;
 int open ;
 int raiseAndChange ;
 int raiseFloor ;
 int raiseFloor512 ;
 int raiseFloorCrush ;
 int raiseFloorToNearest ;
 int raiseFloorTurbo ;
 int raiseToNearestAndChange ;
 int turbo16 ;
 int turboLower ;

boolean
P_UseSpecialLine
( mobj_t* thing,
  line_t* line,
  int side )
{



    if (side)
    {
 switch(line->special)
 {
   case 124:


     break;

   default:
     return 0;
     break;
 }
    }



    if (!thing->player)
    {

 if (line->flags & ML_SECRET)
     return 0;

 switch(line->special)
 {
   case 1:
   case 32:
   case 33:
   case 34:
     break;

   default:
     return 0;
     break;
 }
    }



    switch (line->special)
    {

      case 1:
      case 26:
      case 27:
      case 28:

      case 31:
      case 32:
      case 33:
      case 34:

      case 117:
      case 118:
 EV_VerticalDoor (line, thing);
 break;







      case 7:

 if (EV_BuildStairs(line,build8))
     P_ChangeSwitchTexture(line,0);
 break;

      case 9:

 if (EV_DoDonut(line))
     P_ChangeSwitchTexture(line,0);
 break;

      case 11:

 P_ChangeSwitchTexture(line,0);
 G_ExitLevel ();
 break;

      case 14:

 if (EV_DoPlat(line,raiseAndChange,32))
     P_ChangeSwitchTexture(line,0);
 break;

      case 15:

 if (EV_DoPlat(line,raiseAndChange,24))
     P_ChangeSwitchTexture(line,0);
 break;

      case 18:

 if (EV_DoFloor(line, raiseFloorToNearest))
     P_ChangeSwitchTexture(line,0);
 break;

      case 20:

 if (EV_DoPlat(line,raiseToNearestAndChange,0))
     P_ChangeSwitchTexture(line,0);
 break;

      case 21:

 if (EV_DoPlat(line,downWaitUpStay,0))
     P_ChangeSwitchTexture(line,0);
 break;

      case 23:

 if (EV_DoFloor(line,lowerFloorToLowest))
     P_ChangeSwitchTexture(line,0);
 break;

      case 29:

 if (EV_DoDoor(line,normal))
     P_ChangeSwitchTexture(line,0);
 break;

      case 41:

 if (EV_DoCeiling(line,lowerToFloor))
     P_ChangeSwitchTexture(line,0);
 break;

      case 71:

 if (EV_DoFloor(line,turboLower))
     P_ChangeSwitchTexture(line,0);
 break;

      case 49:

 if (EV_DoCeiling(line,crushAndRaise))
     P_ChangeSwitchTexture(line,0);
 break;

      case 50:

 if (EV_DoDoor(line,close))
     P_ChangeSwitchTexture(line,0);
 break;

      case 51:

 P_ChangeSwitchTexture(line,0);
 G_SecretExitLevel ();
 break;

      case 55:

 if (EV_DoFloor(line,raiseFloorCrush))
     P_ChangeSwitchTexture(line,0);
 break;

      case 101:

 if (EV_DoFloor(line,raiseFloor))
     P_ChangeSwitchTexture(line,0);
 break;

      case 102:

 if (EV_DoFloor(line,lowerFloor))
     P_ChangeSwitchTexture(line,0);
 break;

      case 103:

 if (EV_DoDoor(line,open))
     P_ChangeSwitchTexture(line,0);
 break;

      case 111:

 if (EV_DoDoor (line,blazeRaise))
     P_ChangeSwitchTexture(line,0);
 break;

      case 112:

 if (EV_DoDoor (line,blazeOpen))
     P_ChangeSwitchTexture(line,0);
 break;

      case 113:

 if (EV_DoDoor (line,blazeClose))
     P_ChangeSwitchTexture(line,0);
 break;

      case 122:

 if (EV_DoPlat(line,blazeDWUS,0))
     P_ChangeSwitchTexture(line,0);
 break;

      case 127:

 if (EV_BuildStairs(line,turbo16))
     P_ChangeSwitchTexture(line,0);
 break;

      case 131:

 if (EV_DoFloor(line,raiseFloorTurbo))
     P_ChangeSwitchTexture(line,0);
 break;

      case 133:

      case 135:

      case 137:

 if (EV_DoLockedDoor (line,blazeOpen,thing))
     P_ChangeSwitchTexture(line,0);
 break;

      case 140:

 if (EV_DoFloor(line,raiseFloor512))
     P_ChangeSwitchTexture(line,0);
 break;


      case 42:

 if (EV_DoDoor(line,close))
     P_ChangeSwitchTexture(line,1);
 break;

      case 43:

 if (EV_DoCeiling(line,lowerToFloor))
     P_ChangeSwitchTexture(line,1);
 break;

      case 45:

 if (EV_DoFloor(line,lowerFloor))
     P_ChangeSwitchTexture(line,1);
 break;

      case 60:

 if (EV_DoFloor(line,lowerFloorToLowest))
     P_ChangeSwitchTexture(line,1);
 break;

      case 61:

 if (EV_DoDoor(line,open))
     P_ChangeSwitchTexture(line,1);
 break;

      case 62:

 if (EV_DoPlat(line,downWaitUpStay,1))
     P_ChangeSwitchTexture(line,1);
 break;

      case 63:

 if (EV_DoDoor(line,normal))
     P_ChangeSwitchTexture(line,1);
 break;

      case 64:

 if (EV_DoFloor(line,raiseFloor))
     P_ChangeSwitchTexture(line,1);
 break;

      case 66:

 if (EV_DoPlat(line,raiseAndChange,24))
     P_ChangeSwitchTexture(line,1);
 break;

      case 67:

 if (EV_DoPlat(line,raiseAndChange,32))
     P_ChangeSwitchTexture(line,1);
 break;

      case 65:

 if (EV_DoFloor(line,raiseFloorCrush))
     P_ChangeSwitchTexture(line,1);
 break;

      case 68:

 if (EV_DoPlat(line,raiseToNearestAndChange,0))
     P_ChangeSwitchTexture(line,1);
 break;

      case 69:

 if (EV_DoFloor(line, raiseFloorToNearest))
     P_ChangeSwitchTexture(line,1);
 break;

      case 70:

 if (EV_DoFloor(line,turboLower))
     P_ChangeSwitchTexture(line,1);
 break;

      case 114:

 if (EV_DoDoor (line,blazeRaise))
     P_ChangeSwitchTexture(line,1);
 break;

      case 115:

 if (EV_DoDoor (line,blazeOpen))
     P_ChangeSwitchTexture(line,1);
 break;

      case 116:

 if (EV_DoDoor (line,blazeClose))
     P_ChangeSwitchTexture(line,1);
 break;

      case 123:

 if (EV_DoPlat(line,blazeDWUS,0))
     P_ChangeSwitchTexture(line,1);
 break;

      case 132:

 if (EV_DoFloor(line,raiseFloorTurbo))
     P_ChangeSwitchTexture(line,1);
 break;

      case 99:

      case 134:

      case 136:

 if (EV_DoLockedDoor (line,blazeOpen,thing))
     P_ChangeSwitchTexture(line,1);
 break;

      case 138:

 EV_LightTurnOn(line,255);
 P_ChangeSwitchTexture(line,1);
 break;

      case 139:

 EV_LightTurnOn(line,35);
 P_ChangeSwitchTexture(line,1);
 break;

    }

    return 1;
}
