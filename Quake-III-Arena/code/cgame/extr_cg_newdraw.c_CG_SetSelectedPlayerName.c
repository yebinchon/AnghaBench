
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* name; int teamTask; } ;
typedef TYPE_1__ clientInfo_t ;
struct TYPE_6__ {size_t integer; } ;
struct TYPE_5__ {int currentOrder; TYPE_1__* clientinfo; } ;


 TYPE_3__ cg_currentSelectedPlayer ;
 TYPE_2__ cgs ;
 size_t numSortedTeamPlayers ;
 int* sortedTeamPlayers ;
 int trap_Cvar_Set (char*,char*) ;
 char* va (char*,int) ;

__attribute__((used)) static void CG_SetSelectedPlayerName() {
  if (cg_currentSelectedPlayer.integer >= 0 && cg_currentSelectedPlayer.integer < numSortedTeamPlayers) {
  clientInfo_t *ci = cgs.clientinfo + sortedTeamPlayers[cg_currentSelectedPlayer.integer];
   if (ci) {
   trap_Cvar_Set("cg_selectedPlayerName", ci->name);
   trap_Cvar_Set("cg_selectedPlayer", va("%d", sortedTeamPlayers[cg_currentSelectedPlayer.integer]));
   cgs.currentOrder = ci->teamTask;
   }
 } else {
  trap_Cvar_Set("cg_selectedPlayerName", "Everyone");
 }
}
