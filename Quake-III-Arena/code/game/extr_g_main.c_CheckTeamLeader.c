
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int svFlags; } ;
struct TYPE_10__ {TYPE_1__ r; } ;
struct TYPE_9__ {int maxclients; TYPE_3__* clients; } ;
struct TYPE_7__ {int sessionTeam; void* teamLeader; } ;
struct TYPE_8__ {TYPE_2__ sess; } ;


 int SVF_BOT ;
 TYPE_5__* g_entities ;
 TYPE_4__ level ;
 void* qtrue ;

void CheckTeamLeader( int team ) {
 int i;

 for ( i = 0 ; i < level.maxclients ; i++ ) {
  if (level.clients[i].sess.sessionTeam != team)
   continue;
  if (level.clients[i].sess.teamLeader)
   break;
 }
 if (i >= level.maxclients) {
  for ( i = 0 ; i < level.maxclients ; i++ ) {
   if (level.clients[i].sess.sessionTeam != team)
    continue;
   if (!(g_entities[i].r.svFlags & SVF_BOT)) {
    level.clients[i].sess.teamLeader = qtrue;
    break;
   }
  }
  for ( i = 0 ; i < level.maxclients ; i++ ) {
   if (level.clients[i].sess.sessionTeam != team)
    continue;
   level.clients[i].sess.teamLeader = qtrue;
   break;
  }
 }
}
