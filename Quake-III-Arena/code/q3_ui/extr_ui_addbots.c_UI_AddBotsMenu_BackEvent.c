
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int QM_ACTIVATED ;
 int UI_PopMenu () ;

__attribute__((used)) static void UI_AddBotsMenu_BackEvent( void* ptr, int event ) {
 if (event != QM_ACTIVATED) {
  return;
 }
 UI_PopMenu();
}
