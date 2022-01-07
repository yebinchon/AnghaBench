
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int vec3_t ;
typedef int stereoFrame_t ;
struct TYPE_8__ {int vieworg; int * viewaxis; } ;
struct TYPE_10__ {TYPE_3__ refdef; TYPE_2__* snap; } ;
struct TYPE_9__ {int value; } ;
struct TYPE_6__ {scalar_t__* persistant; int pm_flags; } ;
struct TYPE_7__ {TYPE_1__ ps; } ;


 int CG_Draw2D () ;
 int CG_DrawInformation () ;
 int CG_DrawTourneyScoreboard () ;
 int CG_Error (char*) ;
 int CG_TileClear () ;
 size_t PERS_TEAM ;
 int PMF_SCOREBOARD ;



 scalar_t__ TEAM_SPECTATOR ;
 int VectorCopy (int ,int ) ;
 int VectorMA (int ,float,int ,int ) ;
 TYPE_5__ cg ;
 TYPE_4__ cg_stereoSeparation ;
 int trap_R_RenderScene (TYPE_3__*) ;

void CG_DrawActive( stereoFrame_t stereoView ) {
 float separation;
 vec3_t baseOrg;


 if ( !cg.snap ) {
  CG_DrawInformation();
  return;
 }


 if ( cg.snap->ps.persistant[PERS_TEAM] == TEAM_SPECTATOR &&
  ( cg.snap->ps.pm_flags & PMF_SCOREBOARD ) ) {
  CG_DrawTourneyScoreboard();
  return;
 }

 switch ( stereoView ) {
 case 130:
  separation = 0;
  break;
 case 129:
  separation = -cg_stereoSeparation.value / 2;
  break;
 case 128:
  separation = cg_stereoSeparation.value / 2;
  break;
 default:
  separation = 0;
  CG_Error( "CG_DrawActive: Undefined stereoView" );
 }



 CG_TileClear();


 VectorCopy( cg.refdef.vieworg, baseOrg );
 if ( separation != 0 ) {
  VectorMA( cg.refdef.vieworg, -separation, cg.refdef.viewaxis[1], cg.refdef.vieworg );
 }


 trap_R_RenderScene( &cg.refdef );


 if ( separation != 0 ) {
  VectorCopy( baseOrg, cg.refdef.vieworg );
 }


  CG_Draw2D();
}
