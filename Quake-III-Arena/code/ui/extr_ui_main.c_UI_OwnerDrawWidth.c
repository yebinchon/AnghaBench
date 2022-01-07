
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_16__ {size_t description; } ;
struct TYPE_15__ {int teamCount; int aliasCount; size_t numJoinGameTypes; TYPE_3__* aliasList; TYPE_2__* teamList; TYPE_1__* gameTypes; } ;
struct TYPE_14__ {size_t integer; } ;
struct TYPE_13__ {size_t integer; } ;
struct TYPE_12__ {size_t integer; } ;
struct TYPE_11__ {char* name; } ;
struct TYPE_10__ {int teamName; } ;
struct TYPE_9__ {char* gameType; } ;


 int Com_Clamp (int,int,int) ;
 int Display_KeyBindPending () ;
 int Text_Width (char const*,float,int ) ;
 char* UI_Cvar_VariableString (char*) ;
 int UI_TeamIndexFromName (char*) ;
 char** handicapValues ;
 size_t* netSources ;
 size_t numServerFilters ;
 int numSkillLevels ;
 TYPE_8__* serverFilters ;
 char** skillLevels ;
 int trap_Cvar_VariableValue (char*) ;
 TYPE_7__ uiInfo ;
 TYPE_6__ ui_gameType ;
 TYPE_5__ ui_netSource ;
 TYPE_4__ ui_serverFilterType ;
 char* va (char*,...) ;

__attribute__((used)) static int UI_OwnerDrawWidth(int ownerDraw, float scale) {
 int i, h, value;
 const char *text;
 const char *s = ((void*)0);

  switch (ownerDraw) {
    case 143:
     h = Com_Clamp( 5, 100, trap_Cvar_VariableValue("handicap") );
    i = 20 - h / 5;
    s = handicapValues[i];
      break;
    case 145:
    s = UI_Cvar_VariableString("ui_teamName");
      break;
    case 144:
    s = uiInfo.gameTypes[ui_gameType.integer].gameType;
      break;
    case 131:
    i = trap_Cvar_VariableValue( "g_spSkill" );
    if (i < 1 || i > numSkillLevels) {
     i = 1;
    }
     s = skillLevels[i-1];
      break;
    case 146:
     i = UI_TeamIndexFromName(UI_Cvar_VariableString("ui_blueTeam"));
     if (i >= 0 && i < uiInfo.teamCount) {
       s = va("%s: %s", "Blue", uiInfo.teamList[i].teamName);
     }
      break;
    case 133:
     i = UI_TeamIndexFromName(UI_Cvar_VariableString("ui_redTeam"));
     if (i >= 0 && i < uiInfo.teamCount) {
       s = va("%s: %s", "Red", uiInfo.teamList[i].teamName);
     }
      break;
    case 151:
  case 150:
  case 149:
  case 148:
  case 147:
   value = trap_Cvar_VariableValue(va("ui_blueteam%i", ownerDraw-151 + 1));
   if (value <= 0) {
    text = "Closed";
   } else if (value == 1) {
    text = "Human";
   } else {
    value -= 2;
    if (value >= uiInfo.aliasCount) {
     value = 0;
    }
    text = uiInfo.aliasList[value].name;
   }
   s = va("%i. %s", ownerDraw-151 + 1, text);
      break;
    case 138:
  case 137:
  case 136:
  case 135:
  case 134:
   value = trap_Cvar_VariableValue(va("ui_redteam%i", ownerDraw-138 + 1));
   if (value <= 0) {
    text = "Closed";
   } else if (value == 1) {
    text = "Human";
   } else {
    value -= 2;
    if (value >= uiInfo.aliasCount) {
     value = 0;
    }
    text = uiInfo.aliasList[value].name;
   }
   s = va("%i. %s", ownerDraw-138 + 1, text);
      break;
  case 140:
   if (ui_netSource.integer < 0 || ui_netSource.integer > uiInfo.numJoinGameTypes) {
    ui_netSource.integer = 0;
   }
   s = va("Source: %s", netSources[ui_netSource.integer]);
   break;
  case 141:
   if (ui_serverFilterType.integer < 0 || ui_serverFilterType.integer > numServerFilters) {
    ui_serverFilterType.integer = 0;
   }
   s = va("Filter: %s", serverFilters[ui_serverFilterType.integer].description );
   break;
  case 130:
   break;
  case 128:
   break;
  case 129:
   break;
  case 152:
   break;
  case 139:
   break;
  case 142:
   if (Display_KeyBindPending()) {
    s = "Waiting for new key... Press ESCAPE to cancel";
   } else {
    s = "Press ENTER or CLICK to change, Press BACKSPACE to clear";
   }
   break;
  case 132:
   s = UI_Cvar_VariableString(va("ui_lastServerRefresh_%i", ui_netSource.integer));
   break;
    default:
      break;
  }

 if (s) {
  return Text_Width(s, scale, 0);
 }
 return 0;
}
