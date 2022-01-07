
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int QM_ACTIVATED ;
 int UI_PopMenu () ;
 int selectedArena ;

__attribute__((used)) static void UI_SPLevelMenu_BackEvent( void* ptr, int notification ) {
 if (notification != QM_ACTIVATED) {
  return;
 }

 if ( selectedArena == -1 ) {
  selectedArena = 0;
 }

 UI_PopMenu();
}
