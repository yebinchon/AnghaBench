
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ qboolean ;
struct TYPE_4__ {int teamCount; TYPE_1__* teamList; } ;
struct TYPE_3__ {int teamName; } ;


 int K_ENTER ;
 int K_KP_ENTER ;
 int K_MOUSE1 ;
 int K_MOUSE2 ;
 int UI_Cvar_VariableString (char*) ;
 int UI_TeamIndexFromName (int ) ;
 scalar_t__ qfalse ;
 scalar_t__ qtrue ;
 int trap_Cvar_Set (char*,int ) ;
 TYPE_2__ uiInfo ;

__attribute__((used)) static qboolean UI_TeamName_HandleKey(int flags, float *special, int key, qboolean blue) {
  if (key == K_MOUSE1 || key == K_MOUSE2 || key == K_ENTER || key == K_KP_ENTER) {
    int i;
    i = UI_TeamIndexFromName(UI_Cvar_VariableString((blue) ? "ui_blueTeam" : "ui_redTeam"));

  if (key == K_MOUSE2) {
     i--;
  } else {
     i++;
  }

    if (i >= uiInfo.teamCount) {
      i = 0;
    } else if (i < 0) {
   i = uiInfo.teamCount - 1;
  }

    trap_Cvar_Set( (blue) ? "ui_blueTeam" : "ui_redTeam", uiInfo.teamList[i].teamName);

    return qtrue;
  }
  return qfalse;
}
