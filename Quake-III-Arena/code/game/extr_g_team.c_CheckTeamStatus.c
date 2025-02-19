
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_16__ {TYPE_4__* client; scalar_t__ inuse; scalar_t__ health; } ;
typedef TYPE_5__ gentity_t ;
struct TYPE_18__ {int integer; } ;
struct TYPE_17__ {scalar_t__ time; scalar_t__ lastTeamLocationTime; } ;
struct TYPE_14__ {scalar_t__ sessionTeam; } ;
struct TYPE_12__ {scalar_t__ location; } ;
struct TYPE_13__ {scalar_t__ connected; TYPE_1__ teamState; } ;
struct TYPE_15__ {TYPE_3__ sess; TYPE_2__ pers; } ;


 scalar_t__ CON_CONNECTED ;
 scalar_t__ TEAM_BLUE ;
 scalar_t__ TEAM_LOCATION_UPDATE_TIME ;
 scalar_t__ TEAM_RED ;
 TYPE_5__* Team_GetLocation (TYPE_5__*) ;
 int TeamplayInfoMessage (TYPE_5__*) ;
 TYPE_5__* g_entities ;
 TYPE_7__ g_maxclients ;
 TYPE_6__ level ;

void CheckTeamStatus(void) {
 int i;
 gentity_t *loc, *ent;

 if (level.time - level.lastTeamLocationTime > TEAM_LOCATION_UPDATE_TIME) {

  level.lastTeamLocationTime = level.time;

  for (i = 0; i < g_maxclients.integer; i++) {
   ent = g_entities + i;

   if ( ent->client->pers.connected != CON_CONNECTED ) {
    continue;
   }

   if (ent->inuse && (ent->client->sess.sessionTeam == TEAM_RED || ent->client->sess.sessionTeam == TEAM_BLUE)) {
    loc = Team_GetLocation( ent );
    if (loc)
     ent->client->pers.teamState.location = loc->health;
    else
     ent->client->pers.teamState.location = 0;
   }
  }

  for (i = 0; i < g_maxclients.integer; i++) {
   ent = g_entities + i;

   if ( ent->client->pers.connected != CON_CONNECTED ) {
    continue;
   }

   if (ent->inuse && (ent->client->sess.sessionTeam == TEAM_RED || ent->client->sess.sessionTeam == TEAM_BLUE)) {
    TeamplayInfoMessage( ent );
   }
  }
 }
}
