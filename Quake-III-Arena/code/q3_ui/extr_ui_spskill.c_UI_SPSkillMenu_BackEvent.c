
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int silenceSound; } ;


 int CHAN_ANNOUNCER ;
 int QM_ACTIVATED ;
 int UI_PopMenu () ;
 TYPE_1__ skillMenuInfo ;
 int trap_S_StartLocalSound (int ,int ) ;

__attribute__((used)) static void UI_SPSkillMenu_BackEvent( void* ptr, int notification ) {
 if (notification != QM_ACTIVATED) {
  return;
 }

 trap_S_StartLocalSound( skillMenuInfo.silenceSound, CHAN_ANNOUNCER );
 UI_PopMenu();
}
