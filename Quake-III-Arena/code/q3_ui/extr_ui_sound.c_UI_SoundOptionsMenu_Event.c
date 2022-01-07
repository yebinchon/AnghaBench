
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int id; } ;
typedef TYPE_4__ menucommon_s ;
struct TYPE_8__ {int curvalue; } ;
struct TYPE_7__ {int curvalue; } ;
struct TYPE_6__ {int curvalue; } ;
struct TYPE_10__ {TYPE_3__ quality; TYPE_2__ musicvolume; TYPE_1__ sfxvolume; } ;


 int EXEC_APPEND ;
 int QM_ACTIVATED ;
 int UI_DisplayOptionsMenu () ;
 int UI_ForceMenuOff () ;
 int UI_GraphicsOptionsMenu () ;
 int UI_NetworkOptionsMenu () ;
 int UI_PopMenu () ;
 TYPE_5__ soundOptionsInfo ;
 int trap_Cmd_ExecuteText (int ,char*) ;
 int trap_Cvar_SetValue (char*,int) ;

__attribute__((used)) static void UI_SoundOptionsMenu_Event( void* ptr, int event ) {
 if( event != QM_ACTIVATED ) {
  return;
 }

 switch( ((menucommon_s*)ptr)->id ) {
 case 132:
  UI_PopMenu();
  UI_GraphicsOptionsMenu();
  break;

 case 134:
  UI_PopMenu();
  UI_DisplayOptionsMenu();
  break;

 case 128:
  break;

 case 130:
  UI_PopMenu();
  UI_NetworkOptionsMenu();
  break;

 case 133:
  trap_Cvar_SetValue( "s_volume", soundOptionsInfo.sfxvolume.curvalue / 10 );
  break;

 case 131:
  trap_Cvar_SetValue( "s_musicvolume", soundOptionsInfo.musicvolume.curvalue / 10 );
  break;

 case 129:
  if( soundOptionsInfo.quality.curvalue ) {
   trap_Cvar_SetValue( "s_khz", 22 );
   trap_Cvar_SetValue( "s_compression", 0 );
  }
  else {
   trap_Cvar_SetValue( "s_khz", 11 );
   trap_Cvar_SetValue( "s_compression", 1 );
  }
  UI_ForceMenuOff();
  trap_Cmd_ExecuteText( EXEC_APPEND, "snd_restart\n" );
  break;
 case 135:
  UI_PopMenu();
  break;
 }
}
