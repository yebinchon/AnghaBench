
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int menu; } ;


 int UI_CDKeyMenu_Init () ;
 int UI_PushMenu (int *) ;
 TYPE_1__ cdkeyMenuInfo ;

void UI_CDKeyMenu( void ) {
 UI_CDKeyMenu_Init();
 UI_PushMenu( &cdkeyMenuInfo.menu );
}
