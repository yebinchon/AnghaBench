
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ qboolean ;
struct TYPE_3__ {int time; int captures; int shutoutBonus; int skillBonus; int timeBonus; int baseScore; int blueScore; int redScore; int perfects; int score; int gauntlets; int assists; int defends; int excellents; int impressives; int accuracy; } ;
typedef TYPE_1__ postGameInfo_t ;


 int trap_Cvar_Set (char*,int ) ;
 int va (char*,int,...) ;

void UI_SetBestScores(postGameInfo_t *newInfo, qboolean postGame) {
 trap_Cvar_Set("ui_scoreAccuracy", va("%i%%", newInfo->accuracy));
 trap_Cvar_Set("ui_scoreImpressives", va("%i", newInfo->impressives));
 trap_Cvar_Set("ui_scoreExcellents", va("%i", newInfo->excellents));
 trap_Cvar_Set("ui_scoreDefends", va("%i", newInfo->defends));
 trap_Cvar_Set("ui_scoreAssists", va("%i", newInfo->assists));
 trap_Cvar_Set("ui_scoreGauntlets", va("%i", newInfo->gauntlets));
 trap_Cvar_Set("ui_scoreScore", va("%i", newInfo->score));
 trap_Cvar_Set("ui_scorePerfect", va("%i", newInfo->perfects));
 trap_Cvar_Set("ui_scoreTeam", va("%i to %i", newInfo->redScore, newInfo->blueScore));
 trap_Cvar_Set("ui_scoreBase", va("%i", newInfo->baseScore));
 trap_Cvar_Set("ui_scoreTimeBonus", va("%i", newInfo->timeBonus));
 trap_Cvar_Set("ui_scoreSkillBonus", va("%i", newInfo->skillBonus));
 trap_Cvar_Set("ui_scoreShutoutBonus", va("%i", newInfo->shutoutBonus));
 trap_Cvar_Set("ui_scoreTime", va("%02i:%02i", newInfo->time / 60, newInfo->time % 60));
 trap_Cvar_Set("ui_scoreCaptures", va("%i", newInfo->captures));
  if (postGame) {
  trap_Cvar_Set("ui_scoreAccuracy2", va("%i%%", newInfo->accuracy));
  trap_Cvar_Set("ui_scoreImpressives2", va("%i", newInfo->impressives));
  trap_Cvar_Set("ui_scoreExcellents2", va("%i", newInfo->excellents));
  trap_Cvar_Set("ui_scoreDefends2", va("%i", newInfo->defends));
  trap_Cvar_Set("ui_scoreAssists2", va("%i", newInfo->assists));
  trap_Cvar_Set("ui_scoreGauntlets2", va("%i", newInfo->gauntlets));
  trap_Cvar_Set("ui_scoreScore2", va("%i", newInfo->score));
  trap_Cvar_Set("ui_scorePerfect2", va("%i", newInfo->perfects));
  trap_Cvar_Set("ui_scoreTeam2", va("%i to %i", newInfo->redScore, newInfo->blueScore));
  trap_Cvar_Set("ui_scoreBase2", va("%i", newInfo->baseScore));
  trap_Cvar_Set("ui_scoreTimeBonus2", va("%i", newInfo->timeBonus));
  trap_Cvar_Set("ui_scoreSkillBonus2", va("%i", newInfo->skillBonus));
  trap_Cvar_Set("ui_scoreShutoutBonus2", va("%i", newInfo->shutoutBonus));
  trap_Cvar_Set("ui_scoreTime2", va("%02i:%02i", newInfo->time / 60, newInfo->time % 60));
  trap_Cvar_Set("ui_scoreCaptures2", va("%i", newInfo->captures));
 }
}
