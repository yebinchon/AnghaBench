
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int id; } ;
typedef TYPE_3__ menucommon_s ;
struct TYPE_6__ {int curvalue; } ;
struct TYPE_5__ {float curvalue; } ;
struct TYPE_8__ {TYPE_2__ screensize; TYPE_1__ brightness; } ;
 int QM_ACTIVATED ;
 int UI_GraphicsOptionsMenu () ;
 int UI_NetworkOptionsMenu () ;
 int UI_PopMenu () ;
 int UI_SoundOptionsMenu () ;
 TYPE_4__ displayOptionsInfo ;
 int trap_Cvar_SetValue (char*,int) ;

__attribute__((used)) static void UI_DisplayOptionsMenu_Event( void* ptr, int event ) {
 if( event != QM_ACTIVATED ) {
  return;
 }

 switch( ((menucommon_s*)ptr)->id ) {
 case 131:
  UI_PopMenu();
  UI_GraphicsOptionsMenu();
  break;

 case 132:
  break;

 case 128:
  UI_PopMenu();
  UI_SoundOptionsMenu();
  break;

 case 130:
  UI_PopMenu();
  UI_NetworkOptionsMenu();
  break;

 case 133:
  trap_Cvar_SetValue( "r_gamma", displayOptionsInfo.brightness.curvalue / 10.0f );
  break;

 case 129:
  trap_Cvar_SetValue( "cg_viewsize", displayOptionsInfo.screensize.curvalue * 10 );
  break;

 case 134:
  UI_PopMenu();
  break;
 }
}
