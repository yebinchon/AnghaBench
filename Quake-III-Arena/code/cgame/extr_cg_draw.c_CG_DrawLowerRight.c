
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int integer; } ;
struct TYPE_3__ {scalar_t__ gametype; } ;


 float CG_DrawPowerups (float) ;
 float CG_DrawScores (float) ;
 float CG_DrawTeamOverlay (float,int ,int ) ;
 scalar_t__ GT_TEAM ;
 int ICON_SIZE ;
 TYPE_2__ cg_drawTeamOverlay ;
 TYPE_1__ cgs ;
 int qfalse ;
 int qtrue ;

__attribute__((used)) static void CG_DrawLowerRight( void ) {
 float y;

 y = 480 - ICON_SIZE;

 if ( cgs.gametype >= GT_TEAM && cg_drawTeamOverlay.integer == 2 ) {
  y = CG_DrawTeamOverlay( y, qtrue, qfalse );
 }

 y = CG_DrawScores( y );
 y = CG_DrawPowerups( y );
}
