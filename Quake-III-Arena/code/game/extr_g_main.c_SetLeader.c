
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int maxclients; TYPE_3__* clients; } ;
struct TYPE_6__ {scalar_t__ connected; int netname; } ;
struct TYPE_5__ {int sessionTeam; scalar_t__ teamLeader; } ;
struct TYPE_7__ {TYPE_2__ pers; TYPE_1__ sess; } ;


 scalar_t__ CON_DISCONNECTED ;
 int ClientUserinfoChanged (int) ;
 int PrintTeam (int,int ) ;
 TYPE_4__ level ;
 scalar_t__ qfalse ;
 scalar_t__ qtrue ;
 int va (char*,int ) ;

void SetLeader(int team, int client) {
 int i;

 if ( level.clients[client].pers.connected == CON_DISCONNECTED ) {
  PrintTeam(team, va("print \"%s is not connected\n\"", level.clients[client].pers.netname) );
  return;
 }
 if (level.clients[client].sess.sessionTeam != team) {
  PrintTeam(team, va("print \"%s is not on the team anymore\n\"", level.clients[client].pers.netname) );
  return;
 }
 for ( i = 0 ; i < level.maxclients ; i++ ) {
  if (level.clients[i].sess.sessionTeam != team)
   continue;
  if (level.clients[i].sess.teamLeader) {
   level.clients[i].sess.teamLeader = qfalse;
   ClientUserinfoChanged(i);
  }
 }
 level.clients[client].sess.teamLeader = qtrue;
 ClientUserinfoChanged( client );
 PrintTeam(team, va("print \"%s is the new team leader\n\"", level.clients[client].pers.netname) );
}
