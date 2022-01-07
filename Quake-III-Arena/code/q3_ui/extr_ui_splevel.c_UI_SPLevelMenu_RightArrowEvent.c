
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int QM_ACTIVATED ;
 int UI_SPLevelMenu_SetMenuItems () ;
 scalar_t__ maxTier ;
 scalar_t__ selectedArenaSet ;

__attribute__((used)) static void UI_SPLevelMenu_RightArrowEvent( void* ptr, int notification ) {
 if (notification != QM_ACTIVATED) {
  return;
 }

 if ( selectedArenaSet == maxTier ) {
  return;
 }

 selectedArenaSet++;
 UI_SPLevelMenu_SetMenuItems();
}
