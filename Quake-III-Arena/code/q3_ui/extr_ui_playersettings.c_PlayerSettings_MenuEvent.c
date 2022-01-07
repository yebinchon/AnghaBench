
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int id; } ;
typedef TYPE_2__ menucommon_s ;
struct TYPE_4__ {int curvalue; } ;
struct TYPE_6__ {TYPE_1__ handicap; } ;





 int PlayerSettings_SaveChanges () ;
 int QM_ACTIVATED ;
 int UI_PlayerModelMenu () ;
 int UI_PopMenu () ;
 TYPE_3__ s_playersettings ;
 int trap_Cvar_Set (char*,int ) ;
 int va (char*,int) ;

__attribute__((used)) static void PlayerSettings_MenuEvent( void* ptr, int event ) {
 if( event != QM_ACTIVATED ) {
  return;
 }

 switch( ((menucommon_s*)ptr)->id ) {
 case 129:
  trap_Cvar_Set( "handicap", va( "%i", 100 - 25 * s_playersettings.handicap.curvalue ) );
  break;

 case 128:
  PlayerSettings_SaveChanges();
  UI_PlayerModelMenu();
  break;

 case 130:
  PlayerSettings_SaveChanges();
  UI_PopMenu();
  break;
 }
}
