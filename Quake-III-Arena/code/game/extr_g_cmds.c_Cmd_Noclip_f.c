
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* client; } ;
typedef TYPE_2__ gentity_t ;
struct TYPE_6__ {int noclip; } ;


 int CheatsOk (TYPE_2__*) ;
 int g_entities ;
 int trap_SendServerCommand (TYPE_2__*,int ) ;
 int va (char*,char*) ;

void Cmd_Noclip_f( gentity_t *ent ) {
 char *msg;

 if ( !CheatsOk( ent ) ) {
  return;
 }

 if ( ent->client->noclip ) {
  msg = "noclip OFF\n";
 } else {
  msg = "noclip ON\n";
 }
 ent->client->noclip = !ent->client->noclip;

 trap_SendServerCommand( ent-g_entities, va("print \"%s\"", msg));
}
