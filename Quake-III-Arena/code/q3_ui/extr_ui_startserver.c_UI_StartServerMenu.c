
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_2__ {int menu; int multiplayer; } ;


 int StartServer_MenuInit () ;
 int UI_PushMenu (int *) ;
 TYPE_1__ s_startserver ;

void UI_StartServerMenu( qboolean multiplayer ) {
 StartServer_MenuInit();
 s_startserver.multiplayer = multiplayer;
 UI_PushMenu( &s_startserver.menu );
}
