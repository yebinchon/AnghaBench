
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_17__ {int type; int player; } ;
typedef TYPE_1__ mobj_t ;
struct TYPE_18__ {int special; } ;
typedef TYPE_2__ line_t ;


 int EV_BuildStairs (TYPE_2__*,int ) ;
 int EV_CeilingCrushStop (TYPE_2__*) ;
 int EV_DoCeiling (TYPE_2__*,int ) ;
 int EV_DoDoor (TYPE_2__*,int ) ;
 int EV_DoFloor (TYPE_2__*,int ) ;
 int EV_DoPlat (TYPE_2__*,int ,int ) ;
 int EV_LightTurnOn (TYPE_2__*,int) ;
 int EV_StartLightStrobing (TYPE_2__*) ;
 int EV_StopPlat (TYPE_2__*) ;
 int EV_Teleport (TYPE_2__*,int,TYPE_1__*) ;
 int EV_TurnTagLightsOff (TYPE_2__*) ;
 int G_ExitLevel () ;
 int G_SecretExitLevel () ;






 int blazeClose ;
 int blazeDWUS ;
 int blazeOpen ;
 int blazeRaise ;
 int build8 ;
 int close ;
 int close30ThenOpen ;
 int crushAndRaise ;
 int downWaitUpStay ;
 int fastCrushAndRaise ;
 TYPE_2__* lines ;
 int lowerAndChange ;
 int lowerAndCrush ;
 int lowerFloor ;
 int lowerFloorToLowest ;
 int normal ;
 int open ;
 int perpetualRaise ;
 int raiseFloor ;
 int raiseFloor24 ;
 int raiseFloor24AndChange ;
 int raiseFloorCrush ;
 int raiseFloorToNearest ;
 int raiseFloorTurbo ;
 int raiseToHighest ;
 int raiseToNearestAndChange ;
 int raiseToTexture ;
 int silentCrushAndRaise ;
 int turbo16 ;
 int turboLower ;

void
P_CrossSpecialLine
( int linenum,
  int side,
  mobj_t* thing )
{
    line_t* line;
    int ok;

    line = &lines[linenum];


    if (!thing->player)
    {

 switch(thing->type)
 {
   case 129:
   case 130:
   case 133:
   case 128:
   case 131:
   case 132:
     return;
     break;

   default: break;
 }

 ok = 0;
 switch(line->special)
 {
   case 39:
   case 97:
   case 125:
   case 126:
   case 4:
   case 10:
   case 88:
     ok = 1;
     break;
 }
 if (!ok)
     return;
    }



    switch (line->special)
    {


      case 2:

 EV_DoDoor(line,open);
 line->special = 0;
 break;

      case 3:

 EV_DoDoor(line,close);
 line->special = 0;
 break;

      case 4:

 EV_DoDoor(line,normal);
 line->special = 0;
 break;

      case 5:

 EV_DoFloor(line,raiseFloor);
 line->special = 0;
 break;

      case 6:

 EV_DoCeiling(line,fastCrushAndRaise);
 line->special = 0;
 break;

      case 8:

 EV_BuildStairs(line,build8);
 line->special = 0;
 break;

      case 10:

 EV_DoPlat(line,downWaitUpStay,0);
 line->special = 0;
 break;

      case 12:

 EV_LightTurnOn(line,0);
 line->special = 0;
 break;

      case 13:

 EV_LightTurnOn(line,255);
 line->special = 0;
 break;

      case 16:

 EV_DoDoor(line,close30ThenOpen);
 line->special = 0;
 break;

      case 17:

 EV_StartLightStrobing(line);
 line->special = 0;
 break;

      case 19:

 EV_DoFloor(line,lowerFloor);
 line->special = 0;
 break;

      case 22:

 EV_DoPlat(line,raiseToNearestAndChange,0);
 line->special = 0;
 break;

      case 25:

 EV_DoCeiling(line,crushAndRaise);
 line->special = 0;
 break;

      case 30:


 EV_DoFloor(line,raiseToTexture);
 line->special = 0;
 break;

      case 35:

 EV_LightTurnOn(line,35);
 line->special = 0;
 break;

      case 36:

 EV_DoFloor(line,turboLower);
 line->special = 0;
 break;

      case 37:

 EV_DoFloor(line,lowerAndChange);
 line->special = 0;
 break;

      case 38:

 EV_DoFloor( line, lowerFloorToLowest );
 line->special = 0;
 break;

      case 39:

 EV_Teleport( line, side, thing );
 line->special = 0;
 break;

      case 40:

 EV_DoCeiling( line, raiseToHighest );
 EV_DoFloor( line, lowerFloorToLowest );
 line->special = 0;
 break;

      case 44:

 EV_DoCeiling( line, lowerAndCrush );
 line->special = 0;
 break;

      case 52:

 G_ExitLevel ();
 break;

      case 53:

 EV_DoPlat(line,perpetualRaise,0);
 line->special = 0;
 break;

      case 54:

 EV_StopPlat(line);
 line->special = 0;
 break;

      case 56:

 EV_DoFloor(line,raiseFloorCrush);
 line->special = 0;
 break;

      case 57:

 EV_CeilingCrushStop(line);
 line->special = 0;
 break;

      case 58:

 EV_DoFloor(line,raiseFloor24);
 line->special = 0;
 break;

      case 59:

 EV_DoFloor(line,raiseFloor24AndChange);
 line->special = 0;
 break;

      case 104:

 EV_TurnTagLightsOff(line);
 line->special = 0;
 break;

      case 108:

 EV_DoDoor (line,blazeRaise);
 line->special = 0;
 break;

      case 109:

 EV_DoDoor (line,blazeOpen);
 line->special = 0;
 break;

      case 100:

 EV_BuildStairs(line,turbo16);
 line->special = 0;
 break;

      case 110:

 EV_DoDoor (line,blazeClose);
 line->special = 0;
 break;

      case 119:

 EV_DoFloor(line,raiseFloorToNearest);
 line->special = 0;
 break;

      case 121:

 EV_DoPlat(line,blazeDWUS,0);
 line->special = 0;
 break;

      case 124:

 G_SecretExitLevel ();
 break;

      case 125:

 if (!thing->player)
 {
     EV_Teleport( line, side, thing );
     line->special = 0;
 }
 break;

      case 130:

 EV_DoFloor(line,raiseFloorTurbo);
 line->special = 0;
 break;

      case 141:

 EV_DoCeiling(line,silentCrushAndRaise);
 line->special = 0;
 break;


      case 72:

 EV_DoCeiling( line, lowerAndCrush );
 break;

      case 73:

 EV_DoCeiling(line,crushAndRaise);
 break;

      case 74:

 EV_CeilingCrushStop(line);
 break;

      case 75:

 EV_DoDoor(line,close);
 break;

      case 76:

 EV_DoDoor(line,close30ThenOpen);
 break;

      case 77:

 EV_DoCeiling(line,fastCrushAndRaise);
 break;

      case 79:

 EV_LightTurnOn(line,35);
 break;

      case 80:

 EV_LightTurnOn(line,0);
 break;

      case 81:

 EV_LightTurnOn(line,255);
 break;

      case 82:

 EV_DoFloor( line, lowerFloorToLowest );
 break;

      case 83:

 EV_DoFloor(line,lowerFloor);
 break;

      case 84:

 EV_DoFloor(line,lowerAndChange);
 break;

      case 86:

 EV_DoDoor(line,open);
 break;

      case 87:

 EV_DoPlat(line,perpetualRaise,0);
 break;

      case 88:

 EV_DoPlat(line,downWaitUpStay,0);
 break;

      case 89:

 EV_StopPlat(line);
 break;

      case 90:

 EV_DoDoor(line,normal);
 break;

      case 91:

 EV_DoFloor(line,raiseFloor);
 break;

      case 92:

 EV_DoFloor(line,raiseFloor24);
 break;

      case 93:

 EV_DoFloor(line,raiseFloor24AndChange);
 break;

      case 94:

 EV_DoFloor(line,raiseFloorCrush);
 break;

      case 95:


 EV_DoPlat(line,raiseToNearestAndChange,0);
 break;

      case 96:


 EV_DoFloor(line,raiseToTexture);
 break;

      case 97:

 EV_Teleport( line, side, thing );
 break;

      case 98:

 EV_DoFloor(line,turboLower);
 break;

      case 105:

 EV_DoDoor (line,blazeRaise);
 break;

      case 106:

 EV_DoDoor (line,blazeOpen);
 break;

      case 107:

 EV_DoDoor (line,blazeClose);
 break;

      case 120:

 EV_DoPlat(line,blazeDWUS,0);
 break;

      case 126:

 if (!thing->player)
     EV_Teleport( line, side, thing );
 break;

      case 128:

 EV_DoFloor(line,raiseFloorToNearest);
 break;

      case 129:

 EV_DoFloor(line,raiseFloorTurbo);
 break;
    }
}
