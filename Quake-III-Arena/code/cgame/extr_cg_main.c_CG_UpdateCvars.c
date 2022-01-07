
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int vmCvar; } ;
typedef TYPE_1__ cvarTable_t ;
struct TYPE_7__ {scalar_t__ modificationCount; scalar_t__ integer; } ;
struct TYPE_6__ {scalar_t__ modificationCount; } ;


 int CG_ForceModelChange () ;
 TYPE_4__ cg_drawTeamOverlay ;
 TYPE_3__ cg_forceModel ;
 TYPE_1__* cvarTable ;
 int cvarTableSize ;
 scalar_t__ drawTeamOverlayModificationCount ;
 scalar_t__ forceModelModificationCount ;
 int trap_Cvar_Set (char*,char*) ;
 int trap_Cvar_Update (int ) ;

void CG_UpdateCvars( void ) {
 int i;
 cvarTable_t *cv;

 for ( i = 0, cv = cvarTable ; i < cvarTableSize ; i++, cv++ ) {
  trap_Cvar_Update( cv->vmCvar );
 }





 if ( drawTeamOverlayModificationCount != cg_drawTeamOverlay.modificationCount ) {
  drawTeamOverlayModificationCount = cg_drawTeamOverlay.modificationCount;

  if ( cg_drawTeamOverlay.integer > 0 ) {
   trap_Cvar_Set( "teamoverlay", "1" );
  } else {
   trap_Cvar_Set( "teamoverlay", "0" );
  }

  trap_Cvar_Set( "teamoverlay", "1" );
 }


 if ( forceModelModificationCount != cg_forceModel.modificationCount ) {
  forceModelModificationCount = cg_forceModel.modificationCount;
  CG_ForceModelChange();
 }
}
