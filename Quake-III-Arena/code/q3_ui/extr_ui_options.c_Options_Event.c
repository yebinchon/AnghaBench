
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int id; } ;
typedef TYPE_1__ menucommon_s ;







 int QM_ACTIVATED ;
 int UI_DisplayOptionsMenu () ;
 int UI_GraphicsOptionsMenu () ;
 int UI_NetworkOptionsMenu () ;
 int UI_PopMenu () ;
 int UI_SoundOptionsMenu () ;

__attribute__((used)) static void Options_Event( void* ptr, int event ) {
 if( event != QM_ACTIVATED ) {
  return;
 }

 switch( ((menucommon_s*)ptr)->id ) {
 case 130:
  UI_GraphicsOptionsMenu();
  break;

 case 131:
  UI_DisplayOptionsMenu();
  break;

 case 128:
  UI_SoundOptionsMenu();
  break;

 case 129:
  UI_NetworkOptionsMenu();
  break;

 case 132:
  UI_PopMenu();
  break;
 }
}
