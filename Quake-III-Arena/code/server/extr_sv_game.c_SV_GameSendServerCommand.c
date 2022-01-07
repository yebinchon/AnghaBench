
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int integer; } ;
struct TYPE_3__ {int * clients; } ;


 int SV_SendServerCommand (int *,char*,char const*) ;
 TYPE_2__* sv_maxclients ;
 TYPE_1__ svs ;

void SV_GameSendServerCommand( int clientNum, const char *text ) {
 if ( clientNum == -1 ) {
  SV_SendServerCommand( ((void*)0), "%s", text );
 } else {
  if ( clientNum < 0 || clientNum >= sv_maxclients->integer ) {
   return;
  }
  SV_SendServerCommand( svs.clients + clientNum, "%s", text );
 }
}
