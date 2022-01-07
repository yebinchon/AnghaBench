
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int arenaInfo; } ;


 int QM_ACTIVATED ;
 int UI_SPArena_Start (int ) ;
 TYPE_1__ skillMenuInfo ;

__attribute__((used)) static void UI_SPSkillMenu_FightEvent( void *ptr, int notification ) {
 if (notification != QM_ACTIVATED)
  return;

 UI_SPArena_Start( skillMenuInfo.arenaInfo );
}
