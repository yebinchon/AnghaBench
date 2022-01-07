
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int menu; } ;
struct TYPE_3__ {int cursorx; int cursory; scalar_t__ menusp; } ;


 int InGame_MenuInit () ;
 int UI_PushMenu (int *) ;
 TYPE_2__ s_ingame ;
 TYPE_1__ uis ;

void UI_InGameMenu( void ) {

 uis.menusp = 0;


 uis.cursorx = 319;
 uis.cursory = 80;

 InGame_MenuInit();
 UI_PushMenu( &s_ingame.menu );
}
