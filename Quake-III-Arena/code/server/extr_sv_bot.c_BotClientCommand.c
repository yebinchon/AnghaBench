
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * clients; } ;


 int SV_ExecuteClientCommand (int *,char*,int ) ;
 int qtrue ;
 TYPE_1__ svs ;

void BotClientCommand( int client, char *command ) {
 SV_ExecuteClientCommand( &svs.clients[client], command, qtrue );
}
