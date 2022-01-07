
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_9__ ;
typedef struct TYPE_25__ TYPE_8__ ;
typedef struct TYPE_24__ TYPE_7__ ;
typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_13__ ;
typedef struct TYPE_16__ TYPE_12__ ;
typedef struct TYPE_15__ TYPE_11__ ;
typedef struct TYPE_14__ TYPE_10__ ;


struct TYPE_16__ {int id; } ;
typedef TYPE_12__ menucommon_s ;
struct TYPE_26__ {int curvalue; } ;
struct TYPE_25__ {int curvalue; } ;
struct TYPE_24__ {int curvalue; } ;
struct TYPE_23__ {int curvalue; } ;
struct TYPE_22__ {int curvalue; } ;
struct TYPE_21__ {int curvalue; } ;
struct TYPE_20__ {int curvalue; } ;
struct TYPE_19__ {int curvalue; } ;
struct TYPE_18__ {int curvalue; } ;
struct TYPE_15__ {int curvalue; } ;
struct TYPE_14__ {int curvalue; } ;
struct TYPE_17__ {TYPE_11__ allowdownload; TYPE_10__ drawteamoverlay; TYPE_9__ forcemodel; TYPE_8__ synceveryframe; TYPE_7__ identifytarget; TYPE_6__ dynamiclights; TYPE_5__ wallmarks; TYPE_4__ brass; TYPE_3__ highqualitysky; TYPE_2__ simpleitems; TYPE_1__ crosshair; } ;
 int NUM_CROSSHAIRS ;
 int QM_ACTIVATED ;
 int UI_PopMenu () ;
 TYPE_13__ s_preferences ;
 int trap_Cvar_Reset (char*) ;
 int trap_Cvar_SetValue (char*,int) ;

__attribute__((used)) static void Preferences_Event( void* ptr, int notification ) {
 if( notification != QM_ACTIVATED ) {
  return;
 }

 switch( ((menucommon_s*)ptr)->id ) {
 case 137:
  s_preferences.crosshair.curvalue++;
  if( s_preferences.crosshair.curvalue == NUM_CROSSHAIRS ) {
   s_preferences.crosshair.curvalue = 0;
  }
  trap_Cvar_SetValue( "cg_drawCrosshair", s_preferences.crosshair.curvalue );
  break;

 case 130:
  trap_Cvar_SetValue( "cg_simpleItems", s_preferences.simpleitems.curvalue );
  break;

 case 132:
  trap_Cvar_SetValue( "r_fastsky", !s_preferences.highqualitysky.curvalue );
  break;

 case 134:
  if ( s_preferences.brass.curvalue )
   trap_Cvar_Reset( "cg_brassTime" );
  else
   trap_Cvar_SetValue( "cg_brassTime", 0 );
  break;

 case 128:
  trap_Cvar_SetValue( "cg_marks", s_preferences.wallmarks.curvalue );
  break;

 case 135:
  trap_Cvar_SetValue( "r_dynamiclight", s_preferences.dynamiclights.curvalue );
  break;

 case 131:
  trap_Cvar_SetValue( "cg_drawCrosshairNames", s_preferences.identifytarget.curvalue );
  break;

 case 129:
  trap_Cvar_SetValue( "r_finish", s_preferences.synceveryframe.curvalue );
  break;

 case 133:
  trap_Cvar_SetValue( "cg_forcemodel", s_preferences.forcemodel.curvalue );
  break;

 case 136:
  trap_Cvar_SetValue( "cg_drawTeamOverlay", s_preferences.drawteamoverlay.curvalue );
  break;

 case 139:
  trap_Cvar_SetValue( "cl_allowDownload", s_preferences.allowdownload.curvalue );
  trap_Cvar_SetValue( "sv_allowDownload", s_preferences.allowdownload.curvalue );
  break;

 case 138:
  UI_PopMenu();
  break;
 }
}
