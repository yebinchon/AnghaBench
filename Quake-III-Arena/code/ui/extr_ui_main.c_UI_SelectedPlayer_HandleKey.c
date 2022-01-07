
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_2__ {int myTeamCount; char** teamNames; int teamLeader; } ;


 int K_ENTER ;
 int K_KP_ENTER ;
 int K_MOUSE1 ;
 int K_MOUSE2 ;
 int UI_BuildPlayerList () ;
 int qfalse ;
 int trap_Cvar_Set (char*,char*) ;
 int trap_Cvar_VariableValue (char*) ;
 TYPE_1__ uiInfo ;
 char* va (char*,int) ;

__attribute__((used)) static qboolean UI_SelectedPlayer_HandleKey(int flags, float *special, int key) {
  if (key == K_MOUSE1 || key == K_MOUSE2 || key == K_ENTER || key == K_KP_ENTER) {
  int selected;

  UI_BuildPlayerList();
  if (!uiInfo.teamLeader) {
   return qfalse;
  }
  selected = trap_Cvar_VariableValue("cg_selectedPlayer");

  if (key == K_MOUSE2) {
   selected--;
  } else {
   selected++;
  }

  if (selected > uiInfo.myTeamCount) {
   selected = 0;
  } else if (selected < 0) {
   selected = uiInfo.myTeamCount;
  }

  if (selected == uiInfo.myTeamCount) {
    trap_Cvar_Set( "cg_selectedPlayerName", "Everyone");
  } else {
    trap_Cvar_Set( "cg_selectedPlayerName", uiInfo.teamNames[selected]);
  }
   trap_Cvar_Set( "cg_selectedPlayer", va("%d", selected));
 }
 return qfalse;
}
