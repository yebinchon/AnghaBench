
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_14__ {scalar_t__ time; int scoreBoardShowing; TYPE_2__* snap; int showScores; scalar_t__ levelShot; } ;
struct TYPE_13__ {scalar_t__ integer; } ;
struct TYPE_12__ {scalar_t__ integer; } ;
struct TYPE_11__ {int integer; } ;
struct TYPE_10__ {scalar_t__ orderTime; scalar_t__ gametype; scalar_t__ orderPending; } ;
struct TYPE_8__ {scalar_t__ pm_type; scalar_t__* persistant; scalar_t__* stats; } ;
struct TYPE_9__ {TYPE_1__ ps; } ;


 int CG_CheckOrderPending () ;
 int CG_DrawAmmoWarning () ;
 int CG_DrawCenterString () ;
 int CG_DrawCrosshair () ;
 int CG_DrawCrosshairNames () ;
 int CG_DrawFollow () ;
 int CG_DrawHoldableItem () ;
 int CG_DrawIntermission () ;
 int CG_DrawLagometer () ;
 int CG_DrawLowerLeft () ;
 int CG_DrawLowerRight () ;
 int CG_DrawProxWarning () ;
 int CG_DrawReward () ;
 int CG_DrawScoreboard () ;
 int CG_DrawSpectator () ;
 int CG_DrawStatusBar () ;
 int CG_DrawTeamInfo () ;
 int CG_DrawTeamVote () ;
 int CG_DrawTimedMenus () ;
 int CG_DrawUpperRight () ;
 int CG_DrawVote () ;
 int CG_DrawWarmup () ;
 int CG_DrawWeaponSelect () ;
 scalar_t__ GT_TEAM ;
 int Menu_PaintAll () ;
 size_t PERS_TEAM ;
 scalar_t__ PM_INTERMISSION ;
 size_t STAT_HEALTH ;
 scalar_t__ TEAM_SPECTATOR ;
 TYPE_7__ cg ;
 TYPE_6__ cg_draw2D ;
 TYPE_5__ cg_drawStatus ;
 TYPE_4__ cg_paused ;
 TYPE_3__ cgs ;

__attribute__((used)) static void CG_Draw2D( void ) {






 if ( cg.levelShot ) {
  return;
 }

 if ( cg_draw2D.integer == 0 ) {
  return;
 }

 if ( cg.snap->ps.pm_type == PM_INTERMISSION ) {
  CG_DrawIntermission();
  return;
 }






 if ( cg.snap->ps.persistant[PERS_TEAM] == TEAM_SPECTATOR ) {
  CG_DrawSpectator();
  CG_DrawCrosshair();
  CG_DrawCrosshairNames();
 } else {

  if ( !cg.showScores && cg.snap->ps.stats[STAT_HEALTH] > 0 ) {







   CG_DrawStatusBar();


   CG_DrawAmmoWarning();




   CG_DrawCrosshair();
   CG_DrawCrosshairNames();
   CG_DrawWeaponSelect();


   CG_DrawHoldableItem();



   CG_DrawReward();
  }

  if ( cgs.gametype >= GT_TEAM ) {

   CG_DrawTeamInfo();

  }
 }

 CG_DrawVote();
 CG_DrawTeamVote();

 CG_DrawLagometer();






 CG_DrawUpperRight();



 CG_DrawLowerRight();
 CG_DrawLowerLeft();


 if ( !CG_DrawFollow() ) {
  CG_DrawWarmup();
 }


 cg.scoreBoardShowing = CG_DrawScoreboard();
 if ( !cg.scoreBoardShowing) {
  CG_DrawCenterString();
 }
}
