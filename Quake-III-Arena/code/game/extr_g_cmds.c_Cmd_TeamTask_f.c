
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int userinfo ;
struct TYPE_4__ {int client; } ;
typedef TYPE_1__ gentity_t ;
typedef int arg ;
struct TYPE_5__ {int clients; } ;


 int ClientUserinfoChanged (int) ;
 int Info_SetValueForKey (char*,char*,int ) ;
 int MAX_INFO_STRING ;
 int MAX_TOKEN_CHARS ;
 int atoi (char*) ;
 TYPE_2__ level ;
 int trap_Argc () ;
 int trap_Argv (int,char*,int) ;
 int trap_GetUserinfo (int,char*,int) ;
 int trap_SetUserinfo (int,char*) ;
 int va (char*,int) ;

void Cmd_TeamTask_f( gentity_t *ent ) {
 char userinfo[MAX_INFO_STRING];
 char arg[MAX_TOKEN_CHARS];
 int task;
 int client = ent->client - level.clients;

 if ( trap_Argc() != 2 ) {
  return;
 }
 trap_Argv( 1, arg, sizeof( arg ) );
 task = atoi( arg );

 trap_GetUserinfo(client, userinfo, sizeof(userinfo));
 Info_SetValueForKey(userinfo, "teamtask", va("%d", task));
 trap_SetUserinfo(client, userinfo);
 ClientUserinfoChanged(client);
}
