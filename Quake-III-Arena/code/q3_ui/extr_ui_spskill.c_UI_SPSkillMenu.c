
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char const* arenaInfo; int item_fight; int menu; } ;


 int Menu_SetCursorToItem (int *,int *) ;
 int UI_PushMenu (int *) ;
 int UI_SPSkillMenu_Init () ;
 TYPE_1__ skillMenuInfo ;

void UI_SPSkillMenu( const char *arenaInfo ) {
 UI_SPSkillMenu_Init();
 skillMenuInfo.arenaInfo = arenaInfo;
 UI_PushMenu( &skillMenuInfo.menu );
 Menu_SetCursorToItem( &skillMenuInfo.menu, &skillMenuInfo.item_fight );
}
