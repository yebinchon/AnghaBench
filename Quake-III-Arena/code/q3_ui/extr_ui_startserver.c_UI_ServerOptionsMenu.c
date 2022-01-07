
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_2__ {int menu; } ;


 int ServerOptions_MenuInit (int ) ;
 int UI_PushMenu (int *) ;
 TYPE_1__ s_serveroptions ;

__attribute__((used)) static void UI_ServerOptionsMenu( qboolean multiplayer ) {
 ServerOptions_MenuInit( multiplayer );
 UI_PushMenu( &s_serveroptions.menu );
}
