
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int display; int menu; } ;


 int Menu_SetCursorToItem (int *,int *) ;
 int UI_DisplayOptionsMenu_Init () ;
 int UI_PushMenu (int *) ;
 TYPE_1__ displayOptionsInfo ;

void UI_DisplayOptionsMenu( void ) {
 UI_DisplayOptionsMenu_Init();
 UI_PushMenu( &displayOptionsInfo.menu );
 Menu_SetCursorToItem( &displayOptionsInfo.menu, &displayOptionsInfo.display );
}
