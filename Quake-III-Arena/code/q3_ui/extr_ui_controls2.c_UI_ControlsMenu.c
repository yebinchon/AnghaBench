
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int menu; } ;


 int Controls_MenuInit () ;
 int UI_PushMenu (int *) ;
 TYPE_1__ s_controls ;

void UI_ControlsMenu( void ) {
 Controls_MenuInit();
 UI_PushMenu( &s_controls.menu );
}
