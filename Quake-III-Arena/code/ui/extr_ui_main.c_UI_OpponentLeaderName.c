
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* teamList; } ;
struct TYPE_3__ {char const** teamMembers; } ;


 int UI_Cvar_VariableString (char*) ;
 int UI_TeamIndexFromName (int ) ;
 TYPE_2__ uiInfo ;

__attribute__((used)) static const char *UI_OpponentLeaderName() {
  int i = UI_TeamIndexFromName(UI_Cvar_VariableString("ui_opponentName"));
 return uiInfo.teamList[i].teamMembers[0];
}
