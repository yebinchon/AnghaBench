
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int id; } ;
typedef TYPE_1__ menucommon_s ;
 int QM_ACTIVATED ;
 int UI_LoginMenu () ;
 int UI_PopMenu () ;
 int UI_RankingsMenu () ;
 int UI_SignupMenu () ;
 int s_status ;

__attribute__((used)) static void RankStatus_MenuEvent( void* ptr, int event ) {
 if( event != QM_ACTIVATED ) {
  return;
 }

 switch( ((menucommon_s*)ptr)->id ) {
 case 135:
  UI_PopMenu();

  switch( s_status )
  {
  case 130:
   UI_RankingsMenu();
   break;
  case 134:
   UI_RankingsMenu();
   UI_LoginMenu();
   break;
  case 128:
   UI_RankingsMenu();
   UI_SignupMenu();
   break;
  case 131:
   UI_RankingsMenu();
   break;
  case 129:
   UI_RankingsMenu();
   break;
  case 132:
   UI_RankingsMenu();
   break;
  case 133:
   UI_RankingsMenu();
   break;
  default:
   break;
  }

  break;
 }
}
